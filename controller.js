// controller.js
//
// Advances the slide when the right arrow is pressed
// Press Escape to return to the first slide

var i = 0;
function init() {
	img = document.getElementById("image");
	img.src = images[0];
}

function advance(e) {
	var RT  = 39;
	var LT  = 37;
	var ESC = 27;

	if(e.keyCode === RT && i < images.length)
		i += 1;
	else if(e.keyCode === LT && i > 0)
		i -= 1;
	else if(e.keyCode === ESC)
		i = 0;

	if(i < images.length) {
		img = document.getElementById("image");
		img.src = images[i];
	}
}
