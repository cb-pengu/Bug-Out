/// @description

if(floor(image_index) == 1){
    
    oVacuum.hspeed = oVacuum.hspd/2;
    
    alarm[4] = 3 * room_speed;
    
    
} else if (floor(image_index) == 0){
    
    oVacuum.hspeed = oVacuum.hspd * 2;

    alarm[4] = 3 * room_speed;
}

audio_play_sound(sndPickup, 10, false);
instance_destroy(other);