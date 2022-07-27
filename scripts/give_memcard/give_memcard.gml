function give_memcard(item, count)
{
	for (var i = 0; i < 20; i++)
	{
		if !global.bag_memcards[i].item
		{
			global.bag_memcards[i].item = item
			global.bag_memcards[i].count = count
			return 1
		}
		else if global.bag_memcards[i].item == item
		{
			global.bag_memcards[i].count += count
			return 1
		}
	}
	return -1
}