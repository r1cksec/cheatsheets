using System;
using System.IO;
using System.Text;
 
try
{
    FileStream fl = File.Open("file.txt", FileMode.Append, FileAccess.Write);
    StreamWriter fw = new StreamWriter(fl);
    fw.WriteLine("str");
    fw.Flush();
    fw.Close();
{
catch (IOException ioe)
{
    Console.WriteLine(ioe);
}

