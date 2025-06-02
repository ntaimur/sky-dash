
if !global.jet_powerup && !global.ship_pwr {
	sprite_index = spr_player_walk;
	
}

if global.jet_powerup {
	sprite_index = spr_player_jetpack;	
}

if global.ship_pwr {
	sprite_index = spr_spaceship_powerup;	
}