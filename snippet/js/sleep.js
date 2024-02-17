function sleep(milliseconds)
{
    var start = new Date().getTime();

    for (var i = 0; i < 1e7; i++)
    {
        if ((new Date().getTime() - start) > milliseconds)
            break;
    }
}

sleep(2000);                                               
alert(1);

