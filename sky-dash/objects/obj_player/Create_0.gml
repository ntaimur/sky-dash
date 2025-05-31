// ************ MOVEMENT VARIABLES ************

move_speed = 2.5;				// Left/Right speed
jump_speed = -15;				// Upward jump speed
gravity_force = 0.5;			// Gravity Strength
max_fall_speed = 10;			// Max downward speed so you can still see the object
move_x = 0;						// Horizontal movement
move_y = 0;						// Vertical movement


// ************ STATE VARIABLES ************

is_grounded = false;			// On ground?






// ************ OBJECT REFERENCES ************

ground_object = obj_solid;		



// ************ GAME STUFF ************

global.game_score = 0
global.checkpoint_level = 0;
show_checkpoint = false;
checkpoint_alpha = 1;
cp_x = 156;
cp_y = 19936;



