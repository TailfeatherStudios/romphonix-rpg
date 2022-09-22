/// @description Insert description here
// You can write your code in this editor
if stage < 7
{
	stage += 1
}

if keyboard_check_pressed(global.back_button)
{
	audio_play_sound(sfx_back,0,0)
	if selected == -1
	{
		alarm[11] = 5
	}
	else
	{
		selected = -1
	}
}

if keyboard_check_pressed(global.select_button)
{
	if selected == -1
	{
		audio_play_sound(sfx_decision,0,0)
		selected = selection
	}
}

if keyboard_check_pressed(vk_up)
{
	if selection > 0 and selected == -1
	{
		audio_play_sound(sfx_cursor,0,0)
		selection -= 1
	}
	else if selection == 0 and scroll > 0
	{
		audio_play_sound(sfx_cursor,0,0)
		scroll -= 1
	}
}

if keyboard_check_pressed(vk_down)
{
	if selection < 16 and selected == -1
	{
		audio_play_sound(sfx_cursor,0,0)
		selection += 1
	}
	else if selection == 16 and scroll < 3
	{
		audio_play_sound(sfx_cursor,0,0)
		scroll += 1
	}
}

if keyboard_check_pressed(vk_left)
{
	if pocket > 0 and selected == -1
	{
		audio_play_sound(sfx_cursor,0,0)
		pocket -= 1
		selection = 0
	}
}

if keyboard_check_pressed(vk_right)
{
	if pocket < 2 and selected == -1
	{
		audio_play_sound(sfx_cursor,0,0)
		pocket += 1
		selection = 0
	}
}