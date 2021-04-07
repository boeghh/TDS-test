//------------ENEMY COLLISION
//Horizontal collisions
if place_meeting(x+moveX, y, oWall) {
	while (!place_meeting(x+sign(moveX), y, oWall)) {
		x += sign(moveX);
	}
	moveX = 0;
}
x += moveX;

//Vertical collisions
if place_meeting(x, y+moveY, oWall) {
	while (!place_meeting(x, y+sign(moveY), oWall)) {
		y += sign(moveY);
	}
	moveY = 0;
}
y += moveY;


//------------IMAGE DIRECTION AND SPRITE
//Image direction
if (direction > 90 and direction < 270) { image_xscale = -1; }
	else {image_xscale = 1}


//------------DETECT IF ENEMY IS SHOOTING
if (isShooting = 1)
{
	path_speed = 0;
	sprite_index = sEnemyIdle;
} else { sprite_index = sEnemyRun }

//------------DETECT IF ENEMY HAS WEAPON
if(!instance_exists(gun)) {instance_create(x, y, "Gun", oEGun)}
gun.x = x
gun.y = y