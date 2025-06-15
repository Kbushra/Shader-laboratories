if keyboard_check_pressed(vk_f4) { window_set_fullscreen(!window_get_fullscreen()); }

if objTab.active
{
	global.u = false;
	global.l = false;
	global.r = false;
	global.jump = false;
	exit;
}

global.u = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up);
global.l = keyboard_check(ord("A")) || keyboard_check(vk_left);
global.r = keyboard_check(ord("D")) || keyboard_check(vk_right);
global.jump = keyboard_check_pressed(vk_space) || global.u;