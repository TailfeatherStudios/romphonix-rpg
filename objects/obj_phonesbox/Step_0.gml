/// @description Insert description here
// You can write your code in this editor
if stage < 7
{
	stage += 1
}

if keyboard_check_pressed(ord("X"))
{
	audio_play_sound(sfx_beep,0,0)
	if selected == -1
	{
		alarm[11] = 5
	}
	else
	{
		selected = -1
	}
}

if keyboard_check_pressed(ord("Z"))
{
	if selected == -1
	{
		audio_play_sound(sfx_beep,0,0)
		selected = selection
	}
}

if keyboard_check_pressed(vk_up)
{
	if selection > 0 and selected == -1
	{
		audio_play_sound(sfx_beep,0,0)
		selection -= 1
	}
}

if keyboard_check_pressed(vk_down)
{
	if selection < 5 and selected == -1
	{
		audio_play_sound(sfx_beep,0,0)
		selection += 1
	}
}