
if !global.ship_pwr {
	room_restart();
				
	audio_play_sound(sd_hit, 1, false);
				
	x = cp_x;
	y = cp_y;
}