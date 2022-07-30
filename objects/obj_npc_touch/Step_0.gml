if collision_rectangle(x-2,y-2,x+18,y+18,obj_player,0,1)
{
	if !instance_exists(obj_parser)
	{
		p = instance_create(0,0,obj_parser)
		p.commands = commands
	}
}

