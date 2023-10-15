if (navigator.geolocation)
{
    navigator.geolocation.getCurrentPosition(position =>
    {
        const lat = position.coords.latitude;
        const long = position.coords.longitude;
        console.log('Latitude: ', lat);
        console.log('Longitude: ', long);               
    }
    ,error => 
    {
        console.log('Access denied by user');
    });
}

