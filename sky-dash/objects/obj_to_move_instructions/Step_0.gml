if (distance_to_object(obj_player) > 200) {
	image_alpha -= 0.01;	
}

if image_alpha <= 0 {
	instance_destroy();
}