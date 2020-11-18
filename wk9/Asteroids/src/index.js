const MovingObject = require("./moving_object.js");
const Asteroid = require("./asteroid");


window.MovingObject = MovingObject;
window.Asteroid = Asteroid;

window.addEventListener('DOMContextLoaded', function() {
    let canvas = document.getElementById("game-canvas")
    this.context = canvas.getContext("2d")
})

console.log("Webpack is working!")