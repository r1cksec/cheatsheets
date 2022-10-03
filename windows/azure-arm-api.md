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

