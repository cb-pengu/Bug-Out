/// @description

hspeed = 0;
oAnt.has_control = false;

if (alarm[0] == -1)
	alarm[0] = 1 * room_speed;
	
if (!audio_is_playing(sndDeath))
audio_play_sound(sndDeath, 10, false);
	
oAnt.sprite_index = sAntDead;