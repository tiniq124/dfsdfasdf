x=obj_gun.x-5;
y=obj_gun.y - 1;
image_angle=point_direction(x,y,mouse_x,mouse_y);
delay--;
recoil= max(recoil-1,0)

x-=lengthdir_x(recoil,image_angle);
y-=lengthdir_y(recoil,image_angle);
if(image_angle>90 && image_angle<270)
{
	x=x+10;
	image_yscale=-1;
	with(obj_player)
	{
		image_xscale=-1;
	}
}
else{
	image_yscale=1;
	with(obj_player)
	{
		image_xscale=1;
	}
	}




