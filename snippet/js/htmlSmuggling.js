// security endpoints will only detect HTML and Javascript as MIME type
function base64ToArrayBuffer(base64) 
{
    var binaryString = window.atob(base64);
    var len = binaryString.length;
    var bytes = new Uint8Array( len );
    for (var i = 0; i < len; i++) 
    { 
      bytes[i] = binaryString.charCodeAt(i); 
    }
    
    return bytes.buffer;
}

var file ='<fileAsBase64>';
var data = base64ToArrayBuffer(file);
var blob = new Blob([data], {type: 'octet/stream'});
var fileName = '<file.exe>';

if (window.navigator.msSaveOrOpenBlob) 
{
    window.navigator.msSaveBlob(blob,fileName);
}
else 
{
    var a = document.createElement('a');
    document.body.appendChild(a);
    a.style = 'display: none';
    var url = window.URL.createObjectURL(blob);
    a.href = url;
    a.download = fileName;
    a.click();
    window.URL.revokeObjectURL(url);
}

