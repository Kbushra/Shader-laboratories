depth = -9999999;

if keyboard_check_pressed(ord("1")) { shader_reset(); exit; }

for (var i = 2; i < shaderCount + 2; i++)
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

if shader_current() == shWavy
{	
	shader_set_uniform_f(shader_get_uniform(shWavy, "intensity"), 0.1);
	shader_set_uniform_f(shader_get_uniform(shWavy, "spd"), 1);
	shader_set_uniform_f(shader_get_uniform(shWavy, "offset"), waveOffset);
	waveOffset += 0.05;
}
else { waveOffset = 0; }

if shader_current() == shSplit
{
	shader_set_uniform_f(shader_get_uniform(shSplit, "magnifier"), splitMagnifier);
	splitMagnifier += 0.01;
}
else { splitMagnifier = 0; }