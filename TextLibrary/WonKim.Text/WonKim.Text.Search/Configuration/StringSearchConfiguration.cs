//-------------------------------------------------------------------------------
// Created by: [won.kim]
// Created on: [6/4/2012 1:51:51 PM]
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
using System.Configuration;
using System.Xml;
using System.Text;
using System.Text.RegularExpressions;

namespace WonKim.Text.Search.Configuration
{
	public class StringSearchConfiguration : IConfigurationSectionHandler
	{
		public const string DICTIONARIES_CONFIG = "Dictionaries";
		public const string DICTIONARY_CONFIG = "Dictionary";
		public const string ADD_ELEMENT = "add";
		public const string KEY_ATTRIBUTE = "key";
		public const string NAME_ATTRIBUTE = "name";
		public const string VALUE_ATTRIBUTE = "value";
		public const string PATH_ATTRIBUTE = "path";
		public const string IGNORE_CASE_ATTRIBUTE = "ignore-case";
		public const string CULTURE_INVARIANT_ATTRIBUTE = "culture-invariant";

		public StringSearchConfiguration()
		{
			DictionaryConfiguration = new DictionaryConfiguration();
		}

		public DictionaryConfiguration DictionaryConfiguration
		{
			get;
			set;
		}

		/// <summary>
		/// Converts a string to a boolean value.s
		/// </summary>
		/// <param name="s"></param>
		/// <returns></returns>
		public virtual bool ConvertToBoolean(string s)
		{
			bool b = false;
			if (string.IsNullOrEmpty(s))
			{
				b = false;
			}
			else
			{
				switch (s.ToUpper())
				{
					case "1":
					case "Y":
					case "YES":
					case "T":
					case "TRUE":
						b = true;
						break;
					default:
						b = false;
						break;
				}
			}
			return b;
		}

		/// <summary>
		/// Gets the string value for an XML attribute from <code>xmlNode</code>.  
		/// If <code>xmlNode.Attributes[attrName]</code> is not null, then return XML attribute value,
		/// otherwise, return <code>defaultValue</code>.
		/// </summary>
		/// <param name="xmlNode"></param>
		/// <param name="attrName"></param>
		/// <param name="defaultValue"></param>
		/// <returns></returns>
		protected virtual string GetXmlAttributeString(XmlNode xmlNode, string attrName, string defaultValue)
		{
			XmlAttribute xmlAttr = null;
			string attrValue = null;
			xmlAttr = xmlNode.Attributes[attrName];
			if (xmlAttr != null)
			{
				attrValue = xmlAttr.InnerText;
			}
			else
			{
				attrValue = defaultValue;
			}
			return attrValue;
		}

		/// <summary>
		/// Gets the string value for an XML attribute from <code>xmlNode</code>.  
		/// If <code>xmlNode.Attributes[attrName]</code> is not null, then return XML attribute value,
		/// otherwise, return <code>null</code>.
		/// </summary>
		/// <param name="xmlNode"></param>
		/// <param name="attrName"></param>
		/// <returns></returns>
		protected virtual string GetXmlAttributeString(XmlNode xmlNode, string attrName)
		{
			string attrValue = null;
			attrValue = GetXmlAttributeString(xmlNode, attrName, null);
			return attrValue;
		}

		/// <summary>
		/// Gets the string value for an XML attribute from <code>xmlNode</code>.  
		/// If <code>xmlNode.Attributes[attrName]</code> is not null, then return XML attribute value,
		/// otherwise, return <code>defaultValue</code>.
		/// </summary>
		/// <param name="xmlNode"></param>
		/// <param name="attrName"></param>
		/// <param name="defaultValue"></param>
		/// <returns></returns>
		protected virtual int GetXmlAttributeInt32(XmlNode xmlNode, string attrName, int defaultValue)
		{
			string attrValue = null;
			bool res = true;
			int intRes = 0;

			attrValue = GetXmlAttributeString(xmlNode, attrName);
			if (attrValue != null)
			{
				res = Int32.TryParse(attrValue, out intRes);
				if (res) return intRes;
			}
			return defaultValue;
		}

		/// <summary>
		/// Gets the string value for an XML attribute from <code>xmlNode</code>.  
		/// If <code>xmlNode.Attributes[attrName]</code> is not null, then return XML attribute value,
		/// otherwise, return <code>0</code>.
		/// </summary>
		/// <param name="xmlNode"></param>
		/// <param name="attrName"></param>
		/// <param name="defaultValue"></param>
		/// <returns></returns>
		protected virtual int GetXmlAttributeInt32(XmlNode xmlNode, string attrName)
		{
			string attrValue = null;
			bool res = true;
			int intRes = 0;

			attrValue = GetXmlAttributeString(xmlNode, attrName);
			if (attrValue != null)
			{
				res = Int32.TryParse(attrValue, out intRes);
				if (res) return intRes;
			}
			return 0;
		}

		/// <summary>
		/// Gets the string value for an XML attribute from <code>xmlNode</code>.  
		/// If <code>xmlNode.Attributes[attrName]</code> is not null, then return XML attribute value,
		/// otherwise, return <code>defaultValue</code>.
		/// </summary>
		/// <param name="xmlNode"></param>
		/// <param name="attrName"></param>
		/// <param name="defaultValue"></param>
		/// <returns></returns>
		protected virtual double GetXmlAttributeDouble(XmlNode xmlNode, string attrName, double defaultValue)
		{
			string attrValue = null;
			bool res = true;
			double doubleRes = 0;

			attrValue = GetXmlAttributeString(xmlNode, attrName);
			if (attrValue != null)
			{
				res = Double.TryParse(attrValue, out doubleRes);
				if (res) return doubleRes;
			}
			return defaultValue;
		}

		/// <summary>
		/// Gets the string value for an XML attribute from <code>xmlNode</code>.  
		/// If <code>xmlNode.Attributes[attrName]</code> is not null, then return XML attribute value,
		/// otherwise, return <code>0.0</code>.
		/// </summary>
		/// <param name="xmlNode"></param>
		/// <param name="attrName"></param>
		/// <param name="defaultValue"></param>
		/// <returns></returns>
		protected virtual double GetXmlAttributeDouble(XmlNode xmlNode, string attrName)
		{
			string attrValue = null;
			bool res = true;
			double doubleRes = 0.0;

			attrValue = GetXmlAttributeString(xmlNode, attrName);
			if (attrValue != null)
			{
				res = Double.TryParse(attrValue, out doubleRes);
				if (res) return doubleRes;
			}
			return 0.0;
		}

		/// <summary>
		/// Gets the string value for an XML attribute from <code>xmlNode</code>.  
		/// If <code>xmlNode.Attributes[attrName]</code> is not null, then return XML attribute value.
		/// </summary>
		/// <param name="xmlNode"></param>
		/// <param name="attrName"></param>
		/// <returns></returns>
		protected virtual bool GetXmlAttributeBoolean(XmlNode xmlNode, string attrName)
		{
			string attrValue = null;
			bool res = true;

			attrValue = GetXmlAttributeString(xmlNode, attrName);
			res = ConvertToBoolean(attrValue);
			return res;
		}

		/// <summary>
		/// Gets inner text value of <see cref="XmlNode"/>.  If <see cref="XmlNode"/> is null,
		/// returns <code>defaultValue</code>.
		/// </summary>
		/// <param name="xmlNode"></param>
		/// <param name="defaultValue"></param>
		/// <returns></returns>
		protected virtual string GetXmlNodeString(XmlNode xmlNode, string defaultValue)
		{
			string nodeValue = null;
			if (xmlNode != null)
			{
				nodeValue = xmlNode.InnerText;
			}
			else
			{
				nodeValue = defaultValue;
			}
			return nodeValue;
		}

		/// <summary>
		/// Gets inner text value of <see cref="XmlNode"/>.  If <see cref="XmlNode"/> is null,
		/// returns <code>null</code>.
		/// </summary>
		/// <param name="xmlNode"></param>
		/// <returns></returns>
		protected virtual string GetXmlNodeString(XmlNode xmlNode)
		{
			string nodeValue = null;
			nodeValue = GetXmlNodeString(xmlNode, null);
			return nodeValue;
		}

		/// <summary>
		/// Gets inner text value of <see cref="XmlNode"/>.  If <see cref="XmlNode"/> is null,
		/// returns <code>defaultValue</code>.
		/// </summary>
		/// <param name="xmlNode"></param>
		/// <param name="defaultValue"></param>
		/// <returns></returns>
		protected virtual int GetXmlNodeInt32(XmlNode xmlNode, int defaultValue)
		{
			string nodeValue = null;
			bool res = true;
			int intRes = 0;

			nodeValue = GetXmlNodeString(xmlNode);
			if (nodeValue != null)
			{
				res = Int32.TryParse(nodeValue, out intRes);
				if (res) return intRes;
			}
			return defaultValue;
		}

		/// <summary>
		/// Gets inner text value of <see cref="XmlNode"/>.  If <see cref="XmlNode"/> is null,
		/// returns <code>0</code>.
		/// </summary>
		/// <param name="xmlNode"></param>
		/// <param name="defaultValue"></param>
		/// <returns></returns>
		protected virtual int GetXmlNodeInt32(XmlNode xmlNode)
		{
			string nodeValue = null;
			bool res = true;
			int intRes = 0;

			nodeValue = GetXmlNodeString(xmlNode);
			if (nodeValue != null)
			{
				res = Int32.TryParse(nodeValue, out intRes);
				if (res) return intRes;
			}
			return 0;
		}

		/// <summary>
		/// Gets inner text value of <see cref="XmlNode"/>.  If <see cref="XmlNode"/> is null,
		/// returns <code>defaultValue</code>.
		/// </summary>
		/// <param name="xmlNode"></param>
		/// <param name="defaultValue"></param>
		/// <returns></returns>
		protected virtual double GetXmlNodeDouble(XmlNode xmlNode, double defaultValue)
		{
			string nodeValue = null;
			bool res = true;
			double doubleRes = 0.0;

			nodeValue = GetXmlNodeString(xmlNode);
			if (nodeValue != null)
			{
				res = Double.TryParse(nodeValue, out doubleRes);
				if (res) return doubleRes;
			}
			return defaultValue;
		}

		/// <summary>
		/// Gets inner text value of <see cref="XmlNode"/>.  If <see cref="XmlNode"/> is null,
		/// returns <code>0.0</code>.
		/// </summary>
		/// <param name="xmlNode"></param>
		/// <param name="defaultValue"></param>
		/// <returns></returns>
		protected virtual double GetXmlNodeDouble(XmlNode xmlNode)
		{
			string nodeValue = null;
			bool res = true;
			double doubleRes = 0.0;

			nodeValue = GetXmlNodeString(xmlNode);
			if (nodeValue != null)
			{
				res = Double.TryParse(nodeValue, out doubleRes);
				if (res) return doubleRes;
			}
			return 0.0;
		}

		/// <summary>
		/// Gets inner text value of <see cref="XmlNode"/>.  If <see cref="XmlNode"/> is null,
		/// returns <code>defaultValue</code>.
		/// </summary>
		/// <param name="xmlNode"></param>
		/// <param name="defaultValue"></param>
		/// <returns></returns>
		protected virtual DateTime GetXmlNodeDateTime(XmlNode xmlNode, DateTime defaultValue)
		{
			string nodeValue = null;
			bool res = true;
			DateTime dtRes = DateTime.UtcNow;

			nodeValue = GetXmlNodeString(xmlNode);
			if (nodeValue != null)
			{
				res = DateTime.TryParse(nodeValue, out dtRes);
				if (res) return dtRes;
			}
			return defaultValue;
		}

		/// <summary>
		/// Gets inner text value of <see cref="XmlNode"/>.  If <see cref="XmlNode"/> is null,
		/// returns <code>DateTime.UtcNow</code>.
		/// </summary>
		/// <param name="xmlNode"></param>
		/// <param name="defaultValue"></param>
		/// <returns></returns>
		protected virtual DateTime GetXmlNodeDateTime(XmlNode xmlNode)
		{
			string nodeValue = null;
			bool res = true;
			DateTime dtRes = DateTime.UtcNow;

			nodeValue = GetXmlNodeString(xmlNode);
			if (nodeValue != null)
			{
				res = DateTime.TryParse(nodeValue, out dtRes);
				if (res) return dtRes;
			}
			return DateTime.UtcNow;
		}

		/// <summary>
		/// Gets inner text value of <see cref="XmlNode"/>.  If <see cref="XmlNode"/> is null,
		/// returns <code>defaultValue</code>.
		/// </summary>
		/// <param name="xmlNode"></param>
		/// <param name="defaultValue"></param>
		/// <returns></returns>
		protected virtual bool GetXmlNodeBoolean(XmlNode xmlNode, bool defaultValue)
		{
			string nodeValue = null;
			bool boolRes = true;

			nodeValue = GetXmlNodeString(xmlNode);
			if (nodeValue != null)
			{
				boolRes = ConvertToBoolean(nodeValue);
				return boolRes;
			}
			return defaultValue;
		}

		/// <summary>
		/// Return <see cref="KeyValuePair"/> for &lt;add&gt; XML entity key and value attribute.
		/// </summary>
		/// <param name="addXmlNode"></param>
		/// <returns></returns>
		protected virtual KeyValuePair<string, string> GetAddEntityKeyValuePair(XmlNode addXmlNode)
		{
			KeyValuePair<string, string> keyValuePair;
			string key = null;
			string value = null;

			key = GetXmlAttributeString(addXmlNode, KEY_ATTRIBUTE);
			value = GetXmlAttributeString(addXmlNode, VALUE_ATTRIBUTE);
			// Add key-value pair to NotificationMessageTemplateMap.
			keyValuePair = new KeyValuePair<string, string>(key, value);
			return keyValuePair;
		}

		protected virtual KeyValuePair<string, string> GetUnescapedAddEntityKeyValuePair(XmlNode addXmlNode)
		{
			KeyValuePair<string, string> keyValuePair;
			keyValuePair = GetAddEntityKeyValuePair(addXmlNode);
			keyValuePair = new KeyValuePair<string, string>(keyValuePair.Key, Regex.Unescape(keyValuePair.Value));
			return keyValuePair;
		}

		protected virtual DictionaryConfigurationEntry CreateDictionaryConfiguration(XmlNode section)
		{
			DictionaryConfigurationEntry configEntry = null;
			KeyValuePair<string, string> pair;
			configEntry = new DictionaryConfigurationEntry();
			configEntry.Key = GetXmlAttributeString(section, KEY_ATTRIBUTE);
			configEntry.Name = GetXmlAttributeString(section, NAME_ATTRIBUTE);
			configEntry.Path = GetXmlAttributeString(section, PATH_ATTRIBUTE);
			configEntry.IgnoreCase = GetXmlAttributeBoolean(section, IGNORE_CASE_ATTRIBUTE);
			configEntry.CultureInvariant = GetXmlAttributeBoolean(section, CULTURE_INVARIANT_ATTRIBUTE);
			foreach (XmlNode childConfig in section.ChildNodes)
			{
				switch (childConfig.Name)
				{
					case ADD_ELEMENT:
						pair = GetUnescapedAddEntityKeyValuePair(childConfig);
						if (configEntry.Properties.ContainsKey(pair.Key))
						{
							configEntry.Properties[pair.Key] = pair.Value;
						}
						else
						{
							configEntry.Properties.Add(pair);
						}
						break;
					default:
						break;
				}
			}
			return configEntry;
		}

		protected virtual DictionaryConfiguration CreateDictionariesConfiguration(XmlNode section)
		{
			DictionaryConfiguration config = new DictionaryConfiguration();
			DictionaryConfigurationEntry configEntry = null;
			foreach (XmlNode childConfig in section.ChildNodes)
			{
				switch (childConfig.Name)
				{
					case DICTIONARY_CONFIG:
						configEntry = CreateDictionaryConfiguration(childConfig);
						if (config.DictionaryConfigMap.ContainsKey(configEntry.Key))
						{
							config.DictionaryConfigMap[configEntry.Key] = configEntry;
						}
						else
						{
							config.DictionaryConfigMap.Add(configEntry.Key, configEntry);
						}
						break;
					default:
						break;
				}
			}
			return config;
		}

		protected virtual StringSearchConfiguration CreateStringSearchConfiguration(XmlNode section)
		{
			StringSearchConfiguration config = new StringSearchConfiguration();
			foreach (XmlNode childConfig in section.ChildNodes)
			{
				switch (childConfig.Name)
				{
					case DICTIONARIES_CONFIG:
						config.DictionaryConfiguration = CreateDictionariesConfiguration(childConfig);
						break;
					default:
						break;
				}
			}
			return config;
		}

		public virtual object Create(object parent, object configContext, XmlNode section)
		{
			StringSearchConfiguration strCfg = null;
			strCfg = CreateStringSearchConfiguration(section);
			return strCfg;
		}
	}
}