if grounded
{	
	if place_free(x, y+2) { y++; }
	if !place_free(x, y+1) { y--; }
}

if !place_free(x+1, y) { x--; }
if !place_free(x-1, y) { x++; }

verticalChecks();

if !visible { exit; }

var spd = 3;
hMovement = lerp(hMovement, (global.r - global.l)*spd, 0.2);
	
if hMovement != 0 && place_free(x+hMovement, y) { x += hMovement; }
	
if global.jump && grounded { vMovement = -15; grounded = false; }