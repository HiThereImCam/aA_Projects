/*
 * ATTENTION: The "eval" devtool has been used (maybe by default in mode: "development").
 * This devtool is not neither made for production nor for readable output files.
 * It uses "eval()" calls to create a separate source file in the browser devtools.
 * If you are trying to read the output file, select a different devtool (https://webpack.js.org/configuration/devtool/)
 * or disable the default devtool with "devtool: false".
 * If you are looking for production-ready output files, see mode: "production" (https://webpack.js.org/configuration/mode/).
 */
/******/ (() => { // webpackBootstrap
/******/ 	var __webpack_modules__ = ({

/***/ "./src/asteroid.js":
/*!*************************!*\
  !*** ./src/asteroid.js ***!
  \*************************/
/*! unknown exports (runtime-defined) */
/*! runtime requirements: module, __webpack_require__ */
/***/ ((module, __unused_webpack_exports, __webpack_require__) => {

eval("const MovingObject = __webpack_require__(/*! ./moving_object */ \"./src/moving_object.js\")\nconst Util = __webpack_require__(/*! ./util */ \"./src/util.js\")\n\n\n\n\nconst DEFAULTS = {\n    COLOR: \"green\",\n    RADIUS: 30,\n    SPEED: 3\n};\n\nfunction Asteroid(pos){\n    MovingObject.call(this, \n        { \n            pos: pos, \n            vel: Util.randomVec(DEFAULTS.SPEED), \n            color: DEFAULTS.COLOR, \n            radius: DEFAULTS.RADIUS\n        }\n    )\n}\n\nUtil.inherits(Asteroid, MovingObject)\n\nmodule.exports = Asteroid\n\n//# sourceURL=webpack://asteroids/./src/asteroid.js?");

/***/ }),

/***/ "./src/moving_object.js":
/*!******************************!*\
  !*** ./src/moving_object.js ***!
  \******************************/
/*! unknown exports (runtime-defined) */
/*! runtime requirements: module */
/*! CommonJS bailout: module.exports is used directly at 43:0-14 */
/***/ ((module) => {

eval("\n/**\n * \n * @param {Array} pos \n * @param {Array} vel \n * @param {integer} radius \n * @param {Hex} color\n * \n * Constructor for Moving Object \n */\nfunction MovingObject(obj){//(pos, vel, radius, color){\n    this.pos = obj.pos;\n    this.vel = obj.vel;\n    this.radius = obj.radius;\n    this.color = obj.color;\n}\n\n// ctx = context\n\nMovingObject.prototype.draw = function(ctx){\n    ctx.fillStyle = this.color;\n\n    ctx.beginPath();\n    ctx.arc(\n        this.pos[0],\n        this.pos[1],\n        this.radius,\n        0,\n        2 * Math.PI,\n        false\n    )\n    \n    ctx.fill();\n}\n\n\nMovingObject.prototype.move = function(){\n    let [dx,dy] = this.vel;\n    let [x,y] = this.pos;\n    this.pos = [x + dx, y + dy];\n}\n\nmodule.exports = MovingObject;\n\n//# sourceURL=webpack://asteroids/./src/moving_object.js?");

/***/ }),

/***/ "./src/util.js":
/*!*********************!*\
  !*** ./src/util.js ***!
  \*********************/
/*! unknown exports (runtime-defined) */
/*! runtime requirements: module */
/***/ ((module) => {

eval("const Util = {\n    inherits(childClass,parentClass){\n        function Surrogate(){\n            Surrogate.prototype = parentClass.prototype;\n            childClass.prototype = new Surrogate();\n            childClass.prototype.constructor = childClass;\n        }\n    },\n\n    randomVec(length) {\n        const deg = 2 * Math.PI * Math.random();\n        return Util.scale([Math.sin(deg), Math.cos(deg)], length);\n    },\n\n    scale(vec, m) {\n        return [vec[0] * m, vec[1] * m];\n    }\n    \n}\n\nmodule.exports = Util\n\n//# sourceURL=webpack://asteroids/./src/util.js?");

/***/ })

/******/ 	});
/************************************************************************/
/******/ 	// The module cache
/******/ 	var __webpack_module_cache__ = {};
/******/ 	
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/ 		// Check if module is in cache
/******/ 		if(__webpack_module_cache__[moduleId]) {
/******/ 			return __webpack_module_cache__[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = __webpack_module_cache__[moduleId] = {
/******/ 			// no module.id needed
/******/ 			// no module.loaded needed
/******/ 			exports: {}
/******/ 		};
/******/ 	
/******/ 		// Execute the module function
/******/ 		__webpack_modules__[moduleId](module, module.exports, __webpack_require__);
/******/ 	
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/ 	
/************************************************************************/
(() => {
/*!**********************!*\
  !*** ./src/index.js ***!
  \**********************/
/*! unknown exports (runtime-defined) */
/*! runtime requirements: __webpack_require__ */
eval("const MovingObject = __webpack_require__(/*! ./moving_object.js */ \"./src/moving_object.js\");\nconst Asteroid = __webpack_require__(/*! ./asteroid */ \"./src/asteroid.js\");\n\n\nwindow.MovingObject = MovingObject;\nwindow.Asteroid = Asteroid;\n\nwindow.addEventListener('DOMContextLoaded', function() {\n    let canvas = document.getElementById(\"game-canvas\")\n    this.context = canvas.getContext(\"2d\")\n})\n\nconsole.log(\"Webpack is working!\")\n\n//# sourceURL=webpack://asteroids/./src/index.js?");
})();

/******/ })()
;