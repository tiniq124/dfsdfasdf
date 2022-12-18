/// @description Update camera

// Update destination
if (instance_exists(obj_player)) {
	xTo = follow.x;
	yTo = follow.y;
}

// Update position
x += (xTo - x) / 25;
y += (yTo - y) / 25;


x = clamp(x,view_w_half, room_width - view_w_half);
y = clamp(y,view_h_half, room_height - view_h_half);


// Update camera view
camera_set_view_pos(cam,x - view_w_half, y - view_h_half);

//Update background
if (layer_exists("Backgrounds_3"))
{
	layer_x("Backgrounds_3",x/2);
}
if (layer_exists("Backgrounds_4"))
{
	layer_x("Backgrounds_4",x/4);
}
if (layer_exists("Backgrounds_5"))
{
	layer_x("Backgrounds_5",x/8);
}
