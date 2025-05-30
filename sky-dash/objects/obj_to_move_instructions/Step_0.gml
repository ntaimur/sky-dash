
if (distance_to_object(obj_player) < 200) {
	start_fade = true;
}

if image_alpha <= 0 {
	instance_destroy();
}

if start_fade {
	image_alpha -= 0.005;	
}