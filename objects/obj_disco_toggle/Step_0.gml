if (place_meeting(x, y, obj_parent_player))
	global.dancetimer = discotimer;
if (global.dancetimer > 0) && (sprite_index == spr_onoffblock_uncanny)
{
	sprite_index = spr_onoffblock_cannyswitch;
	image_index = 0;
}
if (global.dancetimer <= 0) && (sprite_index == spr_onoffblock_canny)
{
	sprite_index = spr_onoffblock_uncannyswitch;
	image_index = 0;
}



