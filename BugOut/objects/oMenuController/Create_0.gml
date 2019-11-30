
//Variables
sep = 20; //seperation between buttons
x0 = room_width/2; 
y0 = room_height/2;

//Call create buttons
event_user(0);

//Reset Audio
audio_stop_all();

//Play title screen
audio_play_sound(sndTitle, 10, true);