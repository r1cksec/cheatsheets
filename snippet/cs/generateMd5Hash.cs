using System;
using System.Text;
using System.Security.Cryptography;

MD5 md5Obj = System.Security.Cryptography.MD5.Create();
byte[] input = System.Text.Encoding.ASCII.GetBytes("someString");
byte[] hashBytes = md5Obj.ComputeHash(input);
 
// convert byte array to hex string
StringBuilder sb = new StringBuilder();

for (int i = 0; i < hashBytes.Length; i++)
{
    sb.Append(hashBytes[i].ToString("X2"));
}

Console.WriteLine(sb.ToString());

