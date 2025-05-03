if instance_exists(enemyID) exit;
with instance_create(x, y, enemy) {
	vsp = -10;
	baddieStunTimer = 30;
	state = States.charge;
	pizzano = true;
}
if important instance_destroy()