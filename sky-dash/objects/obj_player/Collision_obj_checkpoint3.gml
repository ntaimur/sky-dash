if (!audio_is_playing(sd_checkpoint)) {
    audio_play_sound(sd_checkpoint, 1, false);
}

audio_stop_sound(sd_level3)
audio_play_sound(sd_level4, 1, true);


global.checkpoint_level = 3;

show_checkpoint = true;	
cp_x = 127; 
cp_y = 4046;

