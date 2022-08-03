/// @description Insert description here
// You can write your code in this editor
display_set_gui_size(320, 240);
if flipping == 0
{
	draw_set_color(c_black)
	show_box(48,64,320-48,240-64,c_navy)
	draw_set_color(c_white)
	
	if side == 0
	{
		draw_set_font(fon_large)
		draw_text(52+64,68,global.playername)
		draw_sprite(spr_portraits,0,52,68)
		draw_set_font(fon_dialogue)
		draw_text(117,88,"ID No." + string(global.seed) + "\nCollection: 0/150")
		draw_text(52,176-16,"Date issued: " + global.start_date)
	}
	
}
else
{
	draw_sprite(spr_flipbox,stage,160,120)
}