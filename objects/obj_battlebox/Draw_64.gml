/// @description Insert description here
// You can write your code in this editor
display_set_gui_size(320, 240)

show_box(160-stage,96-stage,160+stage,96+stage,c_navy)

if introdone == 1
{
	draw_sprite(get_phone_sprite(global.wildphones[wildphone]),0,160-32,64)
}

show_box(2,192,318,238,c_navy)
draw_set_colour(c_white)
draw_set_valign(fa_left)
draw_text_ext(4,194,current_message,16,312)

if phase == 100
{
	show_box(2,32,92,126,c_navy)
	show_box(2,130,92,160,c_navy)
	draw_set_colour(c_blue)
	draw_rectangle(2,(14*selection)+32,92,(14*selection)+46,false)
	draw_set_colour(c_white)
	draw_text(6,32,"Fight\nSwitch\nItems\nRun")
}