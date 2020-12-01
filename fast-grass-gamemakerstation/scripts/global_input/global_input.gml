function global_input() {
	// Mouse
	global.mouseGuiXP = global.mouseGuiX;
	global.mouseGuiYP = global.mouseGuiY;
	global.mouseGuiX = device_mouse_x_to_gui(0);
	global.mouseGuiY = device_mouse_y_to_gui(0);
	global.mouseDeltaX = global.mouseGuiX - global.mouseGuiXP;
	global.mouseDeltaY = global.mouseGuiY - global.mouseGuiYP;

	global.mouseLMB = mouse_check_button(mb_left);
	global.mouseLMB_P = mouse_check_button_pressed(mb_left);
	global.mouseRMB = mouse_check_button(mb_right);
	global.mouseRMB_P = mouse_check_button_pressed(mb_right);

	// Axes
	var right = keyboard_check(ord("D")) || keyboard_check(vk_right);
	var left = keyboard_check(ord("A")) || keyboard_check(vk_left);
	var down = keyboard_check(ord("S")) || keyboard_check(vk_down);
	var up = keyboard_check(ord("W")) || keyboard_check(vk_up);

	global.axisX = right - left;
	global.axisY = down - up;


}
