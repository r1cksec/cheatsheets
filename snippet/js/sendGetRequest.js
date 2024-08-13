async function sendGetRequest()
{
    const url = 'http://<url>';

    const response = await fetch(url, {
        method: 'GET',
    });
    
    if (!response.ok)
    {
        throw new Error(`Error: ${response.statusText}`);
    }

    return await response.json();
}

