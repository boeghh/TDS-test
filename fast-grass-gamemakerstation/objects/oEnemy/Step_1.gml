//------------HEALTH AND DIRECTING TO OBJECT DEAD
if (hp <= 0) {
	instance_create_layer(x, y, layer, oEnemyDead);
	
	instance_destroy();
}