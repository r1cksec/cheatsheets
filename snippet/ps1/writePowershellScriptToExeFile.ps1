$cmd =  @'
mkdir newDir
'@

Add-Type -OutputType ConsoleApplication -OutputAssembly payload.exe  @"
    using System;
    class Program {
        public static void Main(string[] args) {
        System.Diagnostics.Process process = new System.Diagnostics.Process();
        System.Diagnostics.ProcessStartInfo startInfo = new System.Diagnostics.ProcessStartInfo();
        startInfo.WindowStyle = System.Diagnostics.ProcessWindowStyle.Hidden;
        startInfo.RedirectStandardOutput = true;
        startInfo.UseShellExecute = false;
        startInfo.FileName = "powershell.exe";
        string command = "$cmd";
        startInfo.Arguments = "-ExecutionPolicy Bypass -nop -windowstyle hidden -c \"" + command + "\"";
        process.StartInfo = startInfo;
        process.Start();
        Console.Write(process.StandardOutput.ReadToEnd());
        }
    }
"@

