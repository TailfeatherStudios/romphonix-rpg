if !instance_exists(obj_parser) and global.gamepaused == 0
{
	if keyboard_check(vk_left)
	{
		if !place_meeting(x-2,y,obj_collide) or keyboard_check(vk_control)
		{
			if keyboard_check(vk_shift)
			{
				x -= 2
			}
			else
			{
				x -= 1
			}
		}
	    sprite_index = spr_playerleft
	    image_speed = 0.1
	    dir = 0
	}
	if keyboard_check(vk_right)
	{
		if !place_meeting(x+2,y,obj_collide) or keyboard_check(vk_control)
		{
			if keyboard_check(vk_shift)
			{
				x += 2
			}
			else
			{
				x += 1
			}
		}
	    sprite_index = spr_playerright
	    image_speed = 0.1
	    dir = 3
	}
	if keyboard_check(vk_up)
	{
		if !place_meeting(x,y-2,obj_collide) or keyboard_check(vk_control)
		{
			if keyboard_check(vk_shift)
			{
				y -= 2
			}
			else
			{
				y -= 1
			}
		}
	    sprite_index = spr_playerup
	    image_speed = 0.1
	    dir = 1
	}
	if keyboard_check(vk_down)
	{
		if !place_meeting(x,y+2,obj_collide) or keyboard_check(vk_control)
		{
			if keyboard_check(vk_shift)
			{
				y += 2
			}
			else
			{
				y += 1
			}
		}
	    sprite_index = spr_playerdown
	    image_speed = 0.1
	    dir = 2
	}
	if !keyboard_check(vk_up) and !keyboard_check(vk_down) and !keyboard_check(vk_left) and !keyboard_check(vk_right)
	{
	    image_speed = 0
	    image_index = 0
	}

	if keyboard_check_pressed(global.back_button)
	{
	    instance_create(0,0,obj_menubox)
	}
	
	switch dir
	{
		case 0:
		instance_create_depth(x-16,y,0,obj_looking_at)
		break
		case 1:
		instance_create_depth(x,y-16,0,obj_looking_at)
		break
		case 2:
		instance_create_depth(x,y+16,0,obj_looking_at)
		break
		case 3:
		instance_create_depth(x+16,y,0,obj_looking_at)
		break
	}
}

