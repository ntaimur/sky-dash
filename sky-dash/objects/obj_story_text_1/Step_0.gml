if (image_alpha != 1) {
	image_alpha += 0.0025;
}

if (image_alpha >= 0.8 && global.story_level == 0) {
	global.story_level = 1;	
}