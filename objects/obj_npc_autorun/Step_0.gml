if !instance_exists(obj_parser)
{
	p = instance_create(0,0,obj_parser)
	p.commands = commands
	instance_destroy()
}
