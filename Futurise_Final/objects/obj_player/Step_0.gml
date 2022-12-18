keyRight= keyboard_check(vk_right) || keyboard_check(ord("D"));
keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
keyJump = keyboard_check(vk_space);
 var move =keyRight-keyLeft;
hsp= move*walksp;
vsp+=grv;
if(place_meeting(x,y+1,obj_wall)&&(keyJump))
{
	vsp=-10;
}
if(place_meeting(x+hsp,y,obj_wall))
{
	while(!place_meeting(x+sign(hsp),y,obj_wall))
	{
		x+=sign(hsp);
	}
	hsp=0;
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

if(!place_meeting(x,y+1,obj_wall))
{
	sprite_index=spr_PlayerJump;
	if (image_index==4)image_index=0;
}
else
{
	if(hsp==0)
	{
	sprite_index=spr_PlayerIdle;
	}
	else
	{
	sprite_index=spr_PlayerRun;
	}
	
}
if(hsp!=0) image_xscale=sign(hsp);
//quay đầu theo hướng chạy( tắt để bật quay đầu theo hướng chuột
