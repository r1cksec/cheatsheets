Private Function decode64String(ByVal encodedData)
    Dim xmlDom, xmlNode, decoded, counter, decoded2
    Set xmlDom = CreateObject("Msxml2.DOMDocument.3.0")
    Set xmlNode = xmlDom.createElement("internalNode")
    xmlNode.DataType = "bin.base64"
    xmlNode.Text = encodedData
    decode64String = convertBinaryToString(xmlNode.NodeTypedValue)

    Exit Function
End Function

Function convertBinaryToString(binary)
    Dim binaryStream
    Set binaryStream = CreateObject("ADODB.Stream")

    binaryStream.Type = 1
    binaryStream.Open
    binaryStream.Write binary
    binaryStream.Position = 0
    binaryStream.Type = 2
    binaryStream.CharSet = "Windows-1252"

    convertBinaryToString = binaryStream.ReadText
    set binaryStream = Nothing
End Function

decode64String("dGVzdAo=")

