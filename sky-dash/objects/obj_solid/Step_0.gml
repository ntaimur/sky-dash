if place_meeting(x, y + 5, obj_player) {
    if global.ship_pwr {
		instance_destroy();
	}
}


if global.game_over {
	instance_destroy();
}