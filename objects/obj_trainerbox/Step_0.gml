/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(vk_up) and stage < 2
{
    choice = 0
	audio_play_sound(sfx_beep,0,0)
}

if keyboard_check_pressed(vk_down) and stage < 2
{
    choice = 1
	audio_play_sound(sfx_beep,0,0)
}

if keyboard_check_pressed(global.select_button) and flipping == 0
{
	stage = 0
	flipping = 1
	alarm[0] = 5
	audio_play_sound(sfx_beep,0,0)
}
if keyboard_check_pressed(global.back_button)
{
	audio_play_sound(sfx_beep,0,0)
	alarm[11] = 5
}