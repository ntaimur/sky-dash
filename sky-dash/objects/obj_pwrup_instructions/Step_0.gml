
if (distance_to_object(obj_player) < 100) {
	start_fade = true;
}

if image_alpha <= 0 {
	instance_destroy();
}

if start_fade {
	image_alpha -= 0.005	
}

if global.game_over {
	instance_destroy();
}