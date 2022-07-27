function give_item(item, count)
{
	for (var i = 0; i < 20; i++)
	{
		if !global.bag[i].item
		{
			global.bag[i].item = item
			global.bag[i].count = count
			return 1
		}
		else if global.bag[i].item == item
		{
			global.bag[i].count += count
			return 1
		}
	}
	return -1
}