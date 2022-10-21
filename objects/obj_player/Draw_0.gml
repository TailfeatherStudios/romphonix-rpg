/// @description Insert description here
// You can write your code in this editor
switch dir
{
	case 0:
	realimg = image_index + 8
	break
	case 1:
	realimg = image_index + 4
	break
	case 2:
	realimg = image_index
	break
	case 3:
	realimg = image_index + 12
	break
}

draw_sprite(sprite_index,realimg,x,y)

if image_index == 4
{
	image_index = 0
}