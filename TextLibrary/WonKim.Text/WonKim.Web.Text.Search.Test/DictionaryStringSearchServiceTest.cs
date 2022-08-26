//-------------------------------------------------------------------------------
// Created by: [won.kim]
// Created on: [6/4/2012 1:52:37 PM]
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
// 	[Put description here]
//
//-------------------------------------------------------------------------------

using WonKim.Web.Text.Search;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;
using Microsoft.VisualStudio.TestTools.UnitTesting.Web;

namespace WonKim.Web.Text.Search.Test
{
    
    
    /// <summary>
    ///This is a test class for DictionaryStringSearchServiceTest and is intended
    ///to contain all DictionaryStringSearchServiceTest Unit Tests
    ///</summary>
	[TestClass()]
    [DeploymentItem(@"data\dict-obo.txt", "data")]
    public class DictionaryStringSearchServiceTest
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
		///A test for AhoCorasickSearch
		///</summary>
		[TestMethod()]
		public void AhoCorasickSearchTest()
		{
			List<string> dictList = new List<string>(new string[] { "World" });
			DictionaryStringSearchService target = new DictionaryStringSearchService();
			DictionaryStringSearchInitRequest initReq = new DictionaryStringSearchInitRequest
			{
				DictionaryKey = "test",
				StringEnumerable = dictList
			};
			target.InitializeAhoCorasick(initReq);
			DictionaryStringSearchRequest req = new DictionaryStringSearchRequest
			{
				DictionaryName = "test",
				Input = "Hello, World, how are you doing?  Do you go by Mr. World?",
				InputSource = null
			};
			DictionaryStringSearchResponse actual;
			actual = target.AhoCorasickSearch(req);
			Assert.IsNotNull(actual.ID);
			Assert.AreEqual(req.Input, actual.Input);
			Assert.AreEqual(req.InputSource, actual.InputSource);
			Assert.AreEqual(2, actual.MatchList.Count);
			foreach (DictionaryStringSearchMatch match in actual.MatchList)
			{
				Assert.IsTrue(dictList.Contains(match.Pattern));
			}
		}

		/// <summary>
		///A test for AhoCorasickSearch
		///</summary>
		[TestMethod()]
		public void AhoCorasickSearch2Test()
		{
			List<string> dictList = new List<string>(new string[] { "fast", "sofa", "so", "take" });
			DictionaryStringSearchService target = new DictionaryStringSearchService();
			DictionaryStringSearchInitRequest initReq = new DictionaryStringSearchInitRequest
			{
				DictionaryKey = "test",
				StringEnumerable = dictList
			};
			target.InitializeAhoCorasick(initReq);
			DictionaryStringSearchRequest req = new DictionaryStringSearchRequest
			{
				DictionaryName = "test",
				Input = "takeso fasofast fassofatake sosso sofastake so",
				InputSource = null
			};
			DictionaryStringSearchResponse actual;
			actual = target.AhoCorasickSearch(req);
			Assert.IsNotNull(actual.ID);
			Assert.AreEqual(req.Input, actual.Input);
			Assert.AreEqual(req.InputSource, actual.InputSource);
			Assert.AreEqual(15, actual.MatchList.Count);
			foreach (DictionaryStringSearchMatch match in actual.MatchList)
			{
				Assert.IsTrue(dictList.Contains(match.Pattern));
			}
		}

		/// <summary>
		///A test for AhoCorasickSearch
		///</summary>
		[TestMethod()]
        public void AhoCorasickSearchOboTest()
		{
			bool matchFound = false;
			DictionaryStringSearchService target = new DictionaryStringSearchService();
			DictionaryStringSearchRequest req = new DictionaryStringSearchRequest
			{
				DictionaryName = "OBO",
				Input = "JAK1 is a human tyrosine kinase protein essential for signaling for certain type I and type II cytokines.",
				InputSource = "http://en.wikipedia.org/wiki/Janus_kinase_1"
			};
			DictionaryStringSearchResponse actual;
			actual = target.AhoCorasickSearch(req);
			Assert.IsNotNull(actual.ID);
			Assert.AreEqual(req.Input, actual.Input);
			Assert.AreEqual(req.InputSource, actual.InputSource);
			Assert.AreEqual(14, actual.MatchList.Count);
			foreach (DictionaryStringSearchMatch match in actual.MatchList)
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
