/// @description Destroy self
randomize();
parent.alarm[0] = irandom_range(3,4) * room_speed;
instance_destroy(self);