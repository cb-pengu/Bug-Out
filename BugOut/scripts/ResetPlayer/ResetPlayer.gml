/// @desc ResetPlayer()
/// @arg 

global.level = 1;

//Reset ant
oAnt.x = oAnt.xstart;
oAnt.y = oAnt.ystart;
if (oAnt.image_xscale < 0) oAnt.image_xscale *= -1;
oAnt.image_speed = 0;
oAnt.sprite_index = sAnt;

//Reset vacuum
oVacuum.x = oVacuum.xstart;
oVacuum.y = oVacuum.ystart;
oVacuum.hspeed = 0;

//Cue countdown
oGameManager.countdown = true;
oGameManager.count = 3;

//reset sounds
audio_stop_sound(sndLevel1);
audio_stop_sound(sndRun);