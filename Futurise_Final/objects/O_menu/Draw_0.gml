var i=0;
repeat(button_c)
{
	draw_set_color(c_white);
	draw_set_font(Font_menu);
	draw_set_halign(fa_center);
	
	
	draw_text(menu_x,menu_y+button_h*(i+1.5),button[i]);
	
	if (i==menu_s)
	{
		draw_set_color(c_red);
	draw_text(menu_x,menu_y+button_h*(i+1.5),button[i]);
	}
	i++;

}
