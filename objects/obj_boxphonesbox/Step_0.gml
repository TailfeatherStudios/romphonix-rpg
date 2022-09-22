/// @description Insert description here
// You can write your code in this editor

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
	audio_play_sound(sfx_decision,0,0)
	if selected == -1 && string_length(global.phoneBox[boxno][selection].model)
	{
		selected = selection
	}
}

if keyboard_check_pressed(vk_up)
{
	if selection > 7 and selected == -1
	{
		audio_play_sound(sfx_cursor,0,0)
		selection -= 8
	}
}

if keyboard_check_pressed(vk_down)
{
	if selection < 32 and selected == -1
	{
		audio_play_sound(sfx_cursor,0,0)
		selection += 8
	}
}

if keyboard_check_pressed(vk_left)
{
	audio_play_sound(sfx_cursor,0,0)
	if selection mod 8 = 0
	{
		if boxno == 0
		{
			boxno = 7
		}
		else
		{
			boxno -= 1
		}
		selection += 7
	}
	else
	{
		selection -= 1
	}
}

if keyboard_check_pressed(vk_right)
{
	audio_play_sound(sfx_cursor,0,0)
	if (selection mod 8) = 7
	{
		if boxno == 7
		{
			boxno = 0
		}
		else
		{
			boxno += 1
		}
		selection -= 7
	}
	else
	{
		selection += 1
	}
}