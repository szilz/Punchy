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
using System.ServiceModel;
using System.ServiceModel.Activation;
using System.ServiceModel.Web;
using System.Text;
using WonKim.Text.Search;

namespace WonKim.Web.Text.Search
{
	[ServiceContract]
	[AspNetCompatibilityRequirements(RequirementsMode = AspNetCompatibilityRequirementsMode.Allowed)]
	[ServiceBehavior(InstanceContextMode = InstanceContextMode.PerCall)]
	public class PatternStringSearchService
	{
		public PatternStringSearchService()
		{
			BoyerMooreStringSearch = new BoyerMooreStringSearch();
		}

		protected BoyerMooreStringSearch BoyerMooreStringSearch
		{
			get;
			set;
		}

		[WebInvoke(UriTemplate = "BoyerMooreSearch", Method = "POST")]
		public PatternStringSearchResponse BoyerMooreSearch(PatternStringSearchRequest req)
		{
			PatternStringSearchResponse resp = null;
			IList<int> resPosList = null;
			List<PatternStringSearchMatch> matchList = new List<PatternStringSearchMatch>(0);
			PatternStringSearchMatch match = null;
			resPosList = BoyerMooreStringSearch.Match(req.Input, req.Pattern);
			foreach (int resPos in resPosList)
			{
				match = new PatternStringSearchMatch
				{
					Pattern = req.Pattern,
					Position = resPos
				};
				matchList.Add(match);
			}
			resp = new PatternStringSearchResponse
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