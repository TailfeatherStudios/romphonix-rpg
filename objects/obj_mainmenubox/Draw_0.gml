/// @description Insert description here
// You can write your code in this editor
if pressed_z == 1
{
	draw_set_font(fon_dialogue)
	draw_set_color(c_white)
	draw_rectangle_color(62,2+stage,254,94+stage,c_navy,c_navy,c_black,c_black,false)
	draw_rectangle_color(66,6+stage,250,90+stage,c_black,c_black,c_navy,c_navy,false)
	if selection == 0
	{
		draw_set_color(c_blue)
		draw_rectangle(62,2+stage,254,94+stage,false)
		draw_set_color(c_white)
	}
	draw_rectangle(2,2+stage,318,94+stage,true)
	draw_text(66,8+stage,"Continue Game")
	draw_text(66,24+stage,profile_room_name)
	if profile_room_name != "NO DATA!!"
	{
		draw_text(66,40+stage,"$" + string(profile_money))
	}
	draw_rectangle_color(62,98+stage,254,126+stage,c_navy,c_navy,c_black,c_black,false)
	draw_rectangle_color(66,102+stage,250,122+stage,c_black,c_black,c_navy,c_navy,false)
	if selection == 1
	{
		draw_set_color(c_blue)
		draw_rectangle(62,98+stage,254,126+stage,false)
		draw_set_color(c_white)
	}
	draw_rectangle(2,98+stage,318,126+stage,true)
	draw_text(66,104+stage,"New Game")
	draw_rectangle_color(62,130+stage,254,158+stage,c_navy,c_navy,c_black,c_black,false)
	draw_rectangle_color(66,134+stage,250,154+stage,c_black,c_black,c_navy,c_navy,false)
	if selection == 2
	{
		draw_set_color(c_blue)
		draw_rectangle(62,130+stage,254,158+stage,false)
		draw_set_color(c_white)
	}
	draw_rectangle(2,130+stage,318,158+stage,true)
	draw_text(66,136+stage,"Options")
}