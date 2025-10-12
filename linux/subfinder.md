### Source
https://github.com/projectdiscovery/subfinder

### Find domains using OSINT
```
subfinder -d <domain>
```

### OSINT sources without API key
```
alienvault
anubis
commoncrawl
crtsh
digitorus
dnsdumpster
gitlab
hackertarget
hudsonrock
leakix
netlas
pugrecon
rapiddns
reconcloud
redhuntlabs
riddler
sitedossier
threatcrowd
threatminer
waybackarchive
```

### OSINT sources with API key
```
bevigil
bufferover
builtwith
c99
censys
certspotter (sslmate)
chaos (projectdiscovery)
chinaz
digitalyama
dnsdb
dnsrepo
driftnet
facebook
fofa
fullhunt
github
hunterio
intelx
passivetotal
quake
robtex
rsecloud
securitytrails
shodan
threatbook
virustotal
whoisxml
zoomeye
```

### API setup
```
Path to config:
$HOME/.config/subfinder/provider-config.yaml

Example:
bevigil: [apiKey]

List sources (listed sources depend on provider-config.yaml)
subfinder --provider-config provider-config.yaml -ls

Overview of current OSINT provider:
pkg/passive/sources_test.go
```

