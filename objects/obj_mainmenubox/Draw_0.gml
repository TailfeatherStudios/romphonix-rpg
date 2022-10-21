/// @description Insert description here
// You can write your code in this editor
if pressed_z == 1
{
	draw_set_alpha(0.5)
	draw_set_colour(c_black)
	draw_rectangle(0,0,320,240,false)
	draw_set_alpha(1)
	draw_set_font(fon_dialogue)
	draw_set_color(c_white)
	show_box(62,2+stage,254,94+stage,c_navy)
	if selection == 0
	{
		draw_set_color(c_blue)
		draw_rectangle(62,2+stage,254,94+stage,false)
		draw_set_color(c_white)
	}
	draw_text(66,8+stage,"Continue Game")
	draw_text(66,24+stage,profile_room_name)
	if profile_room_name != "NO DATA!!"
	{
		draw_text(66,40+stage,profile_name)
		draw_text(66,56+stage,"$" + string(profile_money))
		draw_sprite(asset_get_index(profile_playersprite),0,232,20+stage)
	}
	show_box(62,98+stage,254,126+stage,c_navy)
	if selection == 1
	{
		draw_set_color(c_blue)
		draw_rectangle(62,98+stage,254,126+stage,false)
		draw_set_color(c_white)
	}
	draw_text(66,104+stage,"New Game")
	show_box(62,130+stage,254,158+stage,c_navy)
	if selection == 2
	{
		draw_set_color(c_blue)
		draw_rectangle(62,130+stage,254,158+stage,false)
		draw_set_color(c_white)
	}
	draw_text(66,136+stage,"Options")
}