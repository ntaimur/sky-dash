

var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);


if (mx > 10 && mx < 60 && my > 10 && my < 60) { 
	real_sprite = spr_restart_icon_hover;
} else {
	real_sprite = spr_restart_icon;	
}