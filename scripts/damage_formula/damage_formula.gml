// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function damage_formula(target_you){
	if target_you == 1
	{
		temp = global.phones[global.battlephone].defense
		if global.phones[global.battlephone].coverStatus == 0
		{
			temp = 0
		}
		if global.phones[global.battlephone].coverStatus == 1
		{
			temp *= 0.8
		}
		if global.phones[global.battlephone].coverStatus == 3
		{
			temp *= 1.2
		}
		atk = enemy_atk
		atk += irandom_range(-atk/4,atk/4)
		atk -= temp
		atk = floor(atk)
		atk *= 5
		if atk < 0
		{
			atk = 0
		}			
	}
	else
	{
		temp = global.phones[global.battlephone].attack
		if global.phones[global.battlephone].screenStatus == 0
		{
			temp = 0
		}
		if global.phones[global.battlephone].screenStatus == 1
		{
			temp *= 0.8
		}
		if global.phones[global.battlephone].screenStatus == 3
		{
			temp *= 1.2
		}
		atk = temp
		atk += irandom_range(-atk/4,atk/4)
		atk -= enemy_def/2
		atk = floor(atk)
		atk *= 5
		if atk < 0
		{
			atk = 0
		}
	}
}