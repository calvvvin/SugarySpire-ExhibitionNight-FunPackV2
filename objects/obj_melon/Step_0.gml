event_inherited();
enemyAttack_TriggerEvent();

if (state == PlayerState.titlescreen && sprite_index == spr_meloncooltaunt)
{
	if (!instance_exists(hurtboxID))
    {
        with (instance_create(x, y, obj_forkhitbox, 
        {
            ID: other.id
        }))
        {
            other.hurtboxID = id;
            ID = other.id;
            image_xscale = other.image_xscale;
            image_index = other.image_index;
            depth = -1;
            sprite_index = spr_swordhitbox2;
            mask_index = spr_swordhitbox2;
        }
    }
}

if state != PlayerState.titlescreen && tauntTimer > 0
	tauntTimer = 0;
	
if state != PlayerState.titlescreen
	enemyAttackTimer--
