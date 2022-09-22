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
			cant_select = 0
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
			alarm[0] = 30
			screen_shake = 1
			phase = 5
			current_message = "The enemy " + global.wildphones[wildphone].brand + " " + global.wildphones[wildphone].model + " attacks!"
		break
		case 5:
			screen_shake = 0
			cant_select = 0
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
			show_animation = asset_get_index("spr_default_anim")
			phase = 3
			current_message = "Your " + global.phones[global.battlephone].brand + " " + global.phones[global.battlephone].model + " attacks!"
		break
		case 100:
			if selection == 0
			{
				if enemy_wt < global.phones[global.battlephone].weight
				{
					show_animation = asset_get_index("spr_default_anim")
					current_message = "Your " + global.phones[global.battlephone].brand + " " + global.phones[global.battlephone].model + " attacks!"
					phase = 3
				}
				else
				{
					alarm[0] = 30
					screen_shake = 1
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