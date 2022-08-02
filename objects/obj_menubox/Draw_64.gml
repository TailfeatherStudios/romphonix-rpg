display_set_gui_size(320, 240);

draw_set_color(c_black)
draw_rectangle_color(2,2,126,238,c_navy,c_navy,c_black,c_black,false)
draw_rectangle_color(6,6,122,234,c_black,c_black,c_navy,c_navy,false)
draw_set_color(c_blue)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
switch selection
{
	case 0:
	draw_rectangle(2,4,126,4+32,false)
	break
	case 1:
	draw_rectangle(2,36,126,36+32,false)
	break
	case 2:
	draw_rectangle(2,68,126,68+32,false)
	break
	case 3:
	draw_rectangle(2,100,126,100+32,false)
	break
	case 4:
	draw_rectangle(2,132,126,132+32,false)
	break
	case 5:
	draw_rectangle(2,164,126,164+32,false)
	break
}
draw_set_color(c_white)
draw_rectangle(2,2,126,238,true)
draw_set_font(fon_dialogue)
if stage > 0
{
	draw_text_ext(40,16,string_hash_to_newline("Collection"),16,320)
	draw_sprite(spr_menuicons,0,4,4)
}
if stage > 1
{
	draw_text_ext(40,32 + 16,string_hash_to_newline("Phones"),16,320)
	draw_sprite(spr_menuicons,1,4,36)
}
if stage > 2
{
	draw_text_ext(40,64 + 16,string_hash_to_newline("Items"),16,320)
	draw_sprite(spr_menuicons,2,4,68)
}
if stage > 3
{
	draw_text_ext(40,96 + 16,string_hash_to_newline(global.playername),16,320)
	draw_sprite(spr_menuicons,3,4,100)
}
if stage > 4
{
	draw_text_ext(40,128 + 16,string_hash_to_newline("Save"),16,320)
	draw_sprite(spr_menuicons,4,4,132)
}
if stage > 5
{
	draw_text_ext(40,160 + 16,string_hash_to_newline("Options"),16,320)
	draw_sprite(spr_menuicons,5,4,164)
}
if stage > 6
{
	draw_text_ext(40,208,string_hash_to_newline("Money: $" + string(global.money)),16,320)
}
