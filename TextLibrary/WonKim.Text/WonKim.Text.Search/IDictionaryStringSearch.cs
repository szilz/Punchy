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
	public interface IDictionaryStringSearch
	{
		IList<StringMatch> Match(string input);
	}
}
