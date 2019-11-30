
if (room != menu) {
	//Draw time
	draw_set_color(c_black);
	secs = floor(global.seconds);
	str = "Time: " + string(global.minutes) + "." + string(secs);
	str_height = string_height(str)/2;
	draw_text(10, 10 + str_height, str);
}

//Draw countdown
if (countdown)
{
	draw_set_color(c_black);
	draw_set_font(fntCountdown);
	
	if (count != 0) 
	{
		draw_text(camera_get_view_width(view_camera[0])/2 - string_width(string(count))/2, room_height/2 - string_height(string(count)), string(count));
	}
	else
	{
		draw_text(camera_get_view_width(view_camera[0])/2 - string_width("GO!")/2, room_height/2 - string_height("GO!"), "GO!");
	}
	draw_set_font(fntRegular);
}