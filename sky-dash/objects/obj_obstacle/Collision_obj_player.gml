





if global.ship_pwr {
	instance_destroy();
	audio_play_sound(sd_ship_destroy, 1, false);
				
}

if global.game_over {
	instance_destroy();
}