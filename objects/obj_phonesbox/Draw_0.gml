/// @description Insert description here
// You can write your code in this editor

for (var i = 0; i < stage; i++) {
	draw_set_color(c_black)
	draw_rectangle_color(__view_get( e__VW.XView, 0 ) + 2,__view_get( e__VW.YView, 0 ) + 2+40*i,__view_get( e__VW.XView, 0 ) + 318,__view_get( e__VW.YView, 0 ) + 38+40*i,c_navy,c_navy,c_black,c_black,false)
	draw_rectangle_color(__view_get( e__VW.XView, 0 ) + 6,__view_get( e__VW.YView, 0 ) + 6+40*i,__view_get( e__VW.XView, 0 ) + 314,__view_get( e__VW.YView, 0 ) + 34+40*i,c_black,c_black,c_navy,c_navy,false)
	draw_set_color(c_white)
	draw_rectangle(__view_get( e__VW.XView, 0 ) + 2,__view_get( e__VW.YView, 0 ) + 2+40*i,__view_get( e__VW.XView, 0 ) + 318,__view_get( e__VW.YView, 0 ) + 38+40*i,true)
}

draw_set_colour(c_blue)
draw_rectangle(__view_get( e__VW.XView, 0 ) + 2,__view_get( e__VW.YView, 0 ) + 2 + 40*selection,__view_get( e__VW.XView, 0 ) + 318,__view_get( e__VW.YView, 0 ) + 38 + 40*selection,false)

draw_set_colour(c_white)
draw_set_valign(fa_center)

for (var i = 0; i < 6; i++) {
	if (!is_string(ds_grid_get(global.dsgrid_phones, 0, i))) break
	draw_text(__view_get( e__VW.XView, 0 ) + 6,__view_get( e__VW.YView, 0 ) + 10+40*i, string(ds_grid_get(global.dsgrid_phones,7,i)) + " " + ds_grid_get(global.dsgrid_phones,0,i))
	draw_text(__view_get( e__VW.XView, 0 ) + 6,__view_get( e__VW.YView, 0 ) + 30+40*i,"Battery: " + string((ds_grid_get(global.dsgrid_phones,2,i)/ds_grid_get(global.dsgrid_phones,3,i))*100) + "%")
	draw_text(__view_get( e__VW.XView, 0 ) + 160,__view_get( e__VW.YView, 0 ) + 10+40*i,"Level " + string(ds_grid_get(global.dsgrid_phones,1,i)))
	draw_text(__view_get( e__VW.XView, 0 ) + 160,__view_get( e__VW.YView, 0 ) + 30+40*i,"EXP: " + string(ds_grid_get(global.dsgrid_phones,5,i)) + "/" + string(ds_grid_get(global.dsgrid_phones,6,i)))
	draw_sprite(spr_icons,real(ds_grid_get(global.dsgrid_phones,11,i))*2+frame,__view_get( e__VW.XView, 0 )+300,__view_get( e__VW.YView, 0 )+20+40*i)
}

if selected != -1 && is_string(ds_grid_get(global.dsgrid_phones, 0, selected))
{
	draw_set_color(c_white)
	draw_rectangle_color(__view_get( e__VW.XView, 0 ) + 2,__view_get( e__VW.YView, 0 ) + 2,__view_get( e__VW.XView, 0 ) + 62,__view_get( e__VW.YView, 0 ) + 62,c_white,c_white,c_aqua,c_aqua,false)
	draw_rectangle_color(__view_get( e__VW.XView, 0 ) + 6,__view_get( e__VW.YView, 0 ) + 6,__view_get( e__VW.XView, 0 ) + 58,__view_get( e__VW.YView, 0 ) + 58,c_aqua,c_aqua,c_white,c_white,false)
	draw_rectangle(__view_get( e__VW.XView, 0 ) + 2,__view_get( e__VW.YView, 0 ) + 2,__view_get( e__VW.XView, 0 ) + 62,__view_get( e__VW.YView, 0 ) + 62,true)
	draw_rectangle_color(__view_get( e__VW.XView, 0 ) + 66,__view_get( e__VW.YView, 0 ) + 2,__view_get( e__VW.XView, 0 ) + 318,__view_get( e__VW.YView, 0 ) + 62,c_navy,c_navy,c_black,c_black,false)
	draw_rectangle_color(__view_get( e__VW.XView, 0 ) + 70,__view_get( e__VW.YView, 0 ) + 6,__view_get( e__VW.XView, 0 ) + 314,__view_get( e__VW.YView, 0 ) + 58,c_black,c_black,c_navy,c_navy,false)
	draw_rectangle(__view_get( e__VW.XView, 0 ) + 66,__view_get( e__VW.YView, 0 ) + 2,__view_get( e__VW.XView, 0 ) + 318,__view_get( e__VW.YView, 0 ) + 62,true)
	draw_rectangle_color(__view_get( e__VW.XView, 0 ) + 2,__view_get( e__VW.YView, 0 ) + 66,__view_get( e__VW.XView, 0 ) + 158,__view_get( e__VW.YView, 0 ) + 238,c_navy,c_navy,c_black,c_black,false)
	draw_rectangle_color(__view_get( e__VW.XView, 0 ) + 6,__view_get( e__VW.YView, 0 ) + 70,__view_get( e__VW.XView, 0 ) + 154,__view_get( e__VW.YView, 0 ) + 234,c_black,c_black,c_navy,c_navy,false)
	draw_rectangle(__view_get( e__VW.XView, 0 ) + 2,__view_get( e__VW.YView, 0 ) + 66,__view_get( e__VW.XView, 0 ) + 158,__view_get( e__VW.YView, 0 ) + 238,true)
	draw_rectangle_color(__view_get( e__VW.XView, 0 ) + 162,__view_get( e__VW.YView, 0 ) + 66,__view_get( e__VW.XView, 0 ) + 318,__view_get( e__VW.YView, 0 ) + 238,c_navy,c_navy,c_black,c_black,false)
	draw_rectangle_color(__view_get( e__VW.XView, 0 ) + 166,__view_get( e__VW.YView, 0 ) + 70,__view_get( e__VW.XView, 0 ) + 314,__view_get( e__VW.YView, 0 ) + 234,c_black,c_black,c_navy,c_navy,false)
	draw_rectangle(__view_get( e__VW.XView, 0 ) + 162,__view_get( e__VW.YView, 0 ) + 66,__view_get( e__VW.XView, 0 ) + 318,__view_get( e__VW.YView, 0 ) + 238,true)
	draw_sprite(spr_phonesprites,ds_grid_get(global.dsgrid_phones,20,selected),__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ))
	draw_text(__view_get( e__VW.XView, 0 ) + 70,__view_get( e__VW.YView, 0 ) + 10, string(ds_grid_get(global.dsgrid_phones,7,selected)) + " " + ds_grid_get(global.dsgrid_phones,0,selected))
	draw_text(__view_get( e__VW.XView, 0 ) + 70,__view_get( e__VW.YView, 0 ) + 24,"Battery: " + string((ds_grid_get(global.dsgrid_phones,2,selected)/ds_grid_get(global.dsgrid_phones,3,selected))*100) + "%")
	draw_text(__view_get( e__VW.XView, 0 ) + 160,__view_get( e__VW.YView, 0 ) + 24,"...Battery Status: " + condition_to_string(ds_grid_get(global.dsgrid_phones,15,selected)))
	draw_text(__view_get( e__VW.XView, 0 ) + 70,__view_get( e__VW.YView, 0 ) + 38,"Level " + string(ds_grid_get(global.dsgrid_phones,1,selected)))
	draw_text(__view_get( e__VW.XView, 0 ) + 70,__view_get( e__VW.YView, 0 ) + 52,"EXP: " + string(ds_grid_get(global.dsgrid_phones,5,selected)) + "/" + string(ds_grid_get(global.dsgrid_phones,6,selected)))
	draw_set_valign(fa_top)
	draw_text(__view_get( e__VW.XView, 0 ) + 6,__view_get( e__VW.YView, 0 ) + 70,"AT: " + string(ds_grid_get(global.dsgrid_phones,8,selected)))
	switch ds_grid_get(global.dsgrid_phones,12,selected)
	{
		case 0:
		draw_set_colour(c_red)
		draw_text(__view_get( e__VW.XView, 0 ) + 6,__view_get( e__VW.YView, 0 ) + 70,"------")
		draw_set_colour(c_white)
		break
		case 1:
		draw_set_colour(c_red)
		draw_text(__view_get( e__VW.XView, 0 ) + 48,__view_get( e__VW.YView, 0 ) + 70,"x 0.8")
		draw_set_colour(c_white)
		break
		case 3:
		draw_set_colour(c_lime)
		draw_text(__view_get( e__VW.XView, 0 ) + 48,__view_get( e__VW.YView, 0 ) + 70,"x 1.2")
		draw_set_colour(c_white)
		break
	}
	draw_text(__view_get( e__VW.XView, 0 ) + 6,__view_get( e__VW.YView, 0 ) + 85,"...Screen Status: " + condition_to_string(ds_grid_get(global.dsgrid_phones,12,selected)))
	draw_text(__view_get( e__VW.XView, 0 ) + 6,__view_get( e__VW.YView, 0 ) + 105,"DF: " + string(ds_grid_get(global.dsgrid_phones,9,selected)))
	switch ds_grid_get(global.dsgrid_phones,13,selected)
	{
		case 0:
		draw_set_colour(c_red)
		draw_text(__view_get( e__VW.XView, 0 ) + 6,__view_get( e__VW.YView, 0 ) + 105,"------")
		draw_set_colour(c_white)
		break
		case 1:
		draw_set_colour(c_red)
		draw_text(__view_get( e__VW.XView, 0 ) + 48,__view_get( e__VW.YView, 0 ) + 105,"x 0.8")
		draw_set_colour(c_white)
		break
		case 3:
		draw_set_colour(c_lime)
		draw_text(__view_get( e__VW.XView, 0 ) + 48,__view_get( e__VW.YView, 0 ) + 105,"x 1.2")
		draw_set_colour(c_white)
		break
	}
	draw_text(__view_get( e__VW.XView, 0 ) + 6,__view_get( e__VW.YView, 0 ) + 120,"...Board Status: " + condition_to_string(ds_grid_get(global.dsgrid_phones,13,selected)))
	draw_text(__view_get( e__VW.XView, 0 ) + 6,__view_get( e__VW.YView, 0 ) + 140,"WT: " + string(ds_grid_get(global.dsgrid_phones,10,selected)))
	switch ds_grid_get(global.dsgrid_phones,14,selected)
	{
		case 0:
		draw_set_colour(c_red)
		draw_text(__view_get( e__VW.XView, 0 ) + 6,__view_get( e__VW.YView, 0 ) + 140,"------")
		draw_set_colour(c_white)
		break
		case 1:
		draw_set_colour(c_red)
		draw_text(__view_get( e__VW.XView, 0 ) + 48,__view_get( e__VW.YView, 0 ) + 140,"x 0.8")
		draw_set_colour(c_white)
		break
		case 3:
		draw_set_colour(c_lime)
		draw_text(__view_get( e__VW.XView, 0 ) + 48,__view_get( e__VW.YView, 0 ) + 140,"x 1.2")
		draw_set_colour(c_white)
		break
	}
	draw_text(__view_get( e__VW.XView, 0 ) + 6,__view_get( e__VW.YView, 0 ) + 155,"...Cover Status: " + condition_to_string(ds_grid_get(global.dsgrid_phones,14,selected)))
	
	draw_text_ext(__view_get( e__VW.XView, 0 ) + 166,__view_get( e__VW.YView, 0 ) + 70,ds_grid_get(global.dsgrid_phones,21,selected),16,160)
}