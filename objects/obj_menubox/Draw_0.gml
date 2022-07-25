draw_set_color(c_black)
draw_rectangle_color(__view_get( e__VW.XView, 0 ) + 2,__view_get( e__VW.YView, 0 ) + 2,__view_get( e__VW.XView, 0 ) + 126,__view_get( e__VW.YView, 0 ) + 238,c_navy,c_navy,c_black,c_black,false)
draw_rectangle_color(__view_get( e__VW.XView, 0 ) + 6,__view_get( e__VW.YView, 0 ) + 6,__view_get( e__VW.XView, 0 ) + 122,__view_get( e__VW.YView, 0 ) + 234,c_black,c_black,c_navy,c_navy,false)
draw_set_color(c_blue)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
switch selection
{
	case 0:
	draw_rectangle(__view_get( e__VW.XView, 0 ) + 2,__view_get( e__VW.YView, 0 ) + 4,__view_get( e__VW.XView, 0 ) + 126,__view_get( e__VW.YView, 0 ) + 4+32,false)
	break
	case 1:
	draw_rectangle(__view_get( e__VW.XView, 0 ) + 2,__view_get( e__VW.YView, 0 ) + 36,__view_get( e__VW.XView, 0 ) + 126,__view_get( e__VW.YView, 0 ) + 36+32,false)
	break
	case 2:
	draw_rectangle(__view_get( e__VW.XView, 0 ) + 2,__view_get( e__VW.YView, 0 ) + 68,__view_get( e__VW.XView, 0 ) + 126,__view_get( e__VW.YView, 0 ) + 68+32,false)
	break
	case 3:
	draw_rectangle(__view_get( e__VW.XView, 0 ) + 2,__view_get( e__VW.YView, 0 ) + 100,__view_get( e__VW.XView, 0 ) + 126,__view_get( e__VW.YView, 0 ) + 100+32,false)
	break
	case 4:
	draw_rectangle(__view_get( e__VW.XView, 0 ) + 2,__view_get( e__VW.YView, 0 ) + 132,__view_get( e__VW.XView, 0 ) + 126,__view_get( e__VW.YView, 0 ) + 132+32,false)
	break
	case 5:
	draw_rectangle(__view_get( e__VW.XView, 0 ) + 2,__view_get( e__VW.YView, 0 ) + 164,__view_get( e__VW.XView, 0 ) + 126,__view_get( e__VW.YView, 0 ) + 164+32,false)
	break
}
draw_set_color(c_white)
draw_rectangle(__view_get( e__VW.XView, 0 ) + 2,__view_get( e__VW.YView, 0 ) + 2,__view_get( e__VW.XView, 0 ) + 126,__view_get( e__VW.YView, 0 ) + 238,true)
draw_set_font(fon_dialogue)
if stage > 0
{
	draw_text_ext(__view_get( e__VW.XView, 0 ) + 40,__view_get( e__VW.YView, 0 ) + 16,string_hash_to_newline("Collection"),16,320)
	draw_sprite(spr_menuicons,0,__view_get( e__VW.XView, 0 )+4,__view_get( e__VW.YView, 0 )+4)
}
if stage > 1
{
	draw_text_ext(__view_get( e__VW.XView, 0 ) + 40,__view_get( e__VW.YView, 0 ) + 32 + 16,string_hash_to_newline("Phones"),16,320)
	draw_sprite(spr_menuicons,1,__view_get( e__VW.XView, 0 )+4,__view_get( e__VW.YView, 0 )+36)
}
if stage > 2
{
	draw_text_ext(__view_get( e__VW.XView, 0 ) + 40,__view_get( e__VW.YView, 0 ) + 64 + 16,string_hash_to_newline("Items"),16,320)
	draw_sprite(spr_menuicons,2,__view_get( e__VW.XView, 0 )+4,__view_get( e__VW.YView, 0 )+68)
}
if stage > 3
{
	draw_text_ext(__view_get( e__VW.XView, 0 ) + 40,__view_get( e__VW.YView, 0 ) + 96 + 16,string_hash_to_newline(global.playername),16,320)
	draw_sprite(spr_menuicons,3,__view_get( e__VW.XView, 0 )+4,__view_get( e__VW.YView, 0 )+100)
}
if stage > 4
{
	draw_text_ext(__view_get( e__VW.XView, 0 ) + 40,__view_get( e__VW.YView, 0 ) + 128 + 16,string_hash_to_newline("Save"),16,320)
	draw_sprite(spr_menuicons,4,__view_get( e__VW.XView, 0 )+4,__view_get( e__VW.YView, 0 )+132)
}
if stage > 5
{
	draw_text_ext(__view_get( e__VW.XView, 0 ) + 40,__view_get( e__VW.YView, 0 ) + 160 + 16,string_hash_to_newline("Options"),16,320)
	draw_sprite(spr_menuicons,5,__view_get( e__VW.XView, 0 )+4,__view_get( e__VW.YView, 0 )+164)
}
if stage > 6
{
	draw_text_ext(__view_get( e__VW.XView, 0 ) + 40,__view_get( e__VW.YView, 0 ) + 208,string_hash_to_newline("Money: $" + string(global.money)),16,320)
}
