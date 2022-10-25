### Requirements
```
- Main method and class it belongs to, needs to be public

namespace NameSpaceName
{
    public class Program
    {
        public static void Main()
        {

```

### Create binary 
```
$fp = "<fullPathToExe>"
$file = [System.IO.File]::ReadAllBytes($fp);
$Base = [System.Convert]::ToBase64String($file);
echo $Base
```

### Execute in memory
```
$blob = "<base64Binary>"
$load = [System.Reflection.Assembly]::Load([Convert]::FromBase64String($blob));
[NameSpaceName.Program]::Main()
```

