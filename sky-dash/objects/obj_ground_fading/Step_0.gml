if place_meeting(x, y-5, obj_player) { 
    is_fading = true; // Start the fading process
}

if is_fading {
    image_alpha -= fade_speed; // Gradually make it more transparent
    
    if image_alpha <= 0.05 { 
        instance_destroy(); // Remove the platform when fully faded
    }
}
