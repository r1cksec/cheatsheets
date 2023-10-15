<p id="cursor">|</p>
<script>
    var cursor = true;

    var speed = 250;

	setInterval(() => 
	{
        if(cursor) 
		{
            document.getElementById('cursor').style.opacity = 0;
		    cursor = false;
        }
		else 
		{
            document.getElementById('cursor').style.opacity = 1;
            cursor = true;
        }
    }, speed);
</script>

