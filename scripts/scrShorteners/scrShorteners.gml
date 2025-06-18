function verticalChecks()
{
	if vMovement == 0 { grounded = !place_free(x, y+2); return; } //No vertical movement
	if place_free(x, y+vMovement) { grounded = false; return; } //In the air
	if vMovement < 0 { vMovement = 0; return; } //Bumped head
	
	//Landing on ground
	while place_free(x, y+2) { y++; }
	grounded = true;
	vMovement = 0;
	
	if grounded
	{	
		if place_free(x, y+2) { y++; }
		if !place_free(x, y+1) { y--; }
	}
}

function newScreenVertices(alpha)
{
	vertex_format_begin();
	vertex_format_add_color();
	vertex_format_add_position();
	vertex_format_add_texcoord();
	var vFormat = vertex_format_end();

	var vBuffer = vertex_create_buffer();
	vertex_begin(vBuffer, vFormat);

	for (var i = 0; i <= 683; i++)
	{
		vertex_color(vBuffer, c_white, alpha);
		vertex_position(vBuffer, i, 0);
		vertex_texcoord(vBuffer, i/683, 0);
	
		vertex_color(vBuffer, c_white, alpha);
		vertex_position(vBuffer, i, 384);
		vertex_texcoord(vBuffer, i/683, 1);
	}

	vertex_end(vBuffer);
	
	return vBuffer;
}