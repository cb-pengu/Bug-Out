
if (countdown)
{
	if (alarm[0] == -1) 
	{
		if (count > 0)
			audio_play_sound(sndCountdown, 10, false);
		else
			audio_play_sound(sndGo, 10, false);
			
		alarm[0] = 1 * room_speed;
	}
}
else
{
	if (room != menu) {
		//Update time
		global.seconds += 1/room_speed;
		if (global.seconds == 60) {
			global.seconds = 0;
			global.minutes++;
		}
		
		if (!audio_is_playing(sndLevel1))
		{
			audio_play_sound(sndLevel1, 10, true);
		}
	}
}