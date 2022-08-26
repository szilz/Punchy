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

using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;

namespace WonKim.Collections.Generic.Test
{
	
	
	/// <summary>
	///This is a test class for KeywordTreeTest and is intended
	///to contain all KeywordTreeTest Unit Tests
	///</summary>
	[TestClass()]
	[DeploymentItem(@"data\dict-obo.txt", "data")]
	public class KeywordTreeTest
	{


		private TestContext testContextInstance;

		/// <summary>
		///Gets or sets the test context which provides
		///information about and functionality for the current test run.
		///</summary>
		public TestContext TestContext
		{
			get
			{
				return testContextInstance;
			}
			set
			{
				testContextInstance = value;
			}
		}

		#region Additional test attributes
		// 
		//You can use the following additional attributes as you write your tests:
		//
		//Use ClassInitialize to run code before running the first test in the class
		//[ClassInitialize()]
		//public static void MyClassInitialize(TestContext testContext)
		//{
		//}
		//
		//Use ClassCleanup to run code after all tests in a class have run
		//[ClassCleanup()]
		//public static void MyClassCleanup()
		//{
		//}
		//
		//Use TestInitialize to run code before running each test
		//[TestInitialize()]
		//public void MyTestInitialize()
		//{
		//}
		//
		//Use TestCleanup to run code after each test has run
		//[TestCleanup()]
		//public void MyTestCleanup()
		//{
		//}
		//
		#endregion


		protected KeywordTree BuildKeywordTree(IEnumerable<string> strEnumer)
		{
			KeywordTree target = new KeywordTree();
			foreach (string s in strEnumer)
			{
				target.Add(s);
			}
			return target;
		}

		/// <summary>
		///A test for Add
		///</summary>
		[TestMethod()]
		public void AddTest()
		{
			KeywordTree target = new KeywordTree();
			KeywordTreeNode<char> node = null;
			string keyword = "he";
			string addResStr = null;
			addResStr = target.Add(keyword);
			Assert.AreEqual(keyword, addResStr);
			node = target.GetNode(keyword);
			Assert.IsNotNull(node);
			Assert.AreEqual(keyword, node.Value);
		}
		
		/// <summary>
		///A test for Contains
		///</summary>
		[TestMethod()]
		public void ContainsTest()
		{
			KeywordTree target = BuildKeywordTree(
				new string[] { "she", "he", "her", "him", "his", "hers" });
			string lookupKeyword = "her";
			bool expected = true;
			bool actual;
			actual = target.Contains(lookupKeyword);
			Assert.AreEqual(expected, actual);
		}

		/// <summary>
		///A test for Contains
		///</summary>
		[TestMethod()]
		public void ContainsFirstTest()
		{
			KeywordTree target = BuildKeywordTree(
				new string[] { "she", "he", "her", "him", "his", "hers" });
			string lookupKeyword = "she";
			bool expected = true;
			bool actual;
			actual = target.Contains(lookupKeyword);
			Assert.AreEqual(expected, actual);
		}

		/// <summary>
		///A test for Contains
		///</summary>
		[TestMethod()]
		public void ContainsLastTest()
		{
			KeywordTree target = BuildKeywordTree(
				new string[] { "she", "he", "her", "him", "his", "hers" });
			string lookupKeyword = "hers";
			bool expected = true;
			bool actual;
			actual = target.Contains(lookupKeyword);
			Assert.AreEqual(expected, actual);
		}

		/// <summary>
		///A test for Contains
		///</summary>
		[TestMethod()]
		public void ContainsNegativeTest()
		{
			KeywordTree target = BuildKeywordTree(
				new string[] { "she", "he", "her", "him", "his", "hers" });
			string lookupKeyword = "mine";
			bool expected = false;
			bool actual;
			actual = target.Contains(lookupKeyword);
			Assert.AreEqual(expected, actual);
		}

		/// <summary>
		///A test for BuildKeywordTree
		///</summary>
		[TestMethod()]
		public void BuildKeywordTreeTest()
		{
			string[] strArr = new string[] { "his", "hers", "she" };
			KeywordTree actual;
			KeywordTreeNode<char> node = null;
			actual = KeywordTree.BuildKeywordTree(strArr);
			Assert.AreEqual(3, actual.Count);
			foreach (string s in strArr)
			{
				node = actual.GetNode(s);
				Assert.AreEqual(s, node.Value);
			}
		}

		/// <summary>
		///A test for Count
		///</summary>
		[TestMethod()]
		public void CountTest()
		{
			KeywordTree target = new KeywordTree();
			int expected = 5;
			int actual;
			target.Add("she");
			target.Add("him");
			target.Add("her");
			target.Add("he");
			target.Add("them");
			actual = target.Count;
			Assert.AreEqual(expected, actual);
		}

		/// <summary>
		///A test for Count for single duplicate entry.
		///</summary>
		[TestMethod()]
		public void CountDuplicateTest()
		{
			KeywordTree target = new KeywordTree();
			int expected = 5;
			int actual;
			target.Add("she");
			target.Add("she");
			target.Add("him");
			target.Add("her");
			target.Add("he");
			target.Add("them");
			actual = target.Count;
			Assert.AreEqual(expected, actual);
		}

		/// <summary>
		///A test for Count for multiple duplicate entries.
		///</summary>
		[TestMethod()]
		public void CountMultipleDuplicateTest()
		{
			KeywordTree target = new KeywordTree();
			int expected = 5;
			int actual;
			target.Add("she");
			target.Add("she");
			target.Add("she");
			target.Add("she");
			target.Add("she");
			target.Add("him");
			target.Add("him");
			target.Add("her");
			target.Add("her");
			target.Add("her");
			target.Add("her");
			target.Add("her");
			target.Add("he");
			target.Add("he");
			target.Add("them");
			actual = target.Count;
			Assert.AreEqual(expected, actual);
		}

		/// <summary>
		///A test for BuildKeywordTree
		///</summary>
		[TestMethod()]
		public void BuildKeywordTreeFileTest()
		{
			string filePath = @"data\dict-obo.txt";
			KeywordTree actual;
			actual = KeywordTree.BuildKeywordTree(filePath);
			Assert.AreEqual(395742, actual.Count);
		}

		/// <summary>
		///A test for BuildKeywordTree
		///</summary>
		[TestMethod()]
		public void BuildKeywordTreeFileIgnoreCaseTest()
		{
			string filePath = @"data\dict-obo.txt";
			string keyword = "kinase";
			KeywordTree actual;
			KeywordTreeNode<char> node = null;
			actual = KeywordTree.BuildKeywordTree(filePath, KeywordTreeOptions.IgnoreCase);
			Assert.AreEqual(395742, actual.Count);
			node = actual.GetNode(keyword);
			Assert.AreEqual(keyword[keyword.Length - 1], node.EdgeValue);
			Assert.AreEqual(keyword, node.Value);
		}
	}
}
