<canvas id="canvas">
</canvas>

<script>
var dragon = new Image();
var background = new Image();
background.src = "file1.png";
dragon.src = "file2.png";

var canvasXSize = 500;
var canvasYSize = 200;
var scale = 0.75;
var y = -4.5;

// change of rate for background
var dx = 0.75;

// change of rate for image1
var image1Changex = 2.5;
// change of rate y for image1
var image1Changey = 5;

var posImage1X = 0;
var posImage1Y = 0;

var clearX;
var clearY;
var ctx;

background.onload = function()
{
    // get Canvas Element
    ctx = document.getElementById('canvas').getContext('2d');

    // set Refresh Rate
    var speed = 30;
    return setInterval(draw, speed);
}

function draw()
{
    var image1Width = 90;
    var image1Height = 70;

    // clear Canvas
    ctx.clearRect(0, 0, clearX, clearY);
    ctx.drawImage(background, dx, 0);

    // amount to move
    dx--;

    if (dx < -canvasXSize + 310)
        dx = 0;

    ctx.drawImage(dragon, posImage1X, posImage1Y, image1Width, image1Height);

    // change position with every iteration
    posImage1Y = posImage1Y + image1Changey;
    posImage1X = posImage1X + image1Changex;

    // change direction of fly, when hitting top or bottom
    if (posImage1Y >= canvasYSize - image1Height)
        image1Changey = -image1Changey;
    else if (posImage1Y <= 0)
        image1Changey = -image1Changey;

    // dragon hit right wall
    if (posImage1X > canvasXSize - image1Width)
        posImage1X = 0;
}
</script>

