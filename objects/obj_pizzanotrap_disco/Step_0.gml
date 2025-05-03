//var player = instance_nearest(x, y, obj_player)
if !instance_exists(obj_pizzano_dance) {
	
	exit;
	
}
switch state
{
	case States.normal:
		//visible = false
		//image_speed = 0
		//image_index = 0
		y = approach(y, ystart, 6)
		if (cooldown > 0)
			cooldown--
		else if point_distance(x, 0, obj_parent_player.x, 0) <= threshold_x && point_distance(0, y, 0, obj_parent_player.y) <= threshold_y && y == ystart
		{
			state = States.charge
			attack_buffer = 5
		}
		break
	case States.freefall:
		hsp = 0
		vsp = 10
		scr_collision()
		if grounded && vsp > 0 state = States.normal
	break
	case States.charge:
		//visible = true
		//image_speed = 0.35
		if (attack_buffer > 0)
			attack_buffer--
		else 
		{
			with (obj_pizzano_dance)
			{
				if (state != States.charge)
				{
					trap_x = other.x
					trap_y = other.y
					event_perform(ev_alarm, 0)
					other.state = States.normal
					other.cooldown = other.cooldown_max
				}
			}
		}
		break
}

