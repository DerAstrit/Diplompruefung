using System.Text.RegularExpressions;

namespace Webcrawler
{
    internal class cssfinden
    {

        public static List<string> GetCssFiles(string htmlFile)
        {
            List<string> cssFiles = new List<string>(); 
            string htmlText = File.ReadAllText(htmlFile);
            MatchCollection matches = Regex.Matches(htmlText, @"<link.*?href=[""'](.*?\.css)[""'].*?>", RegexOptions.IgnoreCase);
            foreach (Match match in matches)
            {
                cssFiles.Add(match.Groups[1].Value);
            }
            return cssFiles;
        }
    }
}
