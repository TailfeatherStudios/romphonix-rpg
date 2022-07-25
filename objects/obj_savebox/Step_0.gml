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

if keyboard_check_pressed(ord("Z"))
{
	if stage == 0
	{
		if choice == 0
		{
			audio_play_sound(sfx_beep,0,0)
			load_game_profile()
			if profile_seed != global.seed
			{
				stage = 1
				choice = 1
			}
			else
			{
				stage = 2
				result = save_game()
				if result == 1
				{
					stage = 3
				}
			}
		}
		else
		{
			audio_play_sound(sfx_beep,0,0)
			alarm[11] = 5
		}
	}
	else if stage == 1
	{
		if choice == 0
		{
			audio_play_sound(sfx_beep,0,0)
			stage = 2
			result = save_game()
			if result == 1
			{
				stage = 3
			}
		}
		else
		{
			audio_play_sound(sfx_beep,0,0)
			alarm[11] = 5
		}
	}
	else if stage == 3
	{
		audio_play_sound(sfx_beep,0,0)
		alarm[11] = 5
	}
}