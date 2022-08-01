/// @description Insert description here
// You can write your code in this editor

show_box(160-stage,96-stage,160+stage,96+stage,c_navy)

if introdone == 1
{
	spr = "spr_" + string_replace_all(string_replace_all(string(global.wildphones[wildphone].brand) + " " + string(global.wildphones[wildphone].model), "-", "_"), " ", "_")
	if asset_get_type(spr) == asset_unknown
	{
		spr = "spr_default_phone"
	}
	draw_sprite(asset_get_index(spr),0,__view_get( e__VW.XView, 0 ) + 160-32,__view_get( e__VW.YView, 0 ) + 64)
}

show_box(2,192,318,238,c_navy)
draw_set_colour(c_white)
draw_text_ext(__view_get( e__VW.XView, 0 ) + 4,__view_get( e__VW.YView, 0 ) + 194,global.wildphones[wildphone].brand + " " + global.wildphones[wildphone].model + " appeared!",16,312)