using System;
using System.Diagnostics;
using System.ComponentModel;

Process myProcess = new Process();

try
{
    myProcess.StartInfo.UseShellExecute = false;
    myProcess.StartInfo.FileName = "C:\\file.exe";
    myProcess.StartInfo.CreateNoWindow = true;
    myProcess.Start();
}
catch (Exception e)
{
    Console.WriteLine(e.Message);
}

