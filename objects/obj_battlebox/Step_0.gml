/// @description Insert description here
// You can write your code in this editor

if stage < 64 and introdone == 0
{
	stage += 1
}
else
{
	introdone = 1
}

if audio_sound_get_track_position(song) > 58.697
{
	audio_sound_set_track_position(song,audio_sound_get_track_position(song) - 50.766)
}

if phase == 1
{
	if global.battlephone == -1
	{
		phase = 999
		current_message = "You forfeit the battle..."
	}
	else
	{
		phase = 2
		current_message = "You choose your " + global.phones[global.battlephone].brand + " " + global.phones[global.battlephone].model + "!"
	}
}

if keyboard_check_pressed(vk_up)
{
	if phase == 100
	{
		if selection > 0
		{
			audio_play_sound(sfx_beep,0,0)
			selection -= 1
		}
	}
}
if keyboard_check_pressed(vk_down)
{
	if phase == 100
	{
		if selection < 3
		{
			audio_play_sound(sfx_beep,0,0)
			selection += 1
		}
	}
}

if keyboard_check_pressed(global.select_button)
{
	audio_play_sound(sfx_beep,0,0)
	switch phase
	{
		case 0:
		if global.phones[0].model = ""
		{
			phase = 999
			current_message = "Too bad! You have no phones..."
		}
		else
		{
			phase = 1
			instance_create_depth(0,0,-100,obj_battlephonesbox)
		}
		break
		case 2:
		phase = 100
		selection = 0
		current_message = "Command?"
		break
		default:
		instance_destroy()
		break
	}
}
