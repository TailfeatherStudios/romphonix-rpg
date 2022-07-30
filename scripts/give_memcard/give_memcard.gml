function give_memcard(item, count)
{
	for (var i = 0; i < 20; i++)
	{
		if !global.bag[2][i].item
		{
			global.bag[2][i].item = item
			global.bag[2][i].count = count
			return 1
		}
		else if global.bag[2][i].item == item
		{
			global.bag[2][i].count += count
			return 1
		}
	}
	return -1
}