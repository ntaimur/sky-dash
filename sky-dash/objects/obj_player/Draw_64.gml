
draw_set_alpha(checkpoint_alpha)

if  show_checkpoint {
	draw_sprite(spr_checkpoint_text, 0, 250, 50);
	checkpoint_alpha -= 0.01;
}

if (checkpoint_alpha <= 0) {
	show_checkpoint = false;
	checkpoint_alpha = 1;
}

if global.game_over {
	draw_set_alpha(end_alpha)
	end_alpha =+ 0.0001;
	draw_sprite(spr_room_cover, 0, 0, 0)
}