sprite_index = spr_start_button2;

if (!audio_is_playing(sd_mouse_hover)) {
    audio_play_sound(sd_mouse_hover, 1, false);
}