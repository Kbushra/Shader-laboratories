if keyboard_check_pressed(ord("1")) { shader_reset(); exit; }

for (var i = 2; i <= 3; i++)
{ if keyboard_check_pressed(ord(string(i))) { shader_set(global.shaders[i-2]); } }

with (objPlayer) { if !place_free(x, y) { shader_reset(); exit; } }

if shader_current() == shShifted
{
	shader_set_uniform_f(shader_get_uniform(shShifted, "shift"), shift);
	
	shift += 0.002 * shiftDir;
	if shift >= 1 { shiftDir = -1; }
	if shift <= -1 { shiftDir = 1; }
}
else { shift = 0; shiftDir = 1; }