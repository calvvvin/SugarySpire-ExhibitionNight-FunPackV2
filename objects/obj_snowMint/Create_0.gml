event_inherited()
grav = 0.5
hsp = 0
vsp = 0
movespeed = 1
state = PlayerState.frozen
baddieStunTimer = 0
enemyAttackTimer = 2;
alarm[0] = 150
canRoam = true
flying = 0
straightthrow = 0
thrown = 0
reset = 0
hp = 1
hitboxcreate = 0
grounded = 1
enemyAttackTimer = 100
baddieSpriteIdle = spr_snowMint_walk
baddieSpriteStun = spr_snowMint_stun
baddieSpriteWalk = spr_snowMint_walk
baddieSpriteGrabbed = spr_snowMint_stun
baddieSpriteScared = spr_snowMint_scare
baddieSpriteAttack = spr_snowMint_throw
baddieSpriteDead = spr_snowMint_debris
throw_frame = 10
flash = false
slapped = 0
birdCreated = 0
boundbox = 0
points = 0
inhaleStrength = 0

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
		scr_enemyThrowDefault(spr_snowMint_throw,10,0.35, function() 
		{
			instance_create(x + image_xscale * 2, y, obj_snowMintProjectile,
			{
			baddieID: id,
			image_xscale : image_xscale,
			movespeed : 8
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
