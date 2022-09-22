/// @description Insert description here
// You can write your code in this editor
if stage < 7
{
	stage += 1
}

if keyboard_check_pressed(global.back_button)
{
	audio_play_sound(sfx_back,0,0)
	alarm[11] = 5
	global.battlephone = -1
}

if keyboard_check_pressed(global.select_button)
{
	audio_play_sound(sfx_decision,0,0)
	if global.phones[selection].hp > 0
	{
		global.battlephone = selection
		instance_destroy()
	}
}

if keyboard_check_pressed(vk_up)
{
	if selection > 0 and selected == -1
	{
		audio_play_sound(sfx_cursor,0,0)
		selection -= 1
	}
}

if keyboard_check_pressed(vk_down)
{
	if selection < 5 and selected == -1
	{
		audio_play_sound(sfx_cursor,0,0)
		selection += 1
	}
}