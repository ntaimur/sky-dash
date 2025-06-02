if (!audio_is_playing(sd_checkpoint)) {
    audio_play_sound(sd_checkpoint, 1, false);
}

audio_stop_sound(sd_level1)
audio_play_sound(sd_level2, 1, true);

global.checkpoint_level = 1;

show_checkpoint = true;	
cp_x = 158; 
cp_y = 13726;

