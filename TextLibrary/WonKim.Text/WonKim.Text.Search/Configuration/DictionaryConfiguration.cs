//-------------------------------------------------------------------------------
// Created by: [won.kim]
// Created on: [6/4/2012 1:51:26 PM]
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
using System.Web;

namespace WonKim.Text.Search.Configuration
{
	public class DictionaryConfiguration
	{
		public DictionaryConfiguration()
		{
			DictionaryConfigMap = new Dictionary<string, DictionaryConfigurationEntry>(0);
		}

		public IDictionary<string, DictionaryConfigurationEntry> DictionaryConfigMap
		{
			get;
			set;
		}
	}
}