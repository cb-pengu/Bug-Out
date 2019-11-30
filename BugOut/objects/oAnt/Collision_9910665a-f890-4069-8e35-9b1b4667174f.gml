sprite_index = sAntGhost;

ghost = true;

alarm[3] = 1 * room_speed;

audio_play_sound(sndPickup, 10, false);
instance_destroy(other);