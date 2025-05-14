// ************ INPUT ************

move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
move_x *= move_speed;
var jump_pressed = keyboard_check_pressed(vk_up);	

// ************ COLLISION CHECKS ************

// Check if standing on the ground
is_grounded = place_meeting(x, y+2, ground_object);




// This is for the bug when the player sticks to the ceiling.
if place_meeting(x, y-2, obj_solid) { // If hitting a ceiling
    move_y = 0; // Stop upward movement
}



// ************ MOVEMENT ************


// Gravity & Jumping
	if (is_grounded && jump_pressed) {
		move_y = jump_speed;
	}

	else if (!is_grounded && move_y < max_fall_speed) { // Keep a reasonable fall speed
		move_y += gravity_force; // Gravity pulls down
		
	}
	



// Fixing player slowed down in air

if !is_grounded {
    move_x *= 2; // 
}


// ************ MOVE THE PLAYER ************

move_and_collide(move_x, move_y, obj_solid);


// ************ OUTSIDE ROOM ************

if (x < -20 || x > room_width + 20 || y > room_height + 500 || y < -500) {
	room_restart(); // Restart the room if outside the boundaries we set
}


// ************ SPRITE FACING LEFT/RIGHT ************

if keyboard_check(vk_left) {
    image_xscale = -1; // Face left
    sprite_index = spr_player_walk; // Walking sprite
} else if keyboard_check(vk_right) {
    image_xscale = 1; // Face right
    sprite_index = spr_player_walk; // Walking sprite
} else {
    sprite_index = spr_player_idle; // Idle sprite when no key is pressed
}