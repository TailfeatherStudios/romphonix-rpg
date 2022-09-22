/// @description Insert description here
// You can write your code in this editor
display_set_gui_size(320, 240)

show_box(160-stage+shake_mode,96-stage,160+stage+shake_mode,96+stage,c_navy)

if introdone == 1 and enemy_hp > 0
{
	draw_sprite(get_phone_sprite(global.wildphones[wildphone]),0,160-32+shake_mode,64)
}

show_box(2+shake_mode,192,318+shake_mode,238,c_navy)
draw_set_colour(c_white)
draw_set_valign(fa_left)
draw_text_ext(4,194,current_message,16,312)

if phase == 100
{
	show_box(2,32,92,160,c_navy)
	draw_set_colour(c_blue)
	draw_rectangle(2,(14*selection)+32,92,(14*selection)+46,false)
	draw_set_colour(c_white)
	draw_text(6,32,"Fight\nSwitch\nItems\nRun")
}
if phase > 99 and phase < 999
{
	show_box(2,6,318,28,c_navy)
	show_box(2,164,318,188,c_navy)
	draw_set_colour(c_white)
	draw_text(6,168,global.phones[global.battlephone].brand + " " + global.phones[global.battlephone].model)
	draw_text(160,168,"Battery: " + string((global.phones[global.battlephone].hp/global.phones[global.battlephone].maxHP)*100) + "%")
	draw_text(6,10,global.wildphones[wildphone].brand + " " + global.wildphones[wildphone].model)
	draw_text(160,10,"Battery: " + string((enemy_hp/enemy_maxhp)*100) + "%")
}

if show_animation != 0
{
	draw_sprite(show_animation,animation_frame,160,96)
}