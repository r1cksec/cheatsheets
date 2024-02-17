using System;
using System.Diagnostics;

var proc = new Process
{
    StartInfo = new ProcessStartInfo
    {
        FileName = "powershell.exe",
        Arguments = "whoami",
        UseShellExecute = false,
        CreateNoWindow = true,
        RedirectStandardOutput = true
    }
};
proc.Start();
string line = "";

while (!proc.StandardOutput.EndOfStream)
{
    line = line + proc.StandardOutput.ReadLine() + "\n";
}

Console.WriteLine(line);

