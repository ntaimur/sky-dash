audio_play_sound(sd_mouse_hover, 1, false);

if global.is_paused {
	global.is_paused = false;	
} else {
	global.is_paused = true;	
}