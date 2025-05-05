updateEffectPosition()

if (playerID.sprite_index == playerID.spr_dive || (playerID.state != PlayerState.mach3 && !(playerID.state == PlayerState.run && playerID.movespeed >= 12) && !(playerID.state == PlayerState.machroll && playerID.mach3Roll > 0) && playerID.state != PlayerState.doughmountpancake && playerID.sprite_index != spr_player_PZ_flicked && (playerID.state != PlayerState.bottlerocket || (sprite_index == spr_player_PZ_bottleRocket_intro || sprite_index == spr_player_PZ_bottleRocket_turn))))
	instance_destroy()
