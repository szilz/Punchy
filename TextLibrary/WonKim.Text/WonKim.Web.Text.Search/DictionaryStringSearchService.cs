//-------------------------------------------------------------------------------
// Created by: [won.kim]
// Created on: [6/1/2012 10:51:23 AM]
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

using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.ServiceModel.Activation;
using System.ServiceModel.Web;
using System.Text;
using WonKim.Text.Search;
using WonKim.Text.Search.Configuration;

namespace WonKim.Web.Text.Search
{
	[ServiceContract]
	[AspNetCompatibilityRequirements(RequirementsMode = AspNetCompatibilityRequirementsMode.Allowed)]
	[ServiceBehavior(InstanceContextMode = InstanceContextMode.PerCall)]
	public class DictionaryStringSearchService
	{
		public const string DEFAULT_DICTIONARY_NAME = "default";

		public DictionaryStringSearchService()
		{
			Configuration = (StringSearchConfiguration)System.Configuration.ConfigurationManager.GetSection("WonKim.Text.Search");
			//
			AhoCorasickStringSearchMap = new Dictionary<string, AhoCorasickStringSearch>();
			// Create junk empty dictionary as the default dictionary for now.
			AhoCorasickStringSearchMap.Add(DEFAULT_DICTIONARY_NAME, new AhoCorasickStringSearch());
		}

		protected StringSearchConfiguration Configuration
		{
			get;
			set;
		}

		protected IDictionary<string, AhoCorasickStringSearch> AhoCorasickStringSearchMap
		{
			get;
			set;
		}

		/// <summary>
		/// Exists for testing reasons.  Allows a user to load a custom Aho-Corasick dictionary.
		/// </summary>
		/// <param name="dictName"></param>
		/// <param name="strEnumer"></param>
		[WebInvoke(UriTemplate = "InitializeAhoCorasick", Method = "POST")]
		public void InitializeAhoCorasick(DictionaryStringSearchInitRequest initReq)
		{
			AhoCorasickStringSearch stringSearch = null;
			DictionaryConfigurationEntry configEntry = null;
			string boundary = null;
			WonKim.Collections.Generic.KeywordTreeOptions ktOpts = Collections.Generic.KeywordTreeOptions.None;
			if (Configuration.DictionaryConfiguration.DictionaryConfigMap.ContainsKey(initReq.DictionaryKey))
			{
				configEntry = Configuration.DictionaryConfiguration.DictionaryConfigMap[initReq.DictionaryKey];
				if (configEntry.IgnoreCase) ktOpts |= Collections.Generic.KeywordTreeOptions.IgnoreCase;
				if (configEntry.CultureInvariant) ktOpts |= Collections.Generic.KeywordTreeOptions.CultureInvariant;
				if (configEntry.Properties.ContainsKey(DictionaryConfigurationEntry.BOUNDARY_PROPERTY))
				{
					boundary = configEntry.Properties[DictionaryConfigurationEntry.BOUNDARY_PROPERTY];
				}
			}
			stringSearch = AhoCorasickStringSearch.CreateAhoCorasickStringSearch(initReq.StringEnumerable, boundary, ktOpts);
			if (AhoCorasickStringSearchMap.ContainsKey(initReq.DictionaryKey))
			{
				AhoCorasickStringSearchMap[initReq.DictionaryKey] = stringSearch;
			}
			else
			{
				AhoCorasickStringSearchMap.Add(initReq.DictionaryKey, stringSearch);
			}
		}

		[WebInvoke(UriTemplate = "AhoCorasickSearch", Method = "POST")]
		public DictionaryStringSearchResponse AhoCorasickSearch(DictionaryStringSearchRequest req)
		{
			string dictName = null;
			DictionaryStringSearchResponse resp = null;
			IList<StringMatch> resPosList = null;
			List<DictionaryStringSearchMatch> matchList = new List<DictionaryStringSearchMatch>(0);
			DictionaryStringSearchMatch match = null;
			AhoCorasickStringSearch stringSearch = null;
			DictionaryConfigurationEntry configEntry = null;
			WonKim.Collections.Generic.KeywordTreeOptions ktOpts = Collections.Generic.KeywordTreeOptions.None;
			string boundary = null;
			dictName = req.DictionaryName;
			if (string.IsNullOrEmpty(dictName))
			{
				dictName = DEFAULT_DICTIONARY_NAME;
			}
			else
			{
				if (Configuration.DictionaryConfiguration.DictionaryConfigMap.ContainsKey(dictName))
				{
					configEntry = Configuration.DictionaryConfiguration.DictionaryConfigMap[dictName];
					if (configEntry.IgnoreCase) ktOpts |= Collections.Generic.KeywordTreeOptions.IgnoreCase;
					if (configEntry.CultureInvariant) ktOpts |= Collections.Generic.KeywordTreeOptions.CultureInvariant;
					if (configEntry.Properties.ContainsKey(DictionaryConfigurationEntry.BOUNDARY_PROPERTY))
					{
						boundary = configEntry.Properties[DictionaryConfigurationEntry.BOUNDARY_PROPERTY];
					}
					if (!AhoCorasickStringSearchMap.ContainsKey(dictName))
					{
						try
						{
							stringSearch = AhoCorasickStringSearch.CreateAhoCorasickStringSearch(configEntry.Path, boundary, ktOpts);
							AhoCorasickStringSearchMap.Add(configEntry.Key, stringSearch);
						}
						catch (Exception ex)
						{
							// TODO : Log error.
						}
					}
				}
			}
			if (AhoCorasickStringSearchMap.ContainsKey(dictName))
			{
				stringSearch = AhoCorasickStringSearchMap[dictName];
			}
			else
			{
				// TODO : Log warning.
				stringSearch = AhoCorasickStringSearchMap[DEFAULT_DICTIONARY_NAME];
			}
			resPosList = stringSearch.Match(req.Input, ktOpts);
			foreach (StringMatch resPos in resPosList)
			{
				match = new DictionaryStringSearchMatch
				{
					Pattern = resPos.Pattern,
					Position = resPos.Position
				};
				matchList.Add(match);
			}
			resp = new DictionaryStringSearchResponse
			{
				ID = Guid.NewGuid().ToString(),
				Input = req.Input,
				InputSource = req.InputSource,
				MatchList = matchList
			};
			return resp;
		}
	}
}