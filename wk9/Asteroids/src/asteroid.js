const MovingObject = require('./moving_object')
const Util = require('./util')




const DEFAULTS = {
    COLOR: "green",
    RADIUS: 30,
    SPEED: 3
};

function Asteroid(pos){
    MovingObject.call(this, 
        { 
            pos: pos, 
            vel: Util.randomVec(DEFAULTS.SPEED), 
            color: DEFAULTS.COLOR, 
            radius: DEFAULTS.RADIUS
        }
    )
}

Util.inherits(Asteroid, MovingObject)

module.exports = Asteroid