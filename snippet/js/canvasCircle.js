canvas = document.getElementById("canvas");
var ctx = canvas.getContext("2d");

canvas.width = window.innerWidth;
canvas.height = window.innerHeight;

ctx.beginPath();

middleX = 500;
middleY = 500;                                        

ctx.arc(middleX / 2, middleY / 2, 75, 0, 2 * Math.PI);
ctx.fillStyle = "#000000";
ctx.fill();
ctx.strokeStyle= "#ffffff";
ctx.lineWidth = 5;
ctx.stroke();

