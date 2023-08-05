using System;
using System.Diagnostics;

using (Process schtasksProcess = new Process())
{
    schtasksProcess.StartInfo.FileName = "schtasks.exe";
    schtasksProcess.StartInfo.Arguments = "/create /f /tn taskName /sc daily /st 15:00 /tr C:\\file.exe";
    schtasksProcess.StartInfo.UseShellExecute = false;
    schtasksProcess.StartInfo.RedirectStandardOutput = true;
    schtasksProcess.StartInfo.CreateNoWindow = true;

    schtasksProcess.Start();
    schtasksProcess.WaitForExit();

    string output = schtasksProcess.StandardOutput.ReadToEnd();
    Console.WriteLine(output);
}

