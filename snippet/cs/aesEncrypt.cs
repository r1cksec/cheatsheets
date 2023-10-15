using System;
using System.IO;
using System.Security.Cryptography;
using System.Text;

class Program
{
    static void Main()
    {
        string clearTextContent = "Some String";
        byte[] clearTextBytes = Encoding.UTF8.GetBytes(clearTextContent);

        string encryptedData = AesEncrypt(clearTextBytes);
        Console.WriteLine(encryptedData);
    }

    static string AesEncrypt(byte[] bytesToEncrypt)
    {
        byte[] iniVec = { 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120, 130, 140, 150, 160 };
        string password = "SomePasswor";
        byte[] passwordBytes = Encoding.UTF8.GetBytes(password);

        // key derivation
        using (Rfc2898DeriveBytes pbkdf2 = new Rfc2898DeriveBytes(passwordBytes, iniVec, 1000, HashAlgorithmName.SHA256))
        {
            // generate key 
            byte[] key = pbkdf2.GetBytes(32);

            using (Aes aes = Aes.Create())
            {
                aes.Key = key;
                aes.IV = iniVec;

                using (MemoryStream ms = new MemoryStream())
                {
                    using (CryptoStream cs = new CryptoStream(ms, aes.CreateEncryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(bytesToEncrypt, 0, bytesToEncrypt.Length);
                        cs.Close();
                    }

                    return Convert.ToBase64String(ms.ToArray());
                }
            }
        }
    }
}

