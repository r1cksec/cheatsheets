using System;
using System.IO;

string rootdir = @"C:\users";

// get files
string[] files = Directory.GetFiles(rootdir);
Console.WriteLine(String.Join(Environment.NewLine, files));

// get directories
string[] dirs = Directory.GetDirectories(rootdir);
Console.WriteLine(String.Join(Environment.NewLine, dirs));

