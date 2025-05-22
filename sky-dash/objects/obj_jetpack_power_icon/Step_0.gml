if global.jet_powerup {
	icon_alpha -= 0.004;
	
	}
	
if (icon_alpha <= 0) {
	global.jet_powerup = false;
	icon_alpha = 1
	
	
}