if (!instance_exists(oPlayer)) 
{
	objectFollow = oGun;
	image_alpha = 0;
}

y = objectFollow.y + 3;
x = objectFollow.x;

image_angle = point_direction(x, y, mouse_x, mouse_y);

//------------BULLET CREATION
firingdelay--;
recoil = max(0, recoil - 1);

if (firingdelay < 0 && mouse_check_button(mb_left)) {
	recoil = 4;
	firingdelay = 10;

	with (instance_create_layer(x, y, "Bullets", oBullet)) {
		direction = other.image_angle + random_range(-1, 1);
		speed = 10;
		image_angle = direction;
	}
}
	
x = x - lengthdir_x(recoil, image_angle);
y = y - lengthdir_y(recoil, image_angle);

//------------PLAYER LOOKING DIRECTION; SPRITE AND SCALE
if (image_angle > 90) && (image_angle < 270) {
	image_yscale = -0.5;
} else {
	image_yscale = 0.5;
}