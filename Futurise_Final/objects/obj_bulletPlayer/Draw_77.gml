if(place_meeting(x,y,obj_wall))
{
	speed=0;
	sprite_index= spr_shothit;
	image_speed=1;
	if(image_index>=3)
	{
		
		instance_destroy();
	}	
}
if(place_meeting(x,y,obj_drone))
{
	speed=0;
	sprite_index= spr_shothit;
	image_speed=1;
	if(image_index>=3)
	{
		instance_destroy();
	}	
}



