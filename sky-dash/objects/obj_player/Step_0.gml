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

if global.jet_powerup {  // Stopping the bug that launches player with jetpack
	jump_speed = -2;	
}

else {
	jump_speed = -15;		
}

// ************ MOVEMENT ************


// Gravity & Jumping

	

	if (is_grounded) {
		if (!audio_is_playing(sd_jump)) {
		audio_play_sound(sd_jump, 1, false);
		}
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
	audio_play_sound(sd_hit, 1, false);
	room_restart()
	y = cp_y
	x = cp_x
}

if (x < 0) {
	audio_play_sound(sd_warp, 1, false);
    x = room_width;
	sprite_index = spr_appearing;
    alarm[0] = 15;
	
}


if (x > room_width) {
	audio_play_sound(sd_warp, 1, false);
    x = 0;
	sprite_index = spr_appearing;
    alarm[0] = 15;
}




// ************ SPRITE FACING LEFT/RIGHT ************




if (alarm[0] <= 0) { // Only set movement sprites if NOT teleporting
    if keyboard_check(vk_left) {
        image_xscale = -1;
    } else if keyboard_check(vk_right) {
        image_xscale = 1;
    } 
}

if (alarm[0] <= 0 && !global.jet_powerup && !global.ship_pwr) { // Only set movement sprites if NOT teleporting
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

if global.gravity_power_active {


}

if global.jet_powerup {
	gravity_force = -0.05;
	if (!audio_is_playing(sd_jetpack)) {
    audio_play_sound(sd_jetpack, 1, false);
} 
}

if global.ship_pwr {
	move_y = -10;
	if (!audio_is_playing(sd_jetpack)) {
    audio_play_sound(sd_jetpack, 1, false);
	}
}

// ************ CHECKPOINTS ************

if (global.checkpoint_level == 1 && y > 14000) {
	audio_play_sound(sd_hit, 1, false);
	room_restart();
	x = cp_x;
	y = cp_y;
}	

if (global.checkpoint_level == 2 && y > 8400) {
	audio_play_sound(sd_hit, 1, false);
	room_restart();
	x = cp_x;
	y = cp_y;
}	

if (global.checkpoint_level == 2 && y > 8400) {
	audio_play_sound(sd_hit, 1, false);
	room_restart();
	x = cp_x;
	y = cp_y;
}	

if (global.checkpoint_level == 3 && y > 4444) {
	audio_play_sound(sd_hit, 1, false);
	room_restart();
	x = cp_x;
	y = cp_y;
}	


if (global.checkpoint_level == 4) {
	global.game_over = true;	
	
}


// Game Pause

if global.is_paused { // Game pause mechanic.
	move_y = 0;
	move_x = 0;
	gravity_force = 0;
	move_speed = 0;
	
} else {
	move_speed = 2.5;
	if global.gravity_power_active {
		gravity_force = 0.25;
	} else if (global.jet_powerup)  {
		gravity_force = -0.05;
	}	else {
		gravity_force = 0.5;	
	}
}
      
	  
if global.test {
	game_restart();
}
	  
	  
// SFX

if (distance_to_object(obj_bird) < 250) {
	if (!audio_is_playing(sd_bird)) {
    audio_play_sound(sd_bird, 1, false);
	}
}


if (distance_to_object(obj_comet || obj_asteroid) < 250) {
	if (!audio_is_playing(sd_comet)) {
    audio_play_sound(sd_comet, 1, false);
	}
}
	  
if (distance_to_object(obj_ground_moving) < 250) {
	if (!audio_is_playing(sd_jetpack)) {
    audio_play_sound(sd_jetpack, 1, false);
	}
}
