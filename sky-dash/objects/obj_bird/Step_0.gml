x += move_direc;

if (x >= room_width + 50) {
	move_direc = -2;
	image_xscale = 1;
} else if (x <= -50) {
	move_direc = 2;
	image_xscale = -1;
}