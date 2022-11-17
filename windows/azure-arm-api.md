### List subscriptions (accessible resources) using access token
```
$Token = '<eyJ0eX...>'
$Url= 'https://management.azure.com/subscriptions?api-version=2020-01-01'
$RequestParams = @{
    Method = 'GET'
    Uri = $Url
    Headers = @{
        'Authorization' = "Bearer $Token"
    }
}
(Invoke-RestMethod @RequestParams).value
```

### Get permissions for given subscription
```
$Token = '<eyJ0eX...>'
$Url = 'https://management.azure.com/subscriptions/<subscriptionId>/<subscriptionPath>/providers/Microsoft.Authorization/permissions?api-version=2015-07-01'

$RequestParams = @{
    Method = 'GET'
    Uri = $Url
    Headers = @{
        'Authorization' = "Bearer $Token"
    }
}
(Invoke-RestMethod @RequestParams).value
```

### List all Enterprise Applications using Graph API
```
$Token = '<eyJ0eX...>'
$Url = ' https://graph.microsoft.com/v1.0/applications'
$RequestParams = @{
    Method = 'GET'
    Uri = $Url
    Headers = @{
        'Authorization' = "Bearer $Token"
    }
}
(Invoke-RestMethod @RequestParams).value
```

### Get all user using access token
```
$Token = '<eyJ0eX...>'
$Url= 'https://graph.microsoft.com/v1.0/users'
$RequestParams = @{
    Method = 'GET'
    Uri = $Url
    Headers = @{
        'Authorization' = "Bearer $Token"
    }
}
(Invoke-RestMethod @RequestParams).value
```

### Get Membeship of
```
$Token = (Get-AzAccessToken -ResourceUrl https://graph.microsoft.com).Token
$Url= 'https://graph.microsoft.com/v1.0/users/<userName>@<tenant>.onmicrosoft.com/memberOf'
$RequestParams = @{
    Method = 'GET'
    Uri = $Url
    Headers = @{
        'Authorization' = "Bearer $Token"
    }
}
(Invoke-RestMethod @RequestParams).value
```

### Get nonce for Pass the primary token
```
$TenantId = "<id>"
$URL = "https://login.microsoftonline.com/$TenantId/oauth2/token"

$Params = @{
    "URI" = $URL
    "Method" = "POST"
}

$Body = @{
    "grant_type" = "srv_challenge"
}

$Result = Invoke-RestMethod @Params -UseBasicParsing -Body $Body
```

### Retrieve user data of virtual machine
```
$UserData = Invoke-RestMethod -Headers @{"Metadata"="true"} -Method GET -Uri "http://<rhost>/metadata/instance/compute/userData?api-version=2021-01-01&format=text"
[System.Text.Encoding]::UTF8.GetString([Convert]::FromBase64String($UserData))
```
