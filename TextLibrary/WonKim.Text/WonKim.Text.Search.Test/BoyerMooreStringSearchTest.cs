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
    ///This is a test class for BoyerMooreStringSearchTest and is intended
    ///to contain all BoyerMooreStringSearchTest Unit Tests
    ///</summary>
	[TestClass()]
	public class BoyerMooreStringSearchTest
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
		public void MatchTest()
		{
			BoyerMooreStringSearch target = new BoyerMooreStringSearch();
			string input = "Hello, World, how are you doing?  Do you go by Mr. World?";
			string pattern = "World";
			IList<int> actual = null;
			actual = target.Match(input, pattern);
			Assert.AreEqual(2, actual.Count);
		}

		/// <summary>
		///A test for Match
		///</summary>
		[TestMethod()]
		public void MatchSideBySideTest()
		{
			BoyerMooreStringSearch target = new BoyerMooreStringSearch();
			string input = "Hello, WorldWorld, how are you doing?  Do you go by Mr. World?";
			string pattern = "World";
			IList<int> actual = null;
			actual = target.Match(input, pattern);
			Assert.AreEqual(3, actual.Count);
		}

		/// <summary>
		///A test for GetRpr
		///</summary>
		[TestMethod()]
		[DeploymentItem("WonKim.Text.Search.dll")]
		public void GetRprTest1()
		{
			BoyerMooreStringSearch_Accessor target = new BoyerMooreStringSearch_Accessor();
			int idx = 0;
			string pattern = "ABCXXXABC";
			Dictionary<char, int> patternCharPosMap = new Dictionary<char, int>(pattern.Length);
			int actual;
			target.InitPatternCharacterPositionMap(patternCharPosMap, pattern);
			actual = target.GetRpr(idx, pattern, patternCharPosMap);
			switch (idx)
			{
				case 0:
					Assert.AreEqual(-4, actual);
					break;
				case 1:
					Assert.AreEqual(-3, actual);
					break;
				case 2:
					Assert.AreEqual(-2, actual);
					break;
				case 3:
					Assert.AreEqual(-1, actual);
					break;
				case 4:
					Assert.AreEqual(0, actual);
					break;
				case 5:
					Assert.AreEqual(1, actual);
					break;
				case 6:
					Assert.AreEqual(-1, actual);
					break;
				case 7:
					Assert.AreEqual(0, actual);
					break;
				case 8:
					Assert.AreEqual(9, actual);
					break;
				default:
					Assert.Inconclusive(string.Format("Character index [{0}] not expected for string pattern [{1}].", idx, pattern));
					break;
			}
		}

		/// <summary>
		///A test for GetRpr
		///</summary>
		[TestMethod()]
		[DeploymentItem("WonKim.Text.Search.dll")]
		public void GetRprTest2()
		{
			BoyerMooreStringSearch_Accessor target = new BoyerMooreStringSearch_Accessor();
			int idx = 0;
			string pattern = "ABYXCDEYX";
			Dictionary<char, int> patternCharPosMap = new Dictionary<char, int>(pattern.Length);
			int actual;
			target.InitPatternCharacterPositionMap(patternCharPosMap, pattern);
			actual = target.GetRpr(idx, pattern, patternCharPosMap);
			switch (idx)
			{
				case 0:
					Assert.AreEqual(-7, actual);
					break;
				case 1:
					Assert.AreEqual(-6, actual);
					break;
				case 2:
					Assert.AreEqual(-5, actual);
					break;
				case 3:
					Assert.AreEqual(-4, actual);
					break;
				case 4:
					Assert.AreEqual(-3, actual);
					break;
				case 5:
					Assert.AreEqual(-2, actual);
					break;
				case 6:
					Assert.AreEqual(-1, actual);
					break;
				case 7:
					Assert.AreEqual(0, actual);
					break;
				case 8:
					Assert.AreEqual(9, actual);
					break;
				default:
					Assert.Inconclusive(string.Format("Character index [{0}] not expected for string pattern [{1}].", idx, pattern));
					break;
			}
		}

		/// <summary>
		///A test for GetDelta1
		///</summary>
		[TestMethod()]
		[DeploymentItem("WonKim.Text.Search.dll")]
		public void GetDelta1Test()
		{
			BoyerMooreStringSearch_Accessor target = new BoyerMooreStringSearch_Accessor();
			string input = "World";
			string pattern = "World";
			int idx = input.Length - 1;
			Dictionary<char, int> patternCharPosMap = new Dictionary<char, int>(pattern.Length);
			int expected = 0;
			int actual;
			target.InitPatternCharacterPositionMap(patternCharPosMap, pattern);
			actual = target.GetDelta1(idx, input, pattern, patternCharPosMap);
			Assert.AreEqual(expected, actual);
		}

		/// <summary>
		///A test for GetDelta0
		///</summary>
		[TestMethod()]
		[DeploymentItem("WonKim.Text.Search.dll")]
		public void GetDelta0Test()
		{
			BoyerMooreStringSearch_Accessor target = new BoyerMooreStringSearch_Accessor();
			string input = "World";
			string pattern = "World";
			int idx = input.Length - 1;
			Dictionary<char, int> patternCharPosMap = new Dictionary<char,int>(pattern.Length);
			int expected = BoyerMooreStringSearch.GetLarge(input, pattern);
			int actual;
			target.InitPatternCharacterPositionMap(patternCharPosMap, pattern);
			actual = target.GetDelta0(idx, input, pattern, patternCharPosMap);
			Assert.AreEqual(expected, actual);
		}
	}
}
