stri = "string"

' using filesystemobject
Set fileSystemObj = CreateObject("Scripting.FileSystemObject")
Set objFile = fileSystemObj.CreateTextFile("test.txt", True)
objFile.Write stri & vbCrLf
objFile.Close

' using textstream (2 for writing)
Set textStreamObj = CreateObject("Scripting.FileSystemObject").OpenTextFile("test.txt", 2, True)
textStreamObj.WriteLine stri
textStreamObj.Close
' release reference
Set textStreamObj = Nothing

