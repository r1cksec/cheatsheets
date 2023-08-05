using System;
using System.IO;
using System.Security.Cryptography;
using System.Text;

class Program
{
    static void Main()
    {
        string encryptedBase64 = "pd3KFvx8XXWaQZEw3AOM+w==";
        string decryptedData = AesDecrypt(encryptedBase64);
        Console.WriteLine(decryptedData);
    }

    static string AesDecrypt(string encryptedBase64)
    {
        byte[] iniVec = { 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120, 130, 140, 150, 160 };
        string aesPassword = "SomePassword";
        byte[] passwordBytes = Encoding.UTF8.GetBytes(aesPassword);

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
                    using (CryptoStream cs = new CryptoStream(ms, aes.CreateDecryptor(), CryptoStreamMode.Write))
                    {
                        byte[] encryptedBytes = Convert.FromBase64String(encryptedBase64);
                        cs.Write(encryptedBytes, 0, encryptedBytes.Length);
                        cs.Close();
                    }

                    byte[] decryptedBytes = ms.ToArray();
                    return Encoding.UTF8.GetString(decryptedBytes);
                }
            }
        }
    }
}

