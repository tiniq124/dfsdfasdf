x=obj_player.x-5;
y=obj_player.y - 30;
image_angle=point_direction(x,y,mouse_x,mouse_y);
delay--;
recoil= max(recoil-1,0)
if(delay<0&&mouse_check_button(mb_left))
{
	recoil =10;
	delay=10;
	button=instance_create_layer(x,y,"Button",obj_bulletPlayer);
	with(button)
	{
		speed=30;
		direction = other.image_angle;
		image_angle= direction;
	}
}
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




