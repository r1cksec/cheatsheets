Set objFSO=CreateObject("Scripting.FileSystemObject")
outFile="test.txt"
Set objFile = objFSO.CreateTextFile(outFile,True)
stri = "string"
objFile.Write stri & vbCrLf
objFile.Close

