using System;
using System.Diagnostics;

var startInfo = new ProcessStartInfo()
{
    FileName = "powershell.exe",
    Arguments = "whoami",
    UseShellExecute = false
};
Process.Start(startInfo);

