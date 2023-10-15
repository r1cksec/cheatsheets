using System;  
using System.Net;  
using System.IO;

System.Net.ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;
WebRequest request = WebRequest.Create("https://ifconfig.me");
WebResponse response = request.GetResponse();
StreamReader reader = new StreamReader(response.GetResponseStream());
string str = reader.ReadLine();

while(str != null)
{
    Console.WriteLine(str);
    str = reader.ReadLine();
}

