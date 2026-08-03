if (keyboard_check_pressed(vk_right)) {
    time_add(13);
	audio_play_sound(osu_hit_sound,1,false)
    spride_index = right_key_pressed;
	parent_task.current_key = 0; 
    instance_destroy();
}
if (timer == 0)
{
	time_subtract(5);
	parent_task.current_key = 0; 
	instance_destroy();
}
	
	