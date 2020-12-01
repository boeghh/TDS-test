
function bullet_creation(){
	firingdelay--;

	if (firingdelay <= 0 && mouse_check_button(mb_left)) {
		firingdelay = firingdelayValue;
	
		with (instance_create_layer(x, y, "Bullets", oBullet)) {
			direction = point_direction(x, y, mouse_x, mouse_y) + random_range(-1, 1);
			speed = 10;
		}
		sprite_index = sPlayer;
	}
}