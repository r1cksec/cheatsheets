using System.Net;
using System.Net.Sockets;
using System;

IPHostEntry host = Dns.GetHostEntry(Dns.GetHostName());

foreach (IPAddress ip in host.AddressList)
{
    Console.WriteLine("IP Address: " + ip.ToString());
}

