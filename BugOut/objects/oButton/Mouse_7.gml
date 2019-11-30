/// @description Go to target room

image_index = 0;

if (quit)
	game_end();
else
	room_goto(target);
	
audio_stop_sound(sndTitle);
audio_play_sound(sndButtonSelect, 10, false);