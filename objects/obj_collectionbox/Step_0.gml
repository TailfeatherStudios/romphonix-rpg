/// @description Insert description here
// You can write your code in this editor
if stage < 7
{
	stage += 1
}
if keyboard_check_pressed(global.back_button)
{
    alarm[11] = 5
}

if keyboard_check_pressed(vk_up)
{
	if selection > 0
	{
		audio_play_sound(sfx_beep,0,0)
		selection -= 1
		if (selection == scroll - 1) scroll--
	}
}

if keyboard_check_pressed(vk_down)
{
	if selection < array_length(global.wildphones) - 1
	{
		audio_play_sound(sfx_beep,0,0)
		selection++
		if (selection == scroll + 14) scroll++
	}
}

