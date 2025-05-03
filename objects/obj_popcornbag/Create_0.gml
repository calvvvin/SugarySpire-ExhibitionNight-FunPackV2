event_inherited();

baddieSpriteIdle = spr_popcornwalksh;
baddieSpriteWalk = spr_popcornwalksh;
baddieSpriteStun = spr_popcornstunsh;
baddieSpriteScared = spr_popcornscaredsh;
baddieSpriteTurn = undefined;
baddieSpriteHit = undefined;
baddieSpriteDead = spr_popcorndeathsh;
spr_throw = spr_popcornspawningsh;
enemyAttackTimer = 200;

enemyAttack_TriggerEvent = function()
{
    var target_player = get_nearestPlayer()
    var facing_xscale = (-(getFacingDirection(target_player.x, x)))
    
    if (scr_enemy_playerisnear(150,150) && grounded && state == States.frozen && enemyAttackTimer <= 0)
    {
        state = PlayerState.titlescreen;
        hsp = 0;
		sprite_index = spr_throw;
		image_index = 0;
        image_xscale = facing_xscale
	}
}


enemyState_Attack = function()
{
	hsp = 0;
	
	if sprite_animation_end() && sprite_index == spr_throw
	{
		with instance_create(x, y, obj_littlepopcorn) {
			vsp = -10;
			baddieStunTimer = 30;
			state = States.charge;
			image_xscale = other.image_xscale;
		}
		state = States.frozen;
		sprite_index = baddieSpriteWalk;
		enemyAttackTimer = 200;
	}
}