### Get permissions of current user
```
curl https://<rhost>/rest/api/2/mypermissions | jq | grep -iB6 '"havePermission": true'
```

### Check for sign up possibility
```
https://<rhost>/servicedesk/customer/user/login  
```

### Check for publicly available filters and dashboards
```
/secure/popups/UserPickerBrowser.jspa
/secure/ManageFilters.jspa?filterView=popular
/secure/ConfigurePortalPages!default.jspa?view=popular
/rest/project-templates/1.0/createshared
```

### Once access is granted - use for search to prevent leaving search suggestions
```
https://<rhosts>/issues/?jql=summary%20~%20%22*<searchKey>*%22%20OR%20description%20~%20%22*<searchKey>*%22%20ORDER%20BY%20lastViewed%20DESC  
```

### Google Dorks
```
site:*.<targetDomain> intext:"Atlassian Jira Project Management Software"
site:*.<targetDomain> intext:"Welcome to JIRA"
site:*.<targetDomain> intitle:"Log In JIRA"
```

### If misconfigured a registration may be possible
```
<company>.atlassian.net
```

