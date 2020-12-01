/// @description 
// Move
moveX = global.axisX * moveSpeed;
moveY = global.axisY * moveSpeed;

//------------SPRITE, IDLE & RUNNING
if (moveX != 0 || moveY != 0) {
	sprite_index = sPlayer;
} else {
	sprite_index = sPlayer;
}


//------------COLLISION
//Horizontal collisions
if place_meeting(x+moveX, y, oWall) {
	while (!place_meeting(x+sign(moveX), y, oWall)) {
		x += sign(moveX);
	}
}
x += moveX;

//Vertical collisions
if place_meeting(x, y+moveY, oWall) {
	while (!place_meeting(x, y+sign(moveY), oWall)) {
		y += sign(moveY);
	}
}
y += moveY;

//------------BULLET CREATION
bullet_creation();