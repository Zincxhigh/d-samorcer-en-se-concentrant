if (t_min == 0 && t_sec == 0 && is_dead == false) {
	
	audio_play_sound(death01_566464,1,false)
    is_dead = true;      
    room_goto(death);    
    
}
if (t_min == 2 && t_sec >= 0 && is_alive == false) {
	
	audio_play_sound(death01_566464,1,false)
    is_alive = true;      
    room_goto(victory);    
    
}