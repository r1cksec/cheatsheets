using System.IO;

string path = @"C:\\directory";

if (!Directory.Exists(path))
{
    Directory.CreateDirectory(path);
}

