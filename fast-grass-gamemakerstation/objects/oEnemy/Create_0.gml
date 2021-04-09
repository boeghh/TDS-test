//------------CREATION OF GUN
mygun = instance_create_depth(x,y,-3,oEGun);

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
isShooting = false;
