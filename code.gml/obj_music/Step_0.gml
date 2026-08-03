if (instance_exists(Obj_timer)) 
{
    if (Obj_timer.t_min == 0 && Obj_timer.t_sec == 0 && audio_is_playing(music_track)) 
    {
       audio_stop_sound(music_track);
    }
}


beat_timer -= 1;


if (beat_timer <= 0) {
    shake_force = 5;          
    beat_timer = beat_interval; 
}


shake_force = lerp(shake_force, 0, 0.1);

if (shake_force > 0.5) {
    var cx = random_range(-shake_force, shake_force);
    var cy = random_range(-shake_force, shake_force);
    camera_set_view_pos(view_camera[0], cx, cy);
} else {
    camera_set_view_pos(view_camera[0], 0, 0);
}




