if (keyboard_check_pressed(vk_down)) {
    time_subtract(5);
	audio_play_sound(osu_hit_sound,1,false)
    sprite_index = down_key_pressed;
	parent_task.current_key = 0; 
    instance_destroy();
}
if (timer == 0)
{
	parent_task.current_key = 0; 
	instance_destroy();
}