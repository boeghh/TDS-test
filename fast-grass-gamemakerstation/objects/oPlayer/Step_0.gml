/// @description 
//------------MOVE
moveX = global.axisX * moveSpeed;
moveY = global.axisY * moveSpeed;

//------------SPRITE, IDLE & RUNNING
if (moveX != 0 || moveY != 0) {
	sprite_index = sPlayerRun
} else {
	sprite_index = sPlayerIdle;
}

//Look direction
if (moveX != 0) image_xscale = sign(moveX);

//------------COLLISION
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