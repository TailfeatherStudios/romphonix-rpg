function give_phone_box(number, level, box)
{
	for (var i = 0; i < array_length(global.phoneBox[box]); i++)
	{
		if !string_length(global.phoneBox[box][i].model)
		{
			global.phoneBox[box][i].brand = global.wildphones[number].brand
			global.phoneBox[box][i].model = global.wildphones[number].model
			global.phoneBox[box][i].description = global.wildphones[number].description
			global.phoneBox[box][i].fictional = global.wildphones[number].fictional
			global.phoneBox[box][i].icon = global.wildphones[number].icon
			
			global.phoneBox[box][i].hp = global.wildphones[number].battery
			global.phoneBox[box][i].maxHP = global.wildphones[number].battery
			global.phoneBox[box][i].energy = 100
			
			global.phoneBox[box][i].level = level
			global.phoneBox[box][i].Exp = 0
			global.phoneBox[box][i].maxExp = floor(global.wildphones[number].baseExp*((level*1.5)+level))
			global.phoneBox[box][i].baseExp = global.wildphones[number].baseExp;
			
			global.phoneBox[box][i].attack = global.wildphones[number].attack
			global.phoneBox[box][i].defense = global.wildphones[number].defense
			global.phoneBox[box][i].weight = global.wildphones[number].weight
			
			var minStatus = 1
			if irandom_range(1, global.wildphones[number].brokenChance) == 1 minStatus = 0
			global.phoneBox[box][i].screenStatus = irandom_range(minStatus,3)
			global.phoneBox[box][i].boardStatus = irandom_range(minStatus,3)
			global.phoneBox[box][i].coverStatus = irandom_range(minStatus,3)
			global.phoneBox[box][i].batteryStatus = irandom_range(minStatus,3)
			
			if !global.phoneBox[box][i].batteryStatus
			{
				global.phoneBox[box][i].hp = 0
				global.phoneBox[box][i].maxHP = 1
			}
			
			global.seen[number] = true
			global.caught[number] = true
			return 1
		}
	}
	return -1
}