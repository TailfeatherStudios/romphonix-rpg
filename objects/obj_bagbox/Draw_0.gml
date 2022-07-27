/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_left)
show_box(130,2,318,238,c_navy)
draw_set_colour(c_blue)
draw_rectangle(__view_get( e__VW.XView, 0 ) + 130,__view_get( e__VW.YView, 0 ) + (14*(selection+1))-12,__view_get( e__VW.XView, 0 ) + 318,__view_get( e__VW.YView, 0 ) + 14*(selection+1),false)
show_box(2,2,126,22,c_navy)
show_box(2,130,126,238,c_navy)

draw_sprite(spr_bag,pocket-1,__view_get( e__VW.XView, 0 )+16,__view_get( e__VW.YView, 0 ) + 32)

draw_set_colour(c_white)
i = scroll
j = 0
repeat(17)
{
	if ds_grid_get(global.dsgrid_bag,(pocket*2)-1,i) != 0
	{
		draw_text(__view_get( e__VW.XView, 0 ) + 134,__view_get( e__VW.YView, 0 ) + 14*j,variable_struct_get(global.array_items[ds_grid_get(global.dsgrid_bag,(pocket*2)-2,i)],"name"))
		draw_text(__view_get( e__VW.XView, 0 ) + 300,__view_get( e__VW.YView, 0 ) + 14*j,":" + string(ds_grid_get(global.dsgrid_bag,(pocket*2)-1,i)))
	}
	i += 1
	j += 1
}
draw_text_ext(__view_get( e__VW.XView, 0 ) + 6,__view_get( e__VW.YView, 0 ) + 134,variable_struct_get(global.array_items[ds_grid_get(global.dsgrid_bag,(pocket*2)-2,selection+scroll)],"description"),14,128)

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