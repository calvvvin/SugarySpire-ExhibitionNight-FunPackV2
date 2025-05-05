if (obj_parent_player.state = PlayerState.bottlerocket)
	image_alpha = -2
else
	image_alpha = approach(image_alpha, 1, 0.1)
