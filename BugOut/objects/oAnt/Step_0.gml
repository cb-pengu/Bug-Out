layer_background_index(layer_background_get_id("Background"), backgroundColor);
layer_background_index(layer_background_get_id("Backgrounds_2"), backgroundColor);
layer_background_index(layer_background_get_id("Backgrounds_3"), backgroundColor);

//Get Input
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check(vk_up) || keyboard_check(ord("W"));

if (has_control) 
{
	//sound
	if (key_left || key_right)
	{
		if (!audio_is_playing(sndRun))
			audio_play_sound(sndRun, 10, true);
	}
	else
	{
		audio_stop_sound(sndRun);
	}
	
	//Movement Direction
	var dir_h = key_right - key_left;
	
	//update sprite direction
	if(!isStunned){
		if (dir_h > 0 && image_xscale < 0) //going right, facing left
			image_xscale*=-1;
		else if (dir_h < 0 && image_xscale > 0) //going left, facing right
			image_xscale*=-1;
	}

	// Air vs. Ground Speed
	if (!place_meeting(x, y+1, oWall)) {
		mv_speed = airSpeed;
		if(!canGlide && canJump && vertSpeed >= 0){
			vertSpeed = 0;
			canGlide = true;
			canJump = false;
			grav = regGrav;
		}
	}
	else{
		mv_speed = normSpeed;
	}

	if(!ghost){
		// Move Speed
		if (place_meeting(x, y, oSpiderWeb) || place_meeting(x, y, oSpiderWeb2))
			mv_speed = 0.5 * mv_speed;
	}

	move_h = dir_h * mv_speed;
	vertSpeed += grav;
	move_v = vertSpeed;

	//Jump-n-Glide Mechanic
	if(key_jump){
		if(canJump){
			vertSpeed = -10;
			alarm[2] = 10;// Delay activation of gravity
			canJump = false;
			alarm[0] = 20; // Wait before allowing glide
		}
		else if(canGlide){
			grav = regGrav;
			vertSpeed = -10;
			alarm[1] = 15;
			canGlide = false;
		}
	}
	
	// Max vertical speed in the up direction
	/*if(move_v < -5)
		move_v = -5;*/

	if(!ghost){
		//Horizontal Collision
		if (place_meeting(x+move_h, y, oWall)) {
			while(!place_meeting(x+sign(move_h), y, oWall))
			{
				x += sign(move_h);
			}
			move_h = 0;
		}
	}

	//Vertical Collision
	if (place_meeting(x, (y+move_v), oWall)) {
		while(!place_meeting(x, y+sign(move_v), oWall))
		{
			y += sign(move_v);
		}
		move_v = 0;	
	}
	
	if (vertSpeed > 0)
	{
		grav = 0;
		canJump = true;
		canGlide = false;
	}
		
	//vertSpeed = 0;
	
	if(isStunned) {
		move_h = 0;
		alarm[0] = -1;
		alarm[1] = -1;
		alarm[2] = -1;
		vertSpeed = 0;
		grav = regGrav * 20;
	}
	
	if (abs(move_h) > 0){
		image_speed = 3;
	} else {
		image_speed = 0;
	}

	//Move player
	x += move_h;
	y += move_v;
	
	//update backgrounds
	if(move_h > 0){
		layer_hspeed("Backgrounds_2", -2);
	} else if (move_h < 0){
		layer_hspeed("Backgrounds_2", 2);
	} else {
		layer_hspeed("Backgrounds_2", 0);
	}
	
}