//-------------------------------------------------------------------------------
// Created by: [won.kim]
// Created on: [6/1/2012 11:45:54 AM]
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

namespace WonKim.Web.Text.Search
{
	public class DictionaryStringSearchMatch
	{
		public string Pattern
		{
			get;
			set;
		}

		public int Position
		{
			get;
			set;
		}

		public override string ToString()
		{
			return string.Format("[{1}, {0}]", Pattern, Position);
		}
	}
}