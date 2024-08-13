function encodeBase64(input)
{
    const utf8Bytes = new TextEncoder().encode(input);
    let binaryString = '';
    utf8Bytes.forEach(byte => binaryString += String.fromCharCode(byte));
    return btoa(binaryString);
}


function decodeBase64(base64Str)
{
    const binaryString = atob(base64Str);
    const len = binaryString.length;
    const bytes = new Uint8Array(len);

    for (let i = 0; i < len; i++)
    {
        bytes[i] = binaryString.charCodeAt(i);
    }

    return new TextDecoder().decode(bytes);
}

