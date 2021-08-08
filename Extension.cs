using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Flower_Shop
{
    public static class Extension
    {
        public static int ToInt(this object obj)
        {
            if(!string.IsNullOrEmpty(obj+""))
            {
                try
                {
                    return Convert.ToInt32(obj);
                }
                catch(Exception)
                {
                    return 0;
                }
            }
            else
            {
                return 0;
            }
        }
        public static decimal ToDecimal(this object obj)
        {
            if (!string.IsNullOrEmpty(obj + ""))
            {
                try
                {
                    return Convert.ToDecimal(obj);
                }
                catch(Exception)
                {
                    return 0;
                }
            }
            else
            {
                return 0;
            }
        }
        public static string ToXML(this DataTable oDT)
        {
            string str = "<Root>";
            string val;
            foreach(DataRow oDR in oDT.Rows)
            {
                str += "<Data ";
                foreach(DataColumn oDC in oDT.Columns)
                {
                    val = oDR[oDC.ColumnName] + "";
                    if(!string.IsNullOrEmpty(val))
                    {
                        str += oDC.ColumnName + "='" + val + "' ";
                    }
                }
                str += " ></Data>";
            }
            str += "</Root>";
            return str;
        }
    }
}