using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TemplateWebApiPhucThinh.Common
{
    public static class MethodCommon
    {
      
        public static string catCHuoi(string text)
        {
            string str = "";
            string str1 = "";
            string[] words = text.Split(@"{ Name = ");
            foreach (string line in words)
            {
                str += line;
            }

            string[] words1 = str.Split(@" }");
            foreach (string line1 in words1)
            {
                str1 += line1;
            }



            return str1;
        }

    }
}
