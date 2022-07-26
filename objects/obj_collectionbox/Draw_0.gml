/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white)
draw_set_halign(fa_center)
if stage > 0
{
	show_box(2,2,126,30,c_navy)
}
if stage > 1
{
	show_box(130,2,318,126,c_navy)
}
if stage > 2
{
	show_box(2,34,126,238,c_navy)
}
if stage > 3
{
	show_box(130,130,318,238,c_navy)
}
draw_set_color(c_blue)
draw_rectangle(__view_get( e__VW.XView, 0 ) + 2,__view_get( e__VW.YView, 0 ) + 54,__view_get( e__VW.XView, 0 ) + 126,__view_get( e__VW.YView, 0 ) + 72,false)
draw_set_color(c_white)
draw_text(__view_get( e__VW.XView, 0 ) + 64,__view_get( e__VW.YView, 0 ) + 8,"LG")
draw_text_ext(__view_get( e__VW.XView, 0 ) + 64,__view_get( e__VW.YView, 0 ) + 40,"LG LGC-330W\nLG TP-1100\nLG TM-510\nLG TP-5200\nLG TP-5250\nLG VX-1\nLG VX-10\nLG 4NE1\nLG VX-2000\nLG LX-5350\nLG VX-4400\nLG LX-1200\nLG VX-3100",16,128)
draw_set_halign(fa_left)
draw_text_ext(__view_get( e__VW.XView, 0 ) + 136,__view_get( e__VW.YView, 0 ) + 138,"An early phone from LG. Features a large display, web capabilities and two games.\n\nRarity: ***\nYear: 2000",16,192)