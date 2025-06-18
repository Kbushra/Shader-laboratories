if instance_exists(objPlayer) { depth = objPlayer.depth + 1; }

if place_meeting(x, y, objPlayer) && objPlayer.grounded
{
	room_goto(targRoom);
	objPlayer.x = targX;
	objPlayer.y = targY;
}