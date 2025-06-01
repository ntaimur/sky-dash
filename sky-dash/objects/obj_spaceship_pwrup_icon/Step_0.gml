if global.ship_pwr {
	icon_alpha -= 0.004;
	
	}
	
if (icon_alpha <= 0) {
	global.ship_pwr = false;
	icon_alpha = 1
	
	
}