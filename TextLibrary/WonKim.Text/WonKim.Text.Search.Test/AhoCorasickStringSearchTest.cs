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

using WonKim.Text.Search;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;

namespace WonKim.Text.Search.Test
{
    
    
    /// <summary>
    ///This is a test class for AhoCorasickStringSearchTest and is intended
    ///to contain all AhoCorasickStringSearchTest Unit Tests
    ///</summary>
	[TestClass()]
    [DeploymentItem(@"data\dict.txt", "data")]
    [DeploymentItem(@"data\dict-multi-string.txt", "data")]
    [DeploymentItem(@"data\dict-obo.txt", "data")]
    public class AhoCorasickStringSearchTest
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


		/// <summary>
		///A test for Match
		///</summary>
		[TestMethod()]
		public void MatchNegativeTest()
		{
			AhoCorasickStringSearch target = new AhoCorasickStringSearch(
				new string[] { "his", "hers", "she" });
			string input = "mine";
			IList<StringMatch> actual;
			actual = target.Match(input);
			Assert.AreEqual(0, actual.Count);
		}

		/// <summary>
		///A test for Match
		///</summary>
		[TestMethod()]
		public void MatchTest()
		{
			AhoCorasickStringSearch target = new AhoCorasickStringSearch(
				new string[] { "his", "hers", "she" });
			string input = "shis";
			IList<StringMatch> actual;
			actual = target.Match(input);
			Assert.AreEqual(1, actual.Count);
			Assert.AreEqual("his", actual[0].Pattern);
		}

		/// <summary>
		///A test for Match
		///</summary>
		[TestMethod()]
		public void Match2Test()
		{
			AhoCorasickStringSearch target = new AhoCorasickStringSearch(
				new string[] { "World" });
			string input = "Hello, World, how are you doing?  Do you go by Mr. World?"; ;
			IList<StringMatch> actual;
			actual = target.Match(input);
			Assert.AreEqual(2, actual.Count);
			foreach (StringMatch sm in actual)
			{
				Assert.AreEqual("World", sm.Pattern);
			}
		}

		/// <summary>
		///A test for Match
		///</summary>
		[TestMethod()]
		public void Match3Test()
		{
			AhoCorasickStringSearch target = new AhoCorasickStringSearch(
				new string[] { "fast", "sofa", "so", "take" });
			string input = "takeso fasofast fassofatake sosso sofastake so"; ;
			IList<StringMatch> actual;
			actual = target.Match(input);
			Assert.AreEqual(15, actual.Count);
		}

		/// <summary>
		///A test for CreateAhoCorasickStringSearch
		///</summary>
		[TestMethod()]
        public void CreateAhoCorasickStringSearchFileTest()
		{
			Uri uri = new Uri(this.GetType().Assembly.CodeBase);
			System.IO.FileInfo fileInfo = new System.IO.FileInfo(uri.AbsolutePath);
			string dictFilePath = System.IO.Path.Combine(fileInfo.DirectoryName, @"data\dict.txt");
			AhoCorasickStringSearch actual;
			IList<StringMatch> matchList = null;
			bool matchFound = false;
			actual = AhoCorasickStringSearch.CreateAhoCorasickStringSearch(dictFilePath);
			Assert.AreEqual(13, actual.Count);
			matchList = actual.Match("JAK1 is a human tyrosine kinase protein essential for signaling for certain type I and type II cytokines.");
			foreach (StringMatch match in matchList)
			{
				if (match.Pattern == "kinase")
				{
					matchFound = true;
				}
			}
			Assert.IsTrue(matchFound);
		}

		/// <summary>
		///A test for CreateAhoCorasickStringSearch
		///</summary>
		[TestMethod()]
        public void CreateAhoCorasickStringSearchFile2Test()
		{
			string dictFilePath = @"data\dict-obo.txt";
			AhoCorasickStringSearch actual;
			IList<StringMatch> matchList = null;
			bool matchFound = false;
			actual = AhoCorasickStringSearch.CreateAhoCorasickStringSearch(dictFilePath);
			Assert.AreEqual(395742, actual.Count);
			matchList = actual.Match("JAK1 is a human tyrosine kinase protein essential for signaling for certain type I and type II cytokines.");
			foreach (StringMatch match in matchList)
			{
				if (match.Pattern == "kinase")
				{
					matchFound = true;
				}
			}
			Assert.IsTrue(matchFound);
		}

		/// <summary>
		///A test for CreateAhoCorasickStringSearch
		///</summary>
		[TestMethod()]
        public void CreateAhoCorasickStringSearchFile3Test()
		{
			string dictFilePath = @"data\dict-obo.txt";
			AhoCorasickStringSearch actual;
			IList<StringMatch> matchList = null;
			bool matchFound = false;
			actual = AhoCorasickStringSearch.CreateAhoCorasickStringSearch(dictFilePath);
			Assert.AreEqual(395742, actual.Count);
			matchList = actual.Match("kinase");
			foreach (StringMatch match in matchList)
			{
				if (match.Pattern == "kinase")
				{
					matchFound = true;
				}
			}
			Assert.IsTrue(matchFound);
		}

		/// <summary>
		///A test for CreateAhoCorasickStringSearch
		///</summary>
		[TestMethod()]
        public void CreateAhoCorasickStringSearchFileMultiStringTest()
		{
			Uri uri = new Uri(this.GetType().Assembly.CodeBase);
			System.IO.FileInfo fileInfo = new System.IO.FileInfo(uri.AbsolutePath);
			string dictFilePath = System.IO.Path.Combine(fileInfo.DirectoryName, @"data\dict-multi-string.txt");
			AhoCorasickStringSearch actual;
			IList<StringMatch> matchList = null;
			bool matchFound = false;
			actual = AhoCorasickStringSearch.CreateAhoCorasickStringSearch(dictFilePath);
			Assert.AreEqual(6, actual.Count);
			matchList = actual.Match("JAK1 is a human tyrosine kinase protein essential for signaling for certain type I and type II cytokines.");
			foreach (StringMatch match in matchList)
			{
				if (match.Pattern == "kinase")
				{
					matchFound = true;
				}
			}
			Assert.IsTrue(matchFound);
		}
	}
}
