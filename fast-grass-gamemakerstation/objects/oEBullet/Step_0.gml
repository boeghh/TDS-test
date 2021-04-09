//------------DEFINES DIRECTION
//image_angle = direction;

//------------DESTROY IN COLLISION WITH WALL
if (place_meeting(x, y, oWall)) {
	instance_destroy();
}