// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function condition_to_string(number){
	if number == 0
	{
		return "Broken"
	}
	else if number == 1
	{
		return "Bad"
	}
	else if number == 2
	{
		return "OK"
	}
	else if number == 3
	{
		return "Good"
	}
}