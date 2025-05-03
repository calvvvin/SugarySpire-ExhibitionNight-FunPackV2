var gaining_time = timer > target_fill;

if time_til_timed <= 0
{
	if !global.panic && !is_hub() && room != rm_titlecard && room != rank_room
		alarm[0] = 1;
	
	if timer > 0
		timer_y = approach(timer_y, 490, 1);
		
	if target_fill > timer
	{
		timer = approach(timer, target_fill, 20);
	}
	else
	{
		if timer > 0
		{
			sprite_index = (gaining_time ? spr_timer_gain : spr_timer);
			timer--
		}
		else
		{
			timer_y = approach(timer_y, 690, 1);
			global.EscapeTime = -1;
		}
		target_fill = timer;
	}
}
else
	time_til_timed--