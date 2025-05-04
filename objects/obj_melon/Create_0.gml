event_inherited();

baddieSpriteIdle = spr_meloncoolwalk;
baddieSpriteWalk = spr_meloncoolwalk;
baddieSpriteStun = spr_meloncoolstun;
baddieSpriteScared = spr_meloncoolscared;
baddieSpriteTurn = undefined;
baddieSpriteHit = undefined;
baddieSpriteDead = spr_meloncooldeath;
enemyAttackTimer = 200;
tauntTimer = 40;
hurtboxID = noone;

enemyAttack_TriggerEvent = function()
{
    var _player;
    
    if (scr_enemy_playerisnear(150,150) && grounded && state == PlayerState.frozen && enemyAttackTimer <= 0)
    {
        state = PlayerState.titlescreen;
        hsp = 0;
		vsp = 0;
		tauntTimer = 40;
		sprite_index = spr_meloncooltaunt;
		image_index = irandom_range(0,2);
		image_speed = 0;
		instance_create(x,y,obj_baddieTauntEffect);
	}
}


enemyState_Attack = function()
{
	hsp = 0;
	vsp = 0;
	image_speed = 0;
	
	if tauntTimer > 0
		tauntTimer--
		
	if tauntTimer <= 0
	{
		sprite_index = baddieSpriteWalk;
		image_speed = 0.35;
		movespeed = defaultMovespeed;
		enemyAttackTimer = 200;
		state = PlayerState.frozen;
	}
}