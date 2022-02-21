### source
https://github.com/SySS-Research/smbcrawler  

### crawl shares for sensitive informations (t = timeout, D = spider depth, oA = output all)
```
python3 smbcrawler.py -i <hostsFile> -u <user> -p <password> -d <domain> -t <timeout> -D <depth> -oA <output>
```

### read nmap input and auto download interesting files
```
python3 smbcrawler.py -i <nmapXmlFile> -u <user> -H <hash> -d <domain> -t <timeout> -D <depth> -oA <output> --auto-download
```

