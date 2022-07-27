if keyboard_check_pressed(global.back_button)
{
    alarm[11] = 5
}

if stage < 7
{
	stage += 1
}

if keyboard_check_pressed(vk_up)
{
	if selection > 0
	{
		audio_play_sound(sfx_beep,0,0)
		selection -= 1
	}
}

if keyboard_check_pressed(vk_down)
{
	if selection < 5
	{
		audio_play_sound(sfx_beep,0,0)
		selection += 1
	}
}

if keyboard_check_pressed(global.select_button)
{
	audio_play_sound(sfx_beep,0,0)
    alarm[selection] = 5
}