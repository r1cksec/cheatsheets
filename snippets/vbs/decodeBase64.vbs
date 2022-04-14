base64codes = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

Public Function Base64Decode(byVal strIn)
    Dim strOut,old
    For n=1 to Len(strIn)
        k = ((n-1) And 3)
        bit=4^k
        val = InStr(base64codes,Mid(strIn,n,1))-1
        if k>0 then strOut=strOut+Chr(((old*bit+Int((val*bit)/64)) And 255))
        old=val
    Next
    Base64Decode = strOut
End Function

msgbox(Base64Decode("dGVzdAo="))

