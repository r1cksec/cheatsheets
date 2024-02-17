Add-Type -OutputType ConsoleApplication -OutputAssembly file.exe @"
using System;

public class MyProgram
{
    public static void Main(string[] args) {
        Console.WriteLine("out");
    }
}
"@

