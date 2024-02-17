using System.Security.Cryptography;
using System.Text;

public static string getMd5(string input)
{
    using (MD5 md5 = MD5.Create())
    {
        byte[] inputBytes = Encoding.UTF8.GetBytes(input);
        byte[] hashBytes = md5.ComputeHash(inputBytes);
        StringBuilder sb = new StringBuilder();
        foreach (byte b in hashBytes)
        {
            // convert to a hexadecimal string 
            sb.Append(b.ToString("x2"));
        }
        return sb.ToString();
    }
}

string md5Hash = getMd5("SomeString");

