if global.gravity_power_active {
	icon_alpha -= 0.002;
	
	}
	
if (icon_alpha <= 0) {
	global.gravity_power_active = false;
	icon_alpha = 1
	
	
}