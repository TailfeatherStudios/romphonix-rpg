/// @description Insert description here
// You can write your code in this editor
display_set_gui_size(320, 240);

show_box(160-stage,96-stage,160+stage,96+stage,c_navy)

if introdone == 1
{
	draw_sprite(get_phone_sprite(global.wildphones[wildphone]),0,160-32,64)
}

show_box(2,192,318,238,c_navy)
draw_set_colour(c_white)
draw_text_ext(4,194,global.wildphones[wildphone].brand + " " + global.wildphones[wildphone].model + " appeared!",16,312)