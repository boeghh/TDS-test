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