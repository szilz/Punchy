//-------------------------------------------------------------------------------
// Created by: [won.kim]
// Created on: [6/4/2012 1:51:39 PM]
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
	public class DictionaryConfigurationEntry
	{
		public const string BOUNDARY_PROPERTY = "boundary";

		public DictionaryConfigurationEntry()
		{
			Properties = new Dictionary<string, string>(0);
		}

		public string Key
		{
			get;
			set;
		}

		public string Name
		{
			get;
			set;
		}

		public string Path
		{
			get;
			set;
		}

		public bool IgnoreCase
		{
			get;
			set;
		}

		public bool CultureInvariant
		{
			get;
			set;
		}

		public IDictionary<string, string> Properties
		{
			get;
			set;
		}
	}
}