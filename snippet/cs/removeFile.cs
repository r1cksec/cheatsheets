using System;
using System.IO;

string filePath = "C:\\path\\file.txt";

try
{
    if (File.Exists(filePath))
        File.Delete(filePath);
    else
        Console.WriteLine("File does not exist");
}
catch (IOException ioExp)
{
    Console.WriteLine(ioExp.Message);
}

