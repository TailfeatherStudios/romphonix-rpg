/// @description Insert description here
// You can write your code in this editor
if animation_frame < sprite_get_number(show_animation)
{
	animation_frame += 1
	alarm[1] = 6
}
else
{
	show_animation = 0
	alarm[0] = 15
}

