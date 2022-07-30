/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(global.select_button)
{
	if pressed_z == 0
	{
		pressed_z = 1
		stage = 240
		audio_play_sound(sfx_beep,0,0)
	}
	else if selection == 0
	{
		if profile_room_name != "NO DATA!!"
		{
			audio_play_sound(sfx_beep,0,0)
			load_game()
		}
	}
	else if selection == 1
	{
		audio_play_sound(sfx_beep,0,0)
		room_goto(rm_intro)
	}
}



if stage > 0
{
	stage -= 10
}

if keyboard_check_pressed(global.back_button) and pressed_z == 1
{
	pressed_z = 0
	audio_play_sound(sfx_beep,0,0)
}

if keyboard_check_pressed(vk_up) and pressed_z == 1 and selection > 0
{
	selection -= 1
	audio_play_sound(sfx_beep,0,0)
}

if keyboard_check_pressed(vk_down) and pressed_z == 1 and selection < 2
{
	selection += 1
	audio_play_sound(sfx_beep,0,0)
}