event_inherited()
enemyAttack_TriggerEvent()
image_speed = 0.35

if (state != PlayerState.titlescreen)
	enemyAttackTimer--
else
	enemyState_Attack()
		