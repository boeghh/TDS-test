//------------HEALTH AND FLASH SHADER VARIABLES
hp = 4;
flash = 0;

//------------MOVEMENT
moveX = 0;
moveY = 0;
moveSpeed = 1.5;

//------------DETECT IF ENEMY HAS WEAPON
if (hasweapon)
{
	mygun = instance_create(x, y, "Gun", oEGun);
	with (mygun)
	{
		owner = other.id;
	}
} else mygun = noone;