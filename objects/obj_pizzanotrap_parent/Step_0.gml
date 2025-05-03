if (!instance_exists(obj_pizzano_dance))
{
	visible = false;
	exit;
}
switch (state)
{
	case 1:
		visible = false;
		image_speed = 0;
		image_index = 0;
		if (cooldown > 0)
			cooldown--;
		else if (point_distance(x, 0, obj_parent_player.x, 0) <= threshold_x && point_distance(0, y, 0, obj_parent_player.y) <= threshold_y)
		{
			state = States.charge;
			attack_buffer = 20;
		}
		break;
	case States.charge:
		visible = true;
		image_speed = 0.35;
		if (attack_buffer > 0)
			attack_buffer--;
		else
		{
			with (obj_pizzano_dance)
			{
				if (state != 35)
				{
					trap_x = other.x;
					trap_y = other.y;
					event_perform(2, 0);
					other.state = 1;
					other.cooldown = other.cooldown_max;
				}
			}
		}
		break;
}
