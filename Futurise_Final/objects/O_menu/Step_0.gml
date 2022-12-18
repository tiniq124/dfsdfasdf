var menu_m=keyboard_check_pressed(vk_down)-keyboard_check_pressed(vk_up);
menu_s+=menu_m;
if(menu_s==-1) menu_s=4;
if(menu_s==5) menu_s=0;
if(last_select!= menu_s)
{
	audio_play_sound(selected_sounds,10,false);
}
last_select=menu_s;