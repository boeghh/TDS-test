/// @description 
// Skip init
if (room == rmInit) {
	room_goto_next();
}

// Camera
view_enabled = true;
view_visible[0] = true;

var width = RES.W, height = RES.H;

camera = camera_create_view(0, 0, width, height, 0, -1, -1, -1, width/2, height/2);
view_set_camera(0, camera);