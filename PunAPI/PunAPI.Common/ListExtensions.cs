using System;
using System.Collections.Generic;
using System.Data;
using System.Text;

namespace PunAPI.Common
{
    public static class ListExtensions
    {
        public static DataTable ToDataTable(this List<string> keyWord, string colName)
        {
            var dt = new DataTable();
            dt.Columns.Add(colName);
            foreach (var word in keyWord)
            {
                dt.Rows.Add(word);
            }
            return dt;
        }
    }
}
