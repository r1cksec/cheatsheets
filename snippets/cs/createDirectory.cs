using System.IO;
class Program
{
    static void Main(string[] args)
    {

        string path = @"C:\directory";
        
        if (!Directory.Exists(path))
        {
            Directory.CreateDirectory(path);
        }
    }
}

