depth = -1
image_speed = 0.5
don = 0

if (is_undefined(wall))
	wall = instance_nearest(x, y, obj_minesWall)

activated = !instance_exists(wall)
mask_index = spr_gnomeMinerIdle
