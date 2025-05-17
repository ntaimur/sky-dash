

draw_set_color(c_white); // Set text color

if (room != rm_start) {
	draw_text(10, 10, "Score: " + string(global.game_score)); // Draw at (10,10) in the top-left
}

