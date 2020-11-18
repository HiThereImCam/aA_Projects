
/**
 * 
 * @param {Array} pos 
 * @param {Array} vel 
 * @param {integer} radius 
 * @param {Hex} color
 * 
 * Constructor for Moving Object 
 */
function MovingObject(obj){//(pos, vel, radius, color){
    this.pos = obj.pos;
    this.vel = obj.vel;
    this.radius = obj.radius;
    this.color = obj.color;
}

// ctx = context

MovingObject.prototype.draw = function(ctx){
    ctx.fillStyle = this.color;

    ctx.beginPath();
    ctx.arc(
        this.pos[0],
        this.pos[1],
        this.radius,
        0,
        2 * Math.PI,
        false
    )
    
    ctx.fill();
}


MovingObject.prototype.move = function(){
    let [dx,dy] = this.vel;
    let [x,y] = this.pos;
    this.pos = [x + dx, y + dy];
}

module.exports = MovingObject;