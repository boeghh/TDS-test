x = owner.x;
y = owner.y;

image_xscale = abs(owner.image_xscale);
image_yscale = abs(owner.image_yscale);

if (instance_exists(oPlayer)) 
{
	if (oPlayer.x < x) image_yscale = -image_yscale;	
	if (point_distance(oPlayer.x, oPlayer.y, x, y) < radiusEnemy)
	{
		image_angle = point_direction(x, y, oPlayer.x, oPlayer.y);
		countdown--;
		if (countdown <= 0)
		{
			countdown = countdownrate;
			// Bullet code
			
		}
	}
}