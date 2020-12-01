/// @description 
// Manage resolution
var width = RES.W, height = RES.H, scale = RES.S;

window_set_size(width*scale, height*scale);
surface_resize(application_surface, width*scale, height*scale);

window_set_position(display_get_width()/2-(width*scale)/2, display_get_height()/2-(height*scale)/2);
display_set_gui_size(width, height);