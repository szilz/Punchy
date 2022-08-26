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
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace WonKim.Web.Text.Search.Test
{
	/// <summary>
	/// Summary description for PatternStringSearchServiceTest
	/// </summary>
	[TestClass]
	public class PatternStringSearchServiceTest
	{
		public PatternStringSearchServiceTest()
		{
			//
			// TODO: Add constructor logic here
			//
		}

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
		// You can use the following additional attributes as you write your tests:
		//
		// Use ClassInitialize to run code before running the first test in the class
		// [ClassInitialize()]
		// public static void MyClassInitialize(TestContext testContext) { }
		//
		// Use ClassCleanup to run code after all tests in a class have run
		// [ClassCleanup()]
		// public static void MyClassCleanup() { }
		//
		// Use TestInitialize to run code before running each test 
		// [TestInitialize()]
		// public void MyTestInitialize() { }
		//
		// Use TestCleanup to run code after each test has run
		// [TestCleanup()]
		// public void MyTestCleanup() { }
		//
		#endregion

		[TestMethod]
		public void BoyerMooreSearchTest()
		{
			PatternStringSearchService target = new PatternStringSearchService();
			PatternStringSearchRequest req = new PatternStringSearchRequest
			{
				Input  = "Hello, World, how are you doing?  Do you go by Mr. World?",
				InputSource = null,
				Pattern = "World"
			};
			PatternStringSearchResponse actual = null;
			actual = target.BoyerMooreSearch(req);
			Assert.IsNotNull(actual.ID);
			Assert.AreEqual(req.Input, actual.Input);
			Assert.AreEqual(req.InputSource, actual.InputSource);
			Assert.AreEqual(2, actual.MatchList.Count);
			foreach (PatternStringSearchMatch match in actual.MatchList)
			{
				Assert.AreEqual(req.Pattern, match.Pattern);
			}
		}
	}
}
