/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_left)
show_box(130,2,318,238,c_navy)
draw_set_colour(c_blue)
draw_rectangle(130,(14*(selection+1))-12,318,14*(selection+1),false)
show_box(2,2,126,22,c_navy)
show_box(2,130,126,238,c_navy)

draw_sprite(spr_bag,pocket,16,32)

draw_set_colour(c_white)
i = scroll
j = 0
repeat(17)
{
	if global.bag[pocket][i].count
	{
		draw_text(134,14*j, global.items[global.bag[pocket][i].item].name)
		draw_text(300,14*j,":" + string(global.bag[pocket][i].count))
	}
	i += 1
	j += 1
}
draw_text_ext(6,134, global.items[global.bag[pocket][selection].item].description, 14, 128)

draw_set_halign(fa_center)
switch pocket
{
	case 0:
	draw_text(64,6,"Items")
	break
	case 1:
	draw_text(64,6,"Tools")
	break
	case 2:
	draw_text(64,6,"Moves")
	break
}