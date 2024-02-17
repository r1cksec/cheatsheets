function httpGet(url)
{
    var xmlHttp = new XMLHttpRequest();
    // false for synchronous request
    xmlHttp.open("GET", url, false);
    xmlHttp.send(null);
    return xmlHttp.responseText;
}

httpGet("<url>/1")
httpGet("<url>/2")
httpGet("<url>/3")

