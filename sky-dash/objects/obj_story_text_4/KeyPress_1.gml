




if (global.story_level == 3) {
	audio_stop_sound(sd_intro)
	if (!audio_is_playing(sd_level1)) {
    audio_play_sound(sd_level1, 1, true);
	}

	if (!audio_is_playing(sd_realgame_start)) {
    audio_play_sound(sd_realgame_start, 1, false);
	}
	var inst = instance_create_depth(0, 0, -9999, obj_transition)
	inst.target_rm = rm_level_1;

}



