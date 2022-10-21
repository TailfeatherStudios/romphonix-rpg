/// @description Insert description here
// You can write your code in this editor
randomise()
if global.wildphones_thisarea == 0
{
	show_message("Nice try buddy, wild phones can't appear in this area.")
}
else
{
	instance_create_depth(0,0,-10,obj_battlebox)
}