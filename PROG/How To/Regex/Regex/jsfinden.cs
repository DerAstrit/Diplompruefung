using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace Webcrawler
{
    internal class jsfinden
    {
        public static List<string> GetJSFiles(string htmlFile)
        {
            List<string> JSfiles = new List<string>();
            string htmlText = File.ReadAllText(htmlFile);
            MatchCollection matches = Regex.Matches(htmlText, @"<script.*?src=[""'](.*?\.js)[""'].*?>", RegexOptions.IgnoreCase);

            foreach (Match match in matches)
            {
                JSfiles.Add(match.Groups[1].Value);
            }
            return JSfiles;
        }
    }
}
