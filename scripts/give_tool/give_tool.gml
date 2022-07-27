function give_tool(item, count)
{
	for (var i = 0; i < 20; i++)
	{
		if !global.bag_tools[i].item
		{
			global.bag_tools[i].item = item
			global.bag_tools[i].count = count
			return 1
		}
		else if global.bag_tools[i].item == item
		{
			global.bag_tools[i].count += count
			return 1
		}
	}
	return -1
}