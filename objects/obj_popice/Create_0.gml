event_inherited()

baddieSpriteIdle = undefined
baddieSpriteWalk = spr_popice
baddieSpriteStun = spr_gumslime_stun
baddieSpriteScared = spr_gumslime_scared
baddieSpriteTurn = spr_popice_turn
baddieSpriteHit = undefined
baddieSpriteDead = spr_gumslime_dead
baddieSpriteAttack = spr_popice_sneeze
state = PlayerState.frozen

enemyAttack_TriggerEvent = function()
{
	if (scr_enemy_playerisnear(400, 20) && grounded && state == PlayerState.frozen && enemyAttackTimer == 0)
	{
		state = PlayerState.titlescreen
		substate = 0
		movespeed = 0
		var _player = get_nearestPlayer()
		image_xscale = -getFacingDirection(_player.x, x)
		sprite_index = baddieSpriteAttack
		image_index = 0
	}
}

enemyState_Attack = function()
{
	hsp = 0;

	if (sprite_index == baddieSpriteAttack)
	{
		scr_enemyThrowDefault(spr_popice_sneeze,13,0.35, function() 
		{
			instance_create(x + image_xscale * 5, y - 20, obj_popice_sneezeparticle,
			{
			baddieID: id,
			image_xscale : image_xscale,
			hsp : 0
			})
		})
		if (sprite_animation_end())
		{
		state = PlayerState.frozen;
		sprite_index = baddieSpriteWalk;
		enemyAttackTimer = 200;
		}
	}
}