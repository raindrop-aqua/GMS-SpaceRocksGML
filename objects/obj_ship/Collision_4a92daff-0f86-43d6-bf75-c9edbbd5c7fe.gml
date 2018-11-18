lives -= 1;

with (obj_game) {
	alarm[1] = room_speed;
}

if (audio_is_playing(snd_die_ship)) {
	audio_stop_sound(snd_die_ship);
}
audio_play_sound(snd_die_ship, 1, false)

instance_destroy();

repeat (10) {
	instance_create_layer(x, y, "Instances", obj_debris);
}