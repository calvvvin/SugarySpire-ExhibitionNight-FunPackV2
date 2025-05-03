//var player = instance_nearest(x, y, obj_player)
if !instance_exists(obj_pizzano_dance) {
	visible = false
	exit;
	
}
if !important && enemyID != -4 && !instance_exists(enemyID) && (ds_list_find_index(global.BaddieRoom, id) == -1) ds_list_add(global.BaddieRoom, id)
var not_in_list = (ds_list_find_index(global.BaddieRoom, id) == -1)
switch state
{
	case States.normal:
		visible = false
		image_speed = 0
		image_index = 0
		if (cooldown > 0)
			cooldown--
		else if !instance_exists(enemyID) && point_distance(x, 0, obj_parent_player.x, 0) <= threshold_x && point_distance(0, y, 0, obj_parent_player.y) <= threshold_y && (important || not_in_list)
		{
			state = States.charge
			attack_buffer = 20
		}
		break
	case States.charge:
		visible = true
		image_speed = 0.35
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

