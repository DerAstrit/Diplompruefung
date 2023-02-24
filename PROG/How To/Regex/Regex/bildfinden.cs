using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace Webcrawler
{
    internal class bildfinden
    {
        public static List<string> GetImageLinks(string htmlFile)
        {
            List<string> imageLinks = new List<string>(); 
            string htmlText = File.ReadAllText(htmlFile);
            MatchCollection matches = Regex.Matches(htmlText, @"<img.*?src=[""'](.*?)[""'].*?>", RegexOptions.IgnoreCase);
            foreach (Match match in matches)
            {
                imageLinks.Add(match.Groups[1].Value);
            }
            return imageLinks;
        }
    }
}
