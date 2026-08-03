audio_stop_all();

music_track = audio_play_sound(_music_490598, 10, true);

var song_bpm = 120;
var beats_per_second = song_bpm / 60;

beat_interval = room_speed / beats_per_second; 
beat_timer = beat_interval;

shake_force = 0;



