global.dancetimermax = discotimer
if !instance_exists(obj_clock)
	instance_create(other.x, other.y, obj_clock)
	