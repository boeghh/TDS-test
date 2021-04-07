//------------HEALTH AND FLASH SHADER VARIABLES
hp = 4;
flash = 0;

//------------MOVEMENT
moveX = 0;
moveY = 0;
moveSpeed = 1.5;

//------------PATHING
path_start(path_lvl1_1, 1, path_action_reverse, 1);

//------------SHOOTING
isShooting = 0;

//------------DETECT IF ENEMY HAS WEAPON
if (hasweapon == true)
{
	gun = instance_create(x, y, "Gun", oEGun);
}