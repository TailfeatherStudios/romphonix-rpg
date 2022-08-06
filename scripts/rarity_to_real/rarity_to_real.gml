// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function rarity_to_real(number)
{
	switch number {
		case 0: return 24
		case 1: return 16
		case 2: return 8
		case 3: return 4
		case 4: return 2
		case 5: return 1
		default: return 0
	}
}