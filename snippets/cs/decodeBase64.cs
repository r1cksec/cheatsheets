using System;
using System.Text;

byte[] decodedBytes = Convert.FromBase64String("c29tZVN0cmluZwo=");
string text = System.Text.Encoding.UTF8.GetString(decodedBytes);
Console.WriteLine(text);

