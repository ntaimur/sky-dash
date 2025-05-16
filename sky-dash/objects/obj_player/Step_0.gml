// ************ INPUT ************

move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
move_x *= move_speed;

// ************ COLLISION CHECKS ************

// Check if standing on the ground
is_grounded = place_meeting(x, y+2, ground_object);




// This is for the bug when the player sticks to the ceiling.
if place_meeting(x, y-2, obj_solid) { // If hitting a ceiling
    move_y = 0; // Stop upward movement
}



// ************ MOVEMENT ************


// Gravity & Jumping
	
	if (place_meeting(x, y+2, ground_object)) {
    move_y = jump_speed; // Auto-jump when landing
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


if (y > room_height + 100) {
	room_restart()
}

if (x < 0) {
    x = room_width;
	sprite_index = spr_appearing;
    alarm[0] = 15;
	
}


if (x > room_width) {
    x = 0;
	sprite_index = spr_appearing;
    alarm[0] = 15;
}




// ************ SPRITE FACING LEFT/RIGHT ************




if alarm[0] <= 0 { // Only set movement sprites if NOT teleporting
    if keyboard_check(vk_left) {
        image_xscale = -1;
    } else if keyboard_check(vk_right) {
        image_xscale = 1;
    } 
}

if alarm[0] <= 0 { // Only set movement sprites if NOT teleporting
	if (move_y >= 0) {
		sprite_index = spr_player_fall
	}
	if (move_y <= 0) {
	sprite_index = spr_player_jump
	}
}





global.game_score = round(max(global.game_score, room_height - y));

if !global.gravity_power_active {
	gravity_force = 0.5;	
}



