function give_phone(number, level)
{
	for (var i = 0; i < array_length(global.phones); i++)
	{
		if !string_length(global.phones[i].model)
		{
			global.phones[i].brand = global.wildphones[number].brand
			global.phones[i].model = global.wildphones[number].model
			global.phones[i].description = global.wildphones[number].description
			global.phones[i].fictional = global.wildphones[number].fictional
			global.phones[i].icon = global.wildphones[number].icon
			
			global.phones[i].hp = global.wildphones[number].battery
			global.phones[i].maxHP = global.wildphones[number].battery
			global.phones[i].energy = 100
			
			global.phones[i].level = level
			global.phones[i].Exp = 0
			global.phones[i].maxExp = floor(global.wildphones[number].baseExp*((level*1.5)+level))
			global.phones[i].baseExp = global.wildphones[number].baseExp;
			
			global.phones[i].attack = global.wildphones[number].attack
			global.phones[i].defense = global.wildphones[number].defense
			global.phones[i].weight = global.wildphones[number].weight
			
			global.phones[i].skill1 = 0
			global.phones[i].skill2 = 1
			global.phones[i].skill3 = 2
			global.phones[i].skill4 = 3
			
			var minStatus = 1
			if irandom_range(1, global.wildphones[number].brokenChance) == 1 minStatus = 0
			global.phones[i].screenStatus = irandom_range(minStatus,3)
			global.phones[i].boardStatus = irandom_range(minStatus,3)
			global.phones[i].coverStatus = irandom_range(minStatus,3)
			global.phones[i].batteryStatus = irandom_range(minStatus,3)
			
			if !global.phones[i].batteryStatus
			{
				global.phones[i].hp = 0
				global.phones[i].maxHP = 1
			}
			
			global.seen[number] = true
			global.caught[number] = true
			return 1
		}
	}
	return -1
}