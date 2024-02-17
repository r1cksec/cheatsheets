using System.Net;
using System.IO;

System.Net.ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;
string requestUrl = "http://domain/path";
HttpWebRequest request = HttpWebRequest.CreateHttp(requestUrl);
request.Method = "POST";

// set properties (example Request.UserAgent, Request.Referer)
request.AutomaticDecompression = DecompressionMethods.Deflate | DecompressionMethods.GZip;
request.ContentType = "application/x-www-form-urlencoded";

// format: application/x-www-form-urlencoded
string postData = "link=test1&url-text=value2";
using (var writer = new StreamWriter(request.GetRequestStream()))
{
    writer.Write(postData);
}

// submit
string responseFromRemoteServer;
using (HttpWebResponse response = (HttpWebResponse)request.GetResponse())
{
    using (StreamReader reader = new StreamReader(response.GetResponseStream()))
    {
        responseFromRemoteServer = reader.ReadToEnd();
    }
}

