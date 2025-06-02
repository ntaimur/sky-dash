if (!audio_is_playing(sd_checkpoint)) {
    audio_play_sound(sd_checkpoint, 1, false);
}

audio_stop_sound(sd_level2)
audio_play_sound(sd_level3, 1, true);



global.checkpoint_level = 2;

show_checkpoint = true;	
cp_x = 125; 
cp_y = 8125;

