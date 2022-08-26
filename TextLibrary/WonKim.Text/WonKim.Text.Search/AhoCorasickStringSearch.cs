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
using WonKim.Collections.Generic;

namespace WonKim.Text.Search
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
	public class AhoCorasickStringSearch : IDictionaryStringSearch
	{
		public const string DEFAULT_BOUNDARY = " \t\n\r\f";
		protected KeywordTree _trie = null;
		protected string _boundary = DEFAULT_BOUNDARY;

		/// <summary>
		/// Initialize <see cref="AhoCorasickStringSearch"/> with an list of
		/// <see cref="string"/>s in a flat file.
		/// </summary>
		/// <param name="dictFilePath"></param>
		/// <param name="boundary"></param>
		/// <param name="ktOpts"></param>
		protected AhoCorasickStringSearch(string dictFilePath, string boundary, KeywordTreeOptions ktOpts)
		{
			_trie = KeywordTree.BuildKeywordTree(dictFilePath, ktOpts);
			if (!string.IsNullOrEmpty(boundary)) _boundary = boundary;
		}

		protected AhoCorasickStringSearch(string dictFilePath, string boundary)
			: this(dictFilePath, boundary, KeywordTreeOptions.None)
		{
		}

		protected AhoCorasickStringSearch(string dictFilePath) 
			: this(dictFilePath, null, KeywordTreeOptions.None)
		{
		}

		/// <summary>
		/// Initialize <see cref="AhoCorasickStringSearch"/> with an enumerable list of
		/// <see cref="string"/>s.
		/// </summary>
		/// <param name="strEnumer"></param>
		/// <param name="boundary"></param>
		/// <param name="ktOpts"></param>
		public AhoCorasickStringSearch(IEnumerable<string> strEnumer, string boundary, KeywordTreeOptions ktOpts)
		{
			_trie = KeywordTree.BuildKeywordTree(strEnumer, ktOpts);
			if (!string.IsNullOrEmpty(boundary)) _boundary = boundary;
		}

		public AhoCorasickStringSearch(IEnumerable<string> strEnumer, string boundary)
			: this(strEnumer, boundary, KeywordTreeOptions.None)
		{
		}

		public AhoCorasickStringSearch(IEnumerable<string> strEnumer) 
			: this(strEnumer, null, KeywordTreeOptions.None)
		{
		}

		/// <summary>
		/// Default constructor.  Initializes blank trie (keyword tree).
		/// </summary>
		public AhoCorasickStringSearch()
		{
			_trie = new KeywordTree();
		}

		public static AhoCorasickStringSearch CreateAhoCorasickStringSearch(string dictFilePath, string boundary, KeywordTreeOptions ktOpts)
		{
			AhoCorasickStringSearch stringSearch = new AhoCorasickStringSearch(dictFilePath, boundary, ktOpts);
			return stringSearch;
		}

		public static AhoCorasickStringSearch CreateAhoCorasickStringSearch(string dictFilePath, string boundary)
		{
			AhoCorasickStringSearch stringSearch = CreateAhoCorasickStringSearch(dictFilePath, boundary, KeywordTreeOptions.None);
			return stringSearch;
		}

		public static AhoCorasickStringSearch CreateAhoCorasickStringSearch(string dictFilePath)
		{
			AhoCorasickStringSearch stringSearch = CreateAhoCorasickStringSearch(dictFilePath, null, KeywordTreeOptions.None);
			return stringSearch;
		}

		public static AhoCorasickStringSearch CreateAhoCorasickStringSearch(IEnumerable<string> strEnumer, string boundary, KeywordTreeOptions ktOpts)
		{
			AhoCorasickStringSearch stringSearch = new AhoCorasickStringSearch(strEnumer, boundary, ktOpts);
			return stringSearch;
		}

		public static AhoCorasickStringSearch CreateAhoCorasickStringSearch(IEnumerable<string> strEnumer, string boundary)
		{
			AhoCorasickStringSearch stringSearch = CreateAhoCorasickStringSearch(strEnumer, boundary, KeywordTreeOptions.None);
			return stringSearch;
		}

		public static AhoCorasickStringSearch CreateAhoCorasickStringSearch(IEnumerable<string> strEnumer)
		{
			AhoCorasickStringSearch stringSearch = CreateAhoCorasickStringSearch(strEnumer, null, KeywordTreeOptions.None);
			return stringSearch;
		}

		public int Count
		{
			get
			{
				return _trie.Count;
			}
		}

		public virtual IList<StringMatch> Match(string input, KeywordTreeOptions ktOpts)
		{
			IList<StringMatch> matchPosList = new List<StringMatch>(_trie.Count);
			KeywordTreeNode<char> node = null;
			KeywordTreeNode<char> transNode = null;
			StringMatch match = null;
			int i = 0;
			int boundaryPos = 0;
			char c = (char)0;
			// Start at trie root.
			node = _trie.Root;
			// Iterate over reach character in string input
			for (i = 0; i < input.Length; ++i)
			{
				c = input[i];
				if ((ktOpts & KeywordTreeOptions.IgnoreCase) == KeywordTreeOptions.IgnoreCase)
				{
					if ((ktOpts & KeywordTreeOptions.CultureInvariant) == KeywordTreeOptions.CultureInvariant)
					{
						c = char.ToLowerInvariant(c);
					}
					else
					{
						c = char.ToLower(c);
					}
				}
				transNode = null;
				while (transNode == null)
				{
					if (node == null) break;
					transNode = node.GetTransition(c);
					if (transNode == null)
					{
						// If no transition exists, then if a boundary character has been
						//		encountered, then reset node and move i back to the position
						//		of the first encountered boundary character.
						// Otherwise, move to fail function.
						if (boundaryPos > 0)
						{
							node = null;
							i = boundaryPos;
							boundaryPos = 0;
						}
						else
						{
							// Move node to fail function.
							node = node.FailNode;
						}
					}
					else
					{
						// Mark position where first boundary character occurs
						//		so that we can continue a search from there.
						//		This is imporant for multi-string dictionary entries
						//		where a part of the string may be a separate dictionary
						//		entry.
						//		Example:  For input "human tyrosine kinase", 
						//		"human tyrosine" is a dictionary entry and
						//		"tyrosine" is a dictionary entry.  If we don't keep track
						//		of the first boundary position, "tyrosine" will not be
						//		matched.
						if (_boundary.Contains(transNode.EdgeValue))
						{
							if (boundaryPos == 0) boundaryPos = i;
						}
						// Match value found at current node.
						if (transNode.Value != null)
						{
							match = new StringMatch
							{
								Pattern = transNode.Value,
								Position = i - transNode.Value.Length + 1
							};
							matchPosList.Add(match);
						}
					}
				}
				if (node == null)
				{
					node = _trie.Root;
				}
				if (transNode != null) node = transNode;
			}
			return matchPosList;
		}

		public virtual IList<StringMatch> Match(string input)
		{
			IList<StringMatch> matchPosList = null;
			matchPosList = Match(input, KeywordTreeOptions.None);
			return matchPosList;
		}
	}
}
