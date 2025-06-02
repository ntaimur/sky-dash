if (keyboard_check_pressed(vk_f11)) {
    window_set_fullscreen(!window_get_fullscreen()); // Toggle fullscreen
}

if global.game_over {
	fade_alpha += 0.001;	
}

if (fade_alpha >= 1) {
	global.test = true;
	
}