/// @description Insert description here
// You can write your code in this editor
display_set_gui_size(320, 240);

draw_set_color(c_black)
draw_rectangle_color(2,192,318,238,c_navy,c_navy,c_black,c_black,false)
draw_rectangle_color(6,196,314,234,c_black,c_black,c_navy,c_navy,false)
draw_set_color(c_white)
draw_rectangle(2,192,318,238,true)
draw_set_font(fon_dialogue)
if stage == 0
{
	draw_text_ext(4,194,"Would you like to save the game?",16,320)
}
if stage == 1
{
	draw_text_ext(4,194,"DANGER: There is already another save file present. If you save now, you will lose that\nsave file. Are you sure?",16,320)
}
if stage == 2
{
	draw_text_ext(4,194,"Now saving!",16,320)
}
if stage == 3
{
	draw_text_ext(4,194,"Save complete!!",16,320)
}

if stage < 2
{
	draw_set_color(c_black)
	draw_rectangle(224,208,318,238,false)
	draw_set_color(c_white)
	draw_rectangle(224,208,318,238,true)
	draw_set_color(c_blue)
	if choice == 0
	{
	    draw_rectangle(224,208,318,223,false)
	}
	else
	{
	    draw_rectangle(224,223,318,238,false)
	}
	draw_set_color(c_white)
	draw_set_font(fon_dialogue)
	draw_text_ext(226,210,string_hash_to_newline("  Yes#  No"),16,320)
}