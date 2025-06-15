depth = -999999;

x = camera_get_view_x(view_camera[0]) + lerpOffset;
y = camera_get_view_y(view_camera[0]) + 192;

if keyboard_check_pressed(vk_tab) { active = !active; }

if active { lerpOffset = lerp(lerpOffset, 505.5, 0.1); }
else { lerpOffset = lerp(lerpOffset, 0, 0.1); }