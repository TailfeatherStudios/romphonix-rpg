if collision_rectangle(x-2,y-2,x+18,y+18,obj_player,0,1) and keyboard_check_pressed(global.select_button)
{
	if obj_player.dir == 1 and obj_player.y > y or obj_player.dir == 2 and obj_player.y < y
	or obj_player.dir == 0 and obj_player.x > x or obj_player.dir == 3 and obj_player.x < x
	{
		if !instance_exists(obj_parser)
		{
			p = instance_create(0,0,obj_parser)
			p.commands = commands
		}
	}
}

