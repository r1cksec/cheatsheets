### Source
https://github.com/OWASP/Amass  

### Modules:
```
intel - collect further root domains associated with the organisation 
enum - collect subdomains
viz - visual result presentation
track - compare results across enumerations
```

### OSINT sources
```
Ask, Baidu, Bing, BuiltWith, DNSDumpster, DNSTable, HackerOne, RapidDNS, Riddler, SiteDossier, ViewDNS, Yahoo, Censys, CertSpotter, Crtsh, FacebookCT, GoogleCT, AlienVault, BinaryEdge, BufferOver, C99, CIRCL, CommonCrawl, DNSDB, GitHub, HackerTarget, IPToASN, Mnemonic, NetworksDB, PassiveTotal, Pastebin, RADb, Robtex, SecurityTrails, ShadowServer, Shodan, Spyse, Sublist3rAPI, TeamCymru, ThreatCrowd, ThreatMiner, Twitter, Umbrella, URLScan, VirusTotal, WhoisXML, ZETAlytics, ArchiveIt, LoCArchive, UKGovArchive, Wayback
```

### API setup
```
Path to config file and file example:
$HOME/.config/amass/config.ini
https://raw.githubusercontent.com/owasp-amass/amass/master/examples/config.ini

Example:
# https://fullhunt.io (Free)
[data_sources.FullHunt]
[data_sources.FullHunt.Credentials]
apikey = apiKey
```

### Find further root domain names 
```
amass intel -d <domain> -whois
```

### Search domains using ASN number
```
amass intel -asn <asnNumber>
```

### Reverse DNS Lookup on cidr ranges 
```
amass intel -ip -cidr <cidr>
```

### Reverse DNS Lookup on ranges
```
amass intel -ip -addr <XXX.XXX.XXX.XXX-XXX>
```

### Basic enumeration using different OSINT sources (passiv - no DNS resolution and validation, src show source)
```
amass enum -passive -d <domain> -src -o <outputfile>
```

