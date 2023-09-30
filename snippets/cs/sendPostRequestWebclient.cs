using System.Collections.Specialized;
using System.Net;

WebClient webClient = new WebClient();

// prepare POST data 
System.Collections.Specialized.NameValueCollection postData = new System.Collections.Specialized.NameValueCollection
{
    { "key1", "value1" },
    { "key2", "value2" }
};

// send POST request
byte[] responseBytes = webClient.UploadValues("https//domain/path", "POST", postData);
string response = System.Text.Encoding.UTF8.GetString(responseBytes);
Console.WriteLine(response);

