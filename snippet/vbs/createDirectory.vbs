' create a new folder
Set filesytemObj = CreateObject("Scripting.FileSystemObject")
filesytemObj.CreateFolder "C:\dir"

' or
set shellObj = CreateObject("Shell.Application")
set folder = shellObj.NameSpace("C:\")
folder.NewFolder "dir"

