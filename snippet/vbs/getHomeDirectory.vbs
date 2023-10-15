Const ssfPROFILE = &H28
Set oShell = CreateObject("Shell.Application")
homeDir = oShell.NameSpace(ssfPROFILE).Self.Path

