if (!audio_is_playing(sd_realgame_start)) {
    audio_play_sound(sd_realgame_start, 1, false);
}
	
var inst = instance_create_depth(0, 0, -9999, obj_transition)
inst.target_rm = rm_loading;

