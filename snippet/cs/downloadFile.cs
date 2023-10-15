using System;  
using System.Net;  
using System.IO;

System.Net.ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;
var c = new WebClient();
c.DownloadFile("https://domain/file.txt", "C:\\temp\\file.txt");

