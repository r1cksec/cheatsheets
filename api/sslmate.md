### Source
https://sslmate.com/ct_search_api

### Get nameserver, subdomains and tls certificates
```
curl -s "https://api.certspotter.com/v1/issuances?domain=<domain>&include_subdomains=true&expand=dns_names&expand=issuer&expand=revocation&expand=problem_reporting&expand=cert_der"
```

