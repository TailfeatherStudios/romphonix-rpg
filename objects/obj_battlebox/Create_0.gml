/// @description Insert description here
// You can write your code in this editor
instance_deactivate_all(true)
wildphone = irandom_range(0,array_length(global.wildphones_thisarea))
wildphone = global.wildphones_thisarea[wildphone]
global.seen[wildphone] = true

current_message = global.wildphones[wildphone].brand + " " + global.wildphones[wildphone].model + " appeared!"

enemy_hp = global.wildphones[wildphone].battery
enemy_maxhp = global.wildphones[wildphone].battery
enemy_atk = global.wildphones[wildphone].attack
enemy_def = global.wildphones[wildphone].defense
enemy_wt = global.wildphones[wildphone].weight
enemy_xp = global.wildphones[wildphone].baseExp

atk = 0

player_turn = 0
enemy_turn = 0

stage = 0
phase = 0
introdone = 0
selection = 0
audio_stop_all()
song = audio_play_sound(bgm_battle,0,1)