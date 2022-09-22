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

if phase == 102
{
	if global.battlephone == -1
	{
		phase = 100
		global.battlephone = battlephone_was
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
			player_turn = 0
			enemy_turn = 0
			phase = 100
			selection = 0
			current_message = "Command?"
		break
		case 3:
			if enemy_turn == 1
			{
				phase = 2
			}
			else
			{
				phase = 4
			}
			player_turn = 1
			damage_formula(0)
			enemy_hp -= atk
			if enemy_hp <= 0
			{
				enemy_hp = 0
				phase = 200
			}
			current_message = "The enemy " + global.wildphones[wildphone].brand + " " + global.wildphones[wildphone].model + " took " + string(atk) + " damage."
		break
		case 4:
			phase = 5
			current_message = "The enemy " + global.wildphones[wildphone].brand + " " + global.wildphones[wildphone].model + " attacks!"
		break
		case 5:
			if player_turn == 1
			{
				phase = 2
			}
			else
			{
				phase = 6
			}
			enemy_turn = 1
			damage_formula(1)
			global.phones[global.battlephone].hp -= atk
			if global.phones[global.battlephone].hp <= 0
			{
				global.phones[global.battlephone].hp = 0
				phase = 201
			}
			current_message = "Your " + global.phones[global.battlephone].brand + " " + global.phones[global.battlephone].model + " took " + string(atk) + " damage."
		break
		case 6:
			phase = 3
			current_message = "Your " + global.phones[global.battlephone].brand + " " + global.phones[global.battlephone].model + " attacks!"
		break
		case 100:
			if selection == 0
			{
				if enemy_wt < global.phones[global.battlephone].weight
				{
					current_message = "Your " + global.phones[global.battlephone].brand + " " + global.phones[global.battlephone].model + " attacks!"
					phase = 3
				}
				else
				{
					current_message = "The enemy " + global.wildphones[wildphone].brand + " " + global.wildphones[wildphone].model + " attacks!"
					phase = 5
				}
			}
			else if selection == 1
			{
				battlephone_was = global.battlephone
				phase = 102
				instance_create_depth(0,0,-100,obj_battlephonesbox)
			}
		break
		case 200:
			current_message = "Enemy defeated! Your phone gains " + string(floor(enemy_xp/2)) + "EXP!" 
			global.phones[global.battlephone].Exp += floor(enemy_xp/2)
			phase = 999
		break
		case 201:
			current_message = "Your phone was defeated..." 
			phase = 0
		break
		default:
			instance_destroy()
		break
	}
}
