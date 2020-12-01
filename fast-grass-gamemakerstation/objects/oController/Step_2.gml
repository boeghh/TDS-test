/// @description 
var camX = camera_get_view_x(camera);
var camY = camera_get_view_y(camera);

// Snap
var followX=camX, followY=camY;
with (objectFollow) {
	followX = x - RES.W/2;
	followY = y - RES.H/2;
}

// Clamp
followX = clamp(followX, 0, room_width - RES.W);
followY = clamp(followY, 0, room_height - RES.H);

// Smooth
camX = lerp(camX, followX, camSpeed);
camY = lerp(camY, followY, camSpeed);

// Set
camera_set_view_pos(camera, camX, camY);