using System;
using System.Web.Script.Serialization;

class nestedKey
{
    public int nkey1;
    public int nkey2;
    public int nkey3;
}

class jsonObject
{
    public string key1;
    public string key2;
    public nestedKey key3;
}

class Program
{
    static void Main(string[] args)
    {
        var obj = new jsonObject
        {
            key1 = "val1",
            key2 = "val2",
            key3 = new nestedKey
            {
                nkey1 = 1,
                nkey2 = 2,
                nkey3 = 3
            }
        };
        var json = new JavaScriptSerializer().Serialize(obj);
        Console.WriteLine(json);
    }
}

