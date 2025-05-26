if (image_alpha != 1 && global.story_level == 2) {
	image_alpha += 0.0025;
}

if (image_alpha >= 0.8 && global.story_level == 2) {
	global.story_level = 3;	
}