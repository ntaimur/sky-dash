x += move_direc;

if (x >= room_width - 50) {
	move_direc = -2;	
} else if (x <= 50) {
	move_direc = 2;	
}

if place_meeting(x, y + 5, obj_player) {
    if global.ship_pwr {

		audio_play_sound(sd_ship_destroy, 1, false);
				
		instance_destroy();
	}
}

if global.game_over {
	instance_destroy();
}