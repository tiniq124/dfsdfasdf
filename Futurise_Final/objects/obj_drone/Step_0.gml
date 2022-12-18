


if(place_meeting(x+hsp,y,obj_wall))
{
	while(!place_meeting(x+sign(hsp),y,obj_wall))
	{
		x+=sign(hsp);
	}
	hsp=-hsp;
}
if(place_meeting(x,y+vsp,obj_wall))
{
	while(!place_meeting(x,y+sign(vsp),obj_wall))
	{
		y+=sign(vsp);
	}
	vsp=0;
}
x+= hsp;
y+=vsp;


if(hsp!=0) image_xscale=sign(hsp);
if(hp<=0)
{
	speed=0;
	sprite_index= spr_DroneExplosion;
	image_speed=1;
	if((image_index > image_number - 1))
	{
		instance_destroy();
	}
}
delay--;
if(delay<0)
{
	
	delay=50;
	button=instance_create_layer(x,y,"Button",obj_bulletDrone);
	with(button)
	{
		speed=30;
		direction=270;
		
	}
}
	










