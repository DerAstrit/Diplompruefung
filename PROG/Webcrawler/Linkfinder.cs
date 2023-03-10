using HtmlAgilityPack;

namespace Webcrawler;

public class LinkFinder
{

    public string? InputUrl()
    {
        Console.WriteLine("\nPlease Insert the Url");
        string? url = Console.ReadLine();
        return url;
    }


    public static List<string> ParseLinks(string? url)
    {
        List<string> links = new List<string>();
        HtmlWeb web = new HtmlWeb();
        HtmlDocument doc = web.Load(url);
        foreach (HtmlNode link in doc.DocumentNode.SelectNodes("//a[@href]"))
        {
            HtmlAttribute att = link.Attributes["href"];
            if (att.Value.StartsWith("http"))
            {
                links.Add(att.Value);
            }
        }

        return links;

    }
    

    public void ShowStats(string? url)
    {
        List<string> links = ParseLinks(url);
        links.ForEach(Console.WriteLine);
        int linkCount = links.Count;
        Console.WriteLine("\n" +
                          "There were " +
                          "" + linkCount
                          + " Urls on this Page\n");
    }
    
}
