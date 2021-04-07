//------------HEALTH AND DIRECTING TO OBJECT DEAD
if (hp <= 0) {
	instance_destroy();
	
	instance_create_layer(x, y, layer, oEnemyDead);
	
	/* Destroying gun and enemy
	with (mygun) instance_destroy();
	*/
}

