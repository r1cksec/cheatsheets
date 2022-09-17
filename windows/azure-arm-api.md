### List subscription using access token
```
$Token = '<token>'
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

### Get all user using access token
```
$Token = '<token>'
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

