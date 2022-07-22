# Definition

In order to successfully compromise a company in the context of a red team assessment, the first step is to identify the existing attack surface.
The process of information gathering is called Reconnaissance.
After a good Reconaissance, it is often possible to perform password spraying and powerfull phishing attacks.
In this context, information about the corporate structure, the internal IT landscape, the publicly accessible systems and the current employees are important.

## Determine corporate structure

In the first instance, it is necessary to identify the companies that are included in the scope of the assessment.
The following sources of information can be used to identify the relationships between different companies:

* https://www.crunchbase.com
* https://www.handelsregister.de
* https://www.northdata.de
* https://www.unternehmensregister.de

The search for company names, which according to northdata are related to each other, can be automated with the help of the tool `north-scraper` (see https://github.com/r1cksec/autorec/blob/master/scripts/north-scraper).

Depending on the target company it is necessary to remove some false positives afterwards, because northdata also shows past relations between companies.

Furthermore, a look at the company website or wikipedia often helps to better understand the structure of the company.
Information on subsidiaries and company locations may be listed there.

## Public infrastructure

The public infrastructure of a company includes domains and IP addresses.

### Get public IP address ranges

The easiest way to find public IP address ranges of a company is to search the RIPE database offline.
The database can be downloaded with the following command (unpacked about 4 GB):

```
wget ftp://ftp.ripe.net/ripe/dbase/ripe.db.gz
```

Afterwards it is possible to search the database with a simple `grep` command.
The name of the target company or acronyms provide a good starting point.
Since there is no established standard for specifying information in the database, the results should be completed or checked with https://www.shodan.io or https://bgp.he.net/cc.

The search on bgp.he.net can be automated using the tool `get-netblocks` (see https://github.com/r1cksec/autorec/blob/master/scripts/get-netblocks):

```
get-netblocks '<companyName>'
```

Sometimes it is necessary to quickly get the name of the hoster for a given IP address.
The tool `get-whois-hoster` is suitable (see https://github.com/r1cksec/autorec/blob/master/scripts/get-whois-hoster):

```
get-whois-hoster <domainFile>
```

### Get rootdomains

In order to perform a subdomain enumeration, rootdomains are needed.
Rootdomains can be identified by simple using the company name and a single Google search.
But it is also possible that the rootdomains differ based on top-level domains.
However a domain with a completely different name could also belong to the target company.

One option to find rootdomains is the use of the Intel module from Amass (see https://github.com/r1cksec/cheatsheets/blob/main/linux/amass.md).

The Intel module collects various root domains from different sources of the Open Source Intelligence (OSINT) sector.
These sources include, for example https://viewdns.info.

```
amass intel -d <domain> -whois
```

However, the Intel module from amass can also be started with an ASN or an IP address or range.
A suitable ASN is often listed in the RIPE database under the `origin` field:

```
ip=$(host <domain> | awk -F 'has address' '{print $2}' | sed 's/ //g' | head -n 1); whois $ip | grep -i origin | awk -F ' ' '{print $2}'
```

Additionally, it is often useful to enumerate different top-level domains for already known root domains.
Again this process can be automated using the tool `tld-discovery` (https://github.com/r1cksec/autorec/blob/master/scripts/tld-discovery):

```
python3 tld-discovery.py <domain>
```

If IP address ranges of the target company are already known, it is also possible to examine the Subject Alternate Name (SAN) value of the existing TLS certificates.
The IP range in question could for example be scanned with nmap (see https://github.com/nmap/nmap):

```
nmap --script /usr/share/nmap/scripts/ssl-cert.nse <rhost> -p 443 
```

The scan process and extraction of SAN values can be automated using the tool `get-cert-domains-from-ip-range` (see https://github.com/r1cksec/autorec/blob/master/scripts/get-cert-domains-from-ip-range):

```
python3 get-cert-domains-from-ip-range.py <ipRange>
```

Of course, it is worthwhile to perform a reverse dns lookup for all known IP addresses.

```
amass intel -ip -addr <XXX.XXX.XXX.XXX-XXX>
```

Moreover, it is possible to crawl the website of a company with a web spider.
Among the extracted domains and subdomains, further root domains can be identified in this way.
The tool `hakrawler` allows to extract all URLs from a given website (see https://github.com/r1cksec/cheatsheets/blob/main/linux/hakrawler.md):

```
cat "<urlFile>" | hakrawler -s -u -d 1
```

### Classify rootdomains

The list of domains resulting from this procedure must then be sorted and classified.

Often websites can be assigned to a specific company based on the copyright.
In this way a long list of root domains can be sorted and classified accordingly.
Again this process can be automated using the tool `get-copyright` (see https://github.com/r1cksec/autorec/blob/master/scripts/get-copyright):

```
./get-copyrights <domainFile>
```

Alternatively the copyright can be used to find further root domains.
A simple Google search with `"copyright"` is often sufficient to list other root domains (see https://github.com/r1cksec/autorec/blob/master/scripts/search-google).

Another way to assign rootdomains to a target company is the comparision of favicons.
The tool favfreak is suitable for this purpsoe (see https://github.com/r1cksec/cheatsheets/blob/main/linux/favfreak.md).

Favfreak calculates the MD5 hash of a favicon and then groups equal results:

```
cat <urlFile> | favfreak
```

It is also possible to sort the domains using screenshots of websites using the tool `aquatone`.
Aquatone takes screenshots and then groups equal results (see https://github.com/r1cksec/cheatsheets/blob/main/linux/aquatone.md):

```
cat <rhostFile> | aquatone -out <outputDirectory>
```

Alternatively rootdomains can also be classified based on the `title` tag.
The tool `get-title` automates this process (see https://github.com/r1cksec/autorec/blob/master/scripts/get-title):

### Subdomain enumeration

Domains can be easily be guessed.
The tool `massdns` is particularly well suited for this, since several DNS servers are used and thus many queries can be parallelized (see https://github.com/r1cksec/cheatsheets/blob/main/linux/massdns.md):

```
cat <subdomainFile> | awk -F " " '{print $1".<domain>"}' | massdns -r <dnsResolversFile> -t A -o S -w <outputFile>
```

Subdomain wordlists can be obtained here https://github.com/danielmiessler/SecLists/tree/master/Discovery/DNS.

Additionally, subdomains can be enumerated using public OSINT resources like https://crt.sh or https://dnsdumpster.com. 

Again the tool `amass` automates this process.

```
amass enum -passive -d <domain> -src
```

Alternatively, there are tools like `subfinder`:

```
subfinder -d <domain>
```

## Internal informations

Internal informations are necessary to send trust-building phishing messages or to perform targeted password spraying attacks.

### Internal domain

`Nmap` can be used to scan available systems and search for NTLM authentications (example OWA, Skype for Business, Lyncdiscover etc):

```
nmap -p 80,443 --script http-ntlm-info --script-args http-ntlm-info.root=/root/ <target>
```

To cover a larger set of web paths it is also possible to use the tool `ntlmrecon` (see https://github.com/r1cksec/cheatsheets/blob/main/linux/ntlmrecon.md). 

```
ntlmrecon --input <url>
```

The internal domain thus determined can then be used for a Google search for `"internal.domain"` to obtain further interesting information about the internal infrastructure.

### Metadata

Often interesting information are hidden in metadata of published documents like PDF, Excel or Word files.

Examining the `producer` and `author` fields of different files, will likely reveal conclusions about the internal Active Directory user syntax.
Using `metagoofil` several documents can be downloaded in the first step (see https://github.com/r1cksec/cheatsheets/blob/main/linux/metagoofil.md):

```
metagoofil -d <ipOrDomain> -t pdf -l 100 -n 25 -o <outputDir> -w
```

Afterwards the metadata can be extracted using `exiftool` (see https://github.com/r1cksec/cheatsheets/blob/main/linux/exiftool.md):

```
exiftool * | grep -i "Producer\|Author" | sort -u
```

The metadata can also contain other informations like domains or e-mail addresses:

```
strings * | grep -i "@"
```

### DNS records

It is also advisable to check all DNS records of a domain.
In this way it is possible to find additional information about internally used software.
The tool `get-dns-records` will retrieve all kind of DNS records (see https://github.com/r1cksec/autorec/blob/master/scripts/get-dns-records):

```
bash get-dns-records.sh <domain>
```

### Github

If the target company runs one or more Github repositories, it is often worthwhile to search this repositories for additional informations as well as credentials.
The following tools facilitate this search:

* https://github.com/r1cksec/autorec/blob/master/scripts/get-github-repos
* https://github.com/r1cksec/autorec/blob/master/scripts/grep-inside-github-repos
* https://github.com/r1cksec/cheatsheets/blob/main/linux/gitleaks.md
* https://github.com/r1cksec/cheatsheets/blob/main/linux/scanrepo.md
* https://github.com/r1cksec/cheatsheets/blob/main/linux/trufflehog.md

Or, the githound tool can aid in the discovery of api-keys or konfiguration files. (see https://github.com/tillson/git-hound).

Furthermore Github dorks can also be used to gather interesting files (see https://github.com/r1cksec/cheatsheets/blob/main/fuzzing/github-dorks).

## Employees and E-mail addresses

In many cases, attackers are interested in e-mail addresses of a target company.
OSINT resources resources provide a good starting point.
The following two services offers a good collection of e-mail addresses for a given domain:

* https://phonebook.cz
* https://www.skymem.info

The tool `get-mails` will automatically extract the addresses of theses resources (see https://github.com/r1cksec/autorec/blob/master/scripts/get-mails):

```
python3 get-mails <domain>
```

It is also possible to find e-mail addresses using search engines like Google or Baidoo.
The tool `EmailAll` combines the scrape of OSINT resources and the use of search engines (see https://github.com/r1cksec/cheatsheets/blob/main/linux/EmailAll.md).

```
python3 emailall.py --domain <domain> run
```

Once the syntax of the target company is known, e-mail addresses or user names can also be derived based on employee names.
A suitable list of employees can be obatined using social media platforms like Xing or LinkedIn.

Xing offers the advantage that all employees of a company can be listed by sending a few HTTP GET requests.
After pressing the "more Employes" button, it is possible to intercept the request and change the value of the variable "first" to a new value (for example "1000").

```
POST /xing-one/api HTTP/1.1
Host: www.xing.com
[...]
{
    "operationName":"Employees",
    "variables":{
        "consumer":"",
        "includeTotalQuery":false,
        "id":"targetCompanyIdNumber",
        "first":1000,
[...]
```

LinkedIn is more restrictive regarding lists of employees.
Neverless there are different tools to gather the names of employees.
For example `crosslinked` collects employee names with the help of search engine queries (https://github.com/r1cksec/cheatsheets/blob/main/linux/crosslinked.md).
However, many false positives may be collected.

```
python3 crosslinked.py -f '{first}.{last}@<domain>' "<companyName>" --safe
```

Alternativly, the lead-generating and rekruting solution PhantomBuster (see https://phantombuster.com/) can be used on LinkedIn to extract useful information and data.

Another source to get more email addresses are known database leaks.
Besides a list of mail addresses and maybe even passwords, this source can also be used to discover new root domains.
Once a new rootdomain has been found, the enumeration of subdomains and internal informations can be repeated.

