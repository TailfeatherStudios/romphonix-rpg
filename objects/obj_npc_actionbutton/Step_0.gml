if collision_rectangle(x-2,y-2,x+18,y+18,obj_looking_at,0,1) and keyboard_check_pressed(global.select_button)
{
	if !instance_exists(obj_parser)
	{
		p = instance_create(0,0,obj_parser)
		p.commands = commands
	}
}

