using Microsoft.Win32;

string keyPath = @"Software\Classes\txtfile\shell\open\command";

// open registry key under HKEY_CURRENT_USER
using (RegistryKey key = Registry.CurrentUser.CreateSubKey(keyPath))
{
    // set value
    if (key != null)
    {
        key.SetValue("", @"C:\path\to\file.exe");
    }
}

