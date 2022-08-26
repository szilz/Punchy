//-------------------------------------------------------------------------------
// Created by: [won.kim]
// Created on: [5/31/2012]
//
// The use, disclosure, reproduction, modification, transfer, or
// transmittal of this work for any purpose in any form or by
// any means without the written permission of Won Kim
// is strictly prohibited.
//
// Confidential, Unpublished Property of Won Kim.
// Use and Distribution Limited Solely to Authorized Personnel.
//
// © Copyright 2012 Won Kim
// All Rights Reserved
//
// Description: 
// 	
//
//-------------------------------------------------------------------------------

using System;
using System.Collections.Generic;

namespace WonKim.Collections.Generic
{
	/// <summary>
	/// </summary>
	/// <typeparam name="E"></typeparam>
	/// <remarks>
	/// Used <i>Aho-Corasick string matching in C#</i> by Tomas Petricek as a reference.
	/// See http://www.codeproject.com/Articles/12383/Aho-Corasick-string-matching-in-C
	/// 
	/// http://cs.uef.fi/~kilpelai/BSA05/lectures/slides04.pdfs
	/// http://blog.ivank.net/aho-corasick-algorithm-in-as3.html
	/// </remarks>
	public class KeywordTreeNode<E> : Node<string>
	{
		public KeywordTreeNode(E edge, string data, KeywordTreeNode<E> parentNode)
		{
			ParentNode = parentNode;
			FailNode = null;
			EdgeValue = edge;
			Value = data;
			ChildEdgeList = new SortedList<E, KeywordTreeNode<E>>();
		}

		public KeywordTreeNode(E edge, string data)
			: this(edge, data, null)
		{
		}

		public KeywordTreeNode(E edge, KeywordTreeNode<E> parentNode)
			: this(edge, null, parentNode)
		{
		}

		public KeywordTreeNode(E edge)
			: this(edge, null, null)
		{
		}

		public KeywordTreeNode()
			: this(default(E), (string)null)
		{
		}

		public KeywordTreeNode<E> ParentNode
		{
			get;
			set;
		}

		public KeywordTreeNode<E> FailNode
		{
			get;
			set;
		}

		public E EdgeValue
		{
			get;
			set;
		}

		public IDictionary<E, KeywordTreeNode<E>> ChildEdgeList
		{
			get;
			set;
		}

		public virtual bool AddTransition(E edge, string data, ref KeywordTreeNode<E> node)
		{
			bool nodeAdded = false;
			if (!ChildEdgeList.ContainsKey(edge))
			{
				nodeAdded = true;
				node = new KeywordTreeNode<E>(edge, data, this);
				ChildEdgeList.Add(edge, node);
			}
			else
			{
				node = ChildEdgeList[edge];
				// If node already exists, if node.Value is null or empty string
				//		then set node.Value to data.
				// If data is null or empty string AND node.VAlue is null or empty string, 
				//		then node already exists.
				if (string.IsNullOrEmpty(node.Value) && !string.IsNullOrEmpty(data))
				{
					nodeAdded = true;
					node.Value = data;
				}
			}
			return nodeAdded;
		}

		public virtual bool AddTransition(E edge, ref KeywordTreeNode<E> node)
		{
			bool nodeAdded = false;
			nodeAdded = AddTransition(edge, null, ref node);
			return nodeAdded;
		}

		public virtual KeywordTreeNode<E> GetTransition(E edge)
		{
			KeywordTreeNode<E> node = null;
			if (ChildEdgeList.ContainsKey(edge))
			{
				node = ChildEdgeList[edge];
			}
			return node;
		}

		public virtual bool ContainsTransition(E edge)
		{
			bool hasEdge = false;
			hasEdge = ChildEdgeList.ContainsKey(edge);
			return hasEdge;
		}

		public override string ToString()
		{
			string edgeStr = null;
			if (EdgeValue is char)
			{
				edgeStr = Convert.ToChar(EdgeValue) == (char)0 ? null : Convert.ToString(EdgeValue);
			}
			return string.Format("[E={0}, T={1}, ParentNode={2}, ChildEdgeList.Count={3}, FailNode={4}]", edgeStr, Value, ParentNode == null ? null : ParentNode.ToString(), ChildEdgeList.Count, FailNode == null ? null : FailNode.ToString());
		}
	}
}
