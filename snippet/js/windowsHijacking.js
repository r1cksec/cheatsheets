<script>
    var windowHijack = function(){
        window.open('https://legitPage', 'Legit');
        setTimeout(function(){window.open('https://notLegitPage', 'notLegit');},30000);
    }
</script>
<button onclick="windowHijack()">Open Window!</button>

