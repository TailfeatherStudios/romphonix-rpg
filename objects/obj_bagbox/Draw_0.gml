/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_left)
draw_rectangle_color(__view_get( e__VW.XView, 0 ) + 130,__view_get( e__VW.YView, 0 ) + 2,__view_get( e__VW.XView, 0 ) + 318,__view_get( e__VW.YView, 0 ) + 238,c_navy,c_navy,c_black,c_black,false)
draw_rectangle_color(__view_get( e__VW.XView, 0 ) + 134,__view_get( e__VW.YView, 0 ) + 6,__view_get( e__VW.XView, 0 ) + 314,__view_get( e__VW.YView, 0 ) + 234,c_black,c_black,c_navy,c_navy,false)
draw_set_colour(c_blue)
draw_rectangle(__view_get( e__VW.XView, 0 ) + 130,__view_get( e__VW.YView, 0 ) + (14*(selection+1))-12,__view_get( e__VW.XView, 0 ) + 318,__view_get( e__VW.YView, 0 ) + 14*(selection+1),false)
draw_set_color(c_white)
draw_rectangle(__view_get( e__VW.XView, 0 ) + 130,__view_get( e__VW.YView, 0 ) + 2,__view_get( e__VW.XView, 0 ) + 318,__view_get( e__VW.YView, 0 ) + 238,true)

draw_rectangle_color(__view_get( e__VW.XView, 0 ) + 2,__view_get( e__VW.YView, 0 ) + 2,__view_get( e__VW.XView, 0 ) + 126,__view_get( e__VW.YView, 0 ) + 22,c_navy,c_navy,c_black,c_black,false)
draw_rectangle_color(__view_get( e__VW.XView, 0 ) + 6,__view_get( e__VW.YView, 0 ) + 6,__view_get( e__VW.XView, 0 ) + 122,__view_get( e__VW.YView, 0 ) + 18,c_black,c_black,c_navy,c_navy,false)
draw_rectangle(__view_get( e__VW.XView, 0 ) + 2,__view_get( e__VW.YView, 0 ) + 2,__view_get( e__VW.XView, 0 ) + 126,__view_get( e__VW.YView, 0 ) + 22,true)

i = scroll
j = 0
repeat(17)
{
	if ds_grid_get(global.dsgrid_bag,(pocket*2)-1,i) != 0
	{
		draw_text(__view_get( e__VW.XView, 0 ) + 134,__view_get( e__VW.YView, 0 ) + 14*j,ds_grid_get(global.dsgrid_bag,(pocket*2)-2,i))
		draw_text(__view_get( e__VW.XView, 0 ) + 300,__view_get( e__VW.YView, 0 ) + 14*j,":" + string(ds_grid_get(global.dsgrid_bag,(pocket*2)-1,i)))
	}
	i += 1
	j += 1
}

draw_set_halign(fa_center)
switch pocket
{
	case 1:
	draw_text(__view_get( e__VW.XView, 0 ) + 64,__view_get( e__VW.YView, 0 ) + 6,"Items")
	break
	case 2:
	draw_text(__view_get( e__VW.XView, 0 ) + 64,__view_get( e__VW.YView, 0 ) + 6,"Tools")
	break
	case 3:
	draw_text(__view_get( e__VW.XView, 0 ) + 64,__view_get( e__VW.YView, 0 ) + 6,"Moves")
	break
}