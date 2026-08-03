
if (osu_active == true) {
    
    // 1. Shrink the timing ring downward over time
    osu_ring_scale -= 0.03; // Lower value = slower, easier circle shrink rate
    
    // If the ring shrinks to absolute zero without input, reset it to try again
    if (osu_ring_scale <= 0) {
        osu_ring_scale = 3.0; 
    }

    // 2. Track Strike Input (Spacebar or Left Click)
    if (keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left)) {
		
		audio_play_sound(osu_hit_sound,1,false)
        
        // CHECK ACCURACY: If the ring scale is resting close to the core ring size (1.0)
        if (osu_ring_scale >= 1.0 - osu_success_margin && osu_ring_scale <= 1.0 + osu_success_margin) {
            
            // PERFECT HIT! Shut off minigame loop and advance room
            osu_active = false;
			time_add(20);
            room_goto_next(); 
            
        } else {
			audio_play_sound(osu_hit_sound,1,false)
            // MISSED HIT: Penalize player and bounce ring back out to try again
            osu_ring_scale = 3.0; 
            time_subtract(10); // Keep your custom time penalty hook here
        }
    }
}
