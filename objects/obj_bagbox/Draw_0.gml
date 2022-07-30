/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_left)
show_box(130,2,318,238,c_navy)
draw_set_colour(c_blue)
draw_rectangle(__view_get( e__VW.XView, 0 ) + 130,__view_get( e__VW.YView, 0 ) + (14*(selection+1))-12,__view_get( e__VW.XView, 0 ) + 318,__view_get( e__VW.YView, 0 ) + 14*(selection+1),false)
show_box(2,2,126,22,c_navy)
show_box(2,130,126,238,c_navy)

draw_sprite(spr_bag,pocket,__view_get( e__VW.XView, 0 )+16,__view_get( e__VW.YView, 0 ) + 32)

draw_set_colour(c_white)
i = scroll
j = 0
repeat(17)
{
	if global.bag[pocket][i].count
	{
		draw_text(__view_get( e__VW.XView, 0 ) + 134,__view_get( e__VW.YView, 0 ) + 14*j, global.items[global.bag[pocket][i].item].name)
		draw_text(__view_get( e__VW.XView, 0 ) + 300,__view_get( e__VW.YView, 0 ) + 14*j,":" + string(global.bag[pocket][i].count))
	}
	i += 1
	j += 1
}
draw_text_ext(__view_get( e__VW.XView, 0 ) + 6,__view_get( e__VW.YView, 0 ) + 134, global.items[global.bag[pocket][i].item].description, 14, 128)

draw_set_halign(fa_center)
switch pocket
{
	case 0:
	draw_text(__view_get( e__VW.XView, 0 ) + 64,__view_get( e__VW.YView, 0 ) + 6,"Items")
	break
	case 1:
	draw_text(__view_get( e__VW.XView, 0 ) + 64,__view_get( e__VW.YView, 0 ) + 6,"Tools")
	break
	case 2:
	draw_text(__view_get( e__VW.XView, 0 ) + 64,__view_get( e__VW.YView, 0 ) + 6,"Moves")
	break
}