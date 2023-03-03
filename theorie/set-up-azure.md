## Create Tenant
### Create developer account and configure Microsoft 365 E5 sandbox
```
https://docs.microsoft.com/en-us/office/developer-program/microsoft-365-developer-program-get-started
https://developer.microsoft.com/en-us/microsoft-365/dev-program > Join Now (you might need to wait a few hours after account creation) > Configurable sandbox
https://developer.microsoft.com/en-us/microsoft-365/profile
```

### Start setup
```
https://admin.microsoft.com > Left Navigation Bar > Settings > Domains > Start Setup
```

### Download Microsoft Azure Active Directory Connect and install on DC using "Express Settings"
```
https://www.microsoft.com/en-us/download/details.aspx?id=47594
```

## Licenses
### Microsoft Defender for Endpoint P2 licence
```
https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e
```

### Microsoft Intune licence
```
https://signup.microsoft.com/get-started/signup?products=40BE278A-DFD1-470a-9EF7-9F2596EA7FF9&ali=1
```

### Microsoft Enterprise Mobility + Security E5 licence
```
https://signup.microsoft.com/get-started/signup?products=87dd2714-d452-48a0-a809-d2f58c4f68b7
```

### Microsoft 365 E5 licence
```
https://admin.microsoft.com/#/catalog/offer-details/microsoft-365-e5/821CC756-0253-4002-9776-A59D87E10383
```

### Microsoft Teams license
```
https://www.microsoft.com/en-us/microsoft-365/microsoft-365-business-standard-one-month-trial
```

### Office E5 licence
```
https://www.microsoft.com/de-de/microsoft-365/enterprise/office-365-e5
```

### Check current licenses
```
https://portal.azure.com/#blade/Microsoft_AAD_IAM/LicensesMenuBlade/Products
```

### Assign licence to user 
```
https://endpoint.microsoft.com > Users > Choose user > Licenses > Assignments > Select Licenses > Save
https://admin.microsoft.com/usermanagement/usermanager.aspx
https://admin.microsoft.com/Adminportal/Home?#/licenses
```

### Create Microsoft Defender for Endpoint Account
```
https://securitycenter.windows.com/onboarding2/start
or
https://endpoint.microsoft.com > Endpoint Security > Microsoft Defender for Endpoint > Configuring Microsoft Defender for Endpoint > Connect Microsoft Defender for Endpoint to Microsoft Intune in the Microsoft Defender Security Center
```

### Create Intune Instance
```
https://portal.atp.azure.com/tenantPortal

Join Windows Client to Azure download and execute onboarding package
```

### Download Setup Files and install ATP sensor on domain controller
```
Run as SYSTEM:
.\psexec.exe -i -s 'C:\Users\Administrator\Desktop\Azure ATP Sensor Setup\Azure ATP Sensor Setup.exe' NetFrameworkCommandLineArguments="/q" AccessKey="<key>"
https://techcommunity.microsoft.com/t5/microsoft-defender-for-identity/error-installing-atp-sensor-on-dc-2019-gives-an-0x800070643/m-p/3070769
```

### Integrate Microsoft Defender for Endpoint into Intune
```
https://portal.atp.azure.com > Microsoft Defender for Endpoint > Features has not been fully enabled. Enable integration on the Microsoft Defender for Endpoint Endpoin Portal > Enable Settings
```

