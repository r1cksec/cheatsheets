base64codes = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

Public Function Base64Decode(ByVal strIn)
    Dim strOut, n, k, bit, val, old
    Dim padding, i

    ' padding
    padding = 0
    For i = Len(strIn) To 1 Step -1
        If Mid(strIn, i, 1) = "=" Then
            padding = padding + 1
        Else
            Exit For
        End If
    Next

    For n = 1 To Len(strIn) - padding
        k = ((n - 1) And 3)
        bit = 4 ^ k
        val = InStr(base64codes, Mid(strIn, n, 1)) - 1
        If k > 0 Then
            strOut = strOut & Chr(((old * bit + Int((val * bit) / 64)) And 255))
        End If
        old = val
    Next

    Base64Decode = strOut
End Function

MsgBox(Base64Decode("dGVzdAo="))

