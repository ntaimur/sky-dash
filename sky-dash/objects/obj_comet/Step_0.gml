x += move_direc;

if (x >= room_width + 600) {
	move_direc = -6;
	image_xscale = 1;
} else if (x <= -600) {
	move_direc = 6;
	image_xscale = -1;
}