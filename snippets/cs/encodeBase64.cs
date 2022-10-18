using System;
using System.Text;

byte[] input = System.Text.Encoding.UTF8.GetBytes("someString");
var baseVal = Convert.ToBase64String(input);
Console.WriteLine(baseVal);

