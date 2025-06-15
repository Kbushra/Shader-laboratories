if color == "random" { color = choose("red", "blue", "yellow", "green", "purple", "cyan"); }
show_debug_message(color);

switch color
{
	case "red": image_blend = $FF2F14; break;
	case "blue": image_blend = $2848FF; break;
	case "yellow": image_blend = $D9FF32; break;
	case "green": image_blend = $51FF91; break;
	case "purple": image_blend = $C64CFF; break;
	case "cyan": image_blend = $47C7FF; break;
}