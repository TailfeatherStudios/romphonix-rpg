function give_tool(item, count)
{
	for (var i = 0; i < 20; i++)
	{
		if !global.bag[1][i].item
		{
			global.bag[1][i].item = item
			global.bag[1][i].count = count
			return 1
		}
		else if global.bag[1][i].item == item
		{
			global.bag[1][i].count += count
			return 1
		}
	}
	return -1
}