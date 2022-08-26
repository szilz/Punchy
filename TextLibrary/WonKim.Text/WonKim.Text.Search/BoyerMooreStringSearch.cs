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
using System.Linq;
using System.Text;

namespace WonKim.Text.Search
{
	/// <summary>
	/// Implementation of Boyer-Moore string search algorithm.
	/// http://www.cs.utexas.edu/users/moore/publications/fstrpos.pdf
	/// http://www.cs.utexas.edu/users/moore/best-ideas/string-searching/
	/// </summary>
	public class BoyerMooreStringSearch : IPatternStringSearch
	{
		public static int GetLarge(string input, string pattern)
		{
			return input.Length + pattern.Length + 1;
		}

		protected virtual void InitPatternCharacterPositionMap(Dictionary<char, int> patternCharPosMap, string pattern)
		{
			int i = 0;
			char c = (char)0;
			for (i = pattern.Length - 1; i >= 0; --i)
			{
				c = pattern[i];
				if (!patternCharPosMap.ContainsKey(c))
				{
					patternCharPosMap.Add(c, i);
				}
			}
		}

		/// <summary>
		/// Rightmost plausible reoccurence
		/// </summary>
		/// <param name="c"></param>
		/// <param name="pattern"></param>
		/// <returns></returns>
		protected virtual int GetRpr(int idx, string pattern, Dictionary<char, int> patternCharPosMap)
		{
			int rpr = pattern.Length;
			int rIdx = -1;
			char cAtIdx = pattern[idx];
			if (patternCharPosMap.ContainsKey(cAtIdx))
			{
				rIdx = patternCharPosMap[cAtIdx];
			}
			if (rIdx > -1 && rIdx > idx && pattern[rIdx - 1] != cAtIdx)
			{
				// ((idx + 1) - rIdx + 1) + idx
				rpr = 2 * idx + 2 - rIdx;
			}
			else
			{
				// (idx + 1) - rIdx + 1
				rpr = idx + 2 - pattern.Length;
			}
			return rpr;
		}

		protected virtual int GetDelta2(int idx, string pattern, Dictionary<char, int> patternCharPosMap)
		{
			int rpr = GetRpr(idx, pattern, patternCharPosMap);
			return pattern.Length + 1 - rpr;
		}

		protected virtual int GetDelta1(int idx, string input, string pattern, Dictionary<char, int> patternCharPosMap)
		{
			char c = input[idx];
			int delta1 = pattern.Length;
			if (idx == input.Length - 1) delta1 = 0;
			else if (patternCharPosMap.ContainsKey(c)) delta1 -= patternCharPosMap[c];
			return delta1; 
		}

		protected virtual int GetDelta0(int idx, string input, string pattern, Dictionary<char, int> patternCharPosMap)
		{
			int delta0 = 0;
			if (idx == input.Length - 1) delta0 = GetLarge(input, pattern);
			else delta0 = GetDelta1(idx, input, pattern, patternCharPosMap);
			return delta0;
		}

		protected virtual int GetLast(int idx, string input, string pattern, Dictionary<char, int> patternCharPosMap)
		{
			char c = input[idx];
			int last = pattern.Length;
			if (patternCharPosMap.ContainsKey(c)) last = patternCharPosMap[c];
			return last;
		}

		/// <summary>
		/// http://www.prism.gatech.edu/~jgirata3/boyermoore/index.html
		/// </summary>
		/// <param name="input"></param>
		/// <param name="pattern"></param>
		/// <returns></returns>
		public virtual IList<int> Match(string input, string pattern)
		{
			Dictionary<char, int> patternCharPosMap = null;
			IList<int> matchPosList = new List<int>(0);
			int lastStartPos = 0;
			int i = 0;
			int j = 0;
			int last = 0;
			char sChar = (char)0;
			char pChar = (char)0;
			if (string.IsNullOrEmpty(input)) return matchPosList;
			if (string.IsNullOrEmpty(pattern)) return matchPosList;
			if (pattern.Length > input.Length) return matchPosList;
			patternCharPosMap = new Dictionary<char, int>(pattern.Length);
			InitPatternCharacterPositionMap(patternCharPosMap, pattern);
			i = pattern.Length - 1;
			lastStartPos = i;
			j = pattern.Length - 1;
			do
			{
				sChar = input[i];
				pChar = pattern[j];
				if (sChar == pChar)
				{
					if (j == 0)
					{
						matchPosList.Add(i);
						// Move to next position.
						i = lastStartPos + pattern.Length;
						lastStartPos = i;
						j = pattern.Length - 1;
					}
					else
					{
						--i;
						--j;
					}
				}
				else
				{
					last = GetLast(i, input, pattern, patternCharPosMap);
					i += pattern.Length - Math.Min(j, 1 + last);
					lastStartPos = i;
					// Reset j in case a character mismatch occurred after
					//		sChar == pChar.
					j = pattern.Length - 1;
				}
			} 
			while (i < input.Length);
			return matchPosList;
		}
	}
}
