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
	/// <remarks>
	/// Used <i>Aho-Corasick string matching in C#</i> by Tomas Petricek as a reference.
	/// See http://www.codeproject.com/Articles/12383/Aho-Corasick-string-matching-in-C
	/// 
	/// http://cs.uef.fi/~kilpelai/BSA05/lectures/slides04.pdf
	/// http://blog.ivank.net/aho-corasick-algorithm-in-as3.html
	/// </remarks>
	public class KeywordTree
	{
		/// <summary>
		/// Default constructor. Initializes <code>Root</code>.
		/// </summary>
		public KeywordTree()
		{
			Count = 0;
			Root = new KeywordTreeNode<char>();
		}

		public int Count
		{
			get;
			set;
		}

		public KeywordTreeNode<char> Root
		{
			get;
			set;
		}

		/// <summary>
		/// </summary>
		/// <param name="keyword"></param>
		/// <returns><code>keyword</code> if insert was successful.  Otherwise, null.</returns>
		public virtual string Add(string keyword)
		{
			bool nodeAdded = false;
			int i = 0;
			int lastCharPos = 0;
			char c = (char)0;
			KeywordTreeNode<char> node = null;
			if (string.IsNullOrEmpty(keyword)) return null;
			lastCharPos = keyword.Length - 1;
			node = Root;
			for (i = 0; i < lastCharPos; ++i)
			{
				c = keyword[i];
				node.AddTransition(c, ref node);
			}
			// Add last character with keyword.
			c = keyword[i];
			nodeAdded = node.AddTransition(c, keyword, ref node);
			if (nodeAdded) ++Count;
			return nodeAdded ? keyword : null;
		}

		/// <summary>
		/// Sets FailNode for each node in <code>trie</code>.
		/// </summary>
		/// <param name="trie"></param>
		public void BuildFailFunctions(KeywordTree trie)
		{
			Queue<KeywordTreeNode<char>> q = new Queue<KeywordTreeNode<char>>();
			KeywordTreeNode<char> node = null;
			KeywordTreeNode<char> childNode = null;
			KeywordTreeNode<char> r = null;
			//trie.Root.FailNode = trie.Root;
			q.Enqueue(trie.Root);
			while (q.Count > 0)
			{
				node = q.Dequeue();
				foreach (char keyChar in node.ChildEdgeList.Keys)
				{
					childNode = node.ChildEdgeList[keyChar];
					q.Enqueue(childNode);
					r = childNode.ParentNode.FailNode;
					while (r != null && !r.ContainsTransition(keyChar)) r = r.FailNode;
					if (r == null)
					{
						childNode.FailNode = trie.Root;
					}
					else
					{
						childNode.FailNode = r.GetTransition(keyChar);
					}
				}
			}
		}

		public static KeywordTree BuildKeywordTree(System.IO.StreamReader sr, KeywordTreeOptions ktOpts)
		{
			KeywordTree trie = new KeywordTree();
			string s = null;
			while ((s = sr.ReadLine()) != null)
			{
				if ((ktOpts & KeywordTreeOptions.IgnoreCase) == KeywordTreeOptions.IgnoreCase)
				{
					if ((ktOpts & KeywordTreeOptions.CultureInvariant) == KeywordTreeOptions.CultureInvariant)
					{
						trie.Add(s.ToLowerInvariant());
					}
					else
					{
						trie.Add(s.ToLower());
					}
				}
				else
				{
					trie.Add(s);
				}
			}
			trie.BuildFailFunctions(trie);
			return trie;
		}

		public static KeywordTree BuildKeywordTree(System.IO.StreamReader sr)
		{
			KeywordTree trie = BuildKeywordTree(sr, KeywordTreeOptions.None);
			return trie;
		}

		public static KeywordTree BuildKeywordTree(string filePath, KeywordTreeOptions ktOpts)
		{
			KeywordTree trie = null;
			filePath = System.Web.HttpUtility.UrlDecode(filePath);
			using (System.IO.StreamReader sr = new System.IO.StreamReader(new System.IO.FileStream(filePath, System.IO.FileMode.Open, System.IO.FileAccess.Read, System.IO.FileShare.ReadWrite)))
			{
				trie = KeywordTree.BuildKeywordTree(sr, ktOpts);
			}
			return trie;
		}

		public static KeywordTree BuildKeywordTree(string filePath)
		{
			filePath = System.Web.HttpUtility.UrlDecode(filePath);
			KeywordTree trie = BuildKeywordTree(filePath, KeywordTreeOptions.None);
			return trie;
		}

		public static KeywordTree BuildKeywordTree(IEnumerable<string> strEnumer, KeywordTreeOptions ktOpts)
		{
			KeywordTree trie = new KeywordTree();
			foreach (string s in strEnumer)
			{
				if ((ktOpts & KeywordTreeOptions.IgnoreCase) == KeywordTreeOptions.IgnoreCase)
				{
					if ((ktOpts & KeywordTreeOptions.CultureInvariant) == KeywordTreeOptions.CultureInvariant)
					{
						trie.Add(s.ToLowerInvariant());
					}
					else
					{
						trie.Add(s.ToLower());
					}
				}
				else
				{
					trie.Add(s);
				}
			}
			trie.BuildFailFunctions(trie);
			return trie;
		}

		public static KeywordTree BuildKeywordTree(IEnumerable<string> strEnumer)
		{
			KeywordTree trie = BuildKeywordTree(strEnumer, KeywordTreeOptions.None);
			return trie;
		}

		protected virtual KeywordTreeNode<char> GetNodeSub(int idx, string lookupKeyword, KeywordTreeNode<char> node)
		{
			char c = (char)0;
			KeywordTreeNode<char> childNode = null;
			KeywordTreeNode<char> resNode = null;
			c = lookupKeyword[idx];
			if (node.ChildEdgeList.ContainsKey(c))
			{
				childNode = node.ChildEdgeList[c];
				++idx;
				if (childNode.Value == lookupKeyword)
				{
					resNode = childNode;
				}
				else
				{
					resNode = GetNodeSub(idx, lookupKeyword, childNode);
				}
			}
			return resNode;
		}

		public virtual KeywordTreeNode<char> GetNode(string lookupKeyword)
		{
			KeywordTreeNode<char> node = null;
			if (string.IsNullOrEmpty(lookupKeyword)) return null;
			node = GetNodeSub(0, lookupKeyword, Root);
			return node;
		}

		/// <summary>
		/// Returns <code>true</code> if <code>lookupKeyword</code> is found in <see cref="KeywordTree"/>.
		/// Otherwise, <code>false</code>.
		/// </summary>
		/// <param name="lookupKeyword"></param>
		/// <returns></returns>
		public virtual bool Contains(string lookupKeyword)
		{
			KeywordTreeNode<char> node = null;
			bool b = false;
			if (string.IsNullOrEmpty(lookupKeyword)) return b;
			node = GetNode(lookupKeyword);
			return node != null;
		}
	}
}
