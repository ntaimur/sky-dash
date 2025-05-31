x += move_direc;

if (x >= room_width - 50) {
	move_direc = -2;	
} else if (x <= 50) {
	move_direc = 2;	
}


