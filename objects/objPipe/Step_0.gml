if image_index >= 5
{
	if !instance_exists(objPlayer)
	{
		instance_create_layer(180, 77, "Instances", objPlayer);
		objPlayer.depth = objPipe.depth + 1;
		objPlayer.image_xscale = 0.3;
		objPlayer.vMovement = 10;
		
		alarm[0] = 20;
	}
	
	if !endScaling { objPlayer.image_xscale = lerp(objPlayer.image_xscale, 1, 0.1); }
}

if image_index > 7 { image_speed = 0; }