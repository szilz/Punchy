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

namespace WonKim.Collections.Generic
{
	public class BinaryTreeNode<T> : Node<T>
	{
		public BinaryTreeNode(T data, BinaryTreeNode<T> left, BinaryTreeNode<T> right)
		{
			Value = data;
			LeftNode = left;
			RightNode = right;
		}

		public BinaryTreeNode(T data)
			: this(data, null, null)
		{
		}

		public BinaryTreeNode()
			: this(default(T), null, null)
		{
		}

		public BinaryTreeNode<T> LeftNode
		{
			get;
			set;
		}

		public BinaryTreeNode<T> RightNode
		{
			get;
			set;
		}
	}
}
