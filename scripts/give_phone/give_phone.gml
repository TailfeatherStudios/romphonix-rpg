// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function give_phone(number,level){
	i = 0
	repeat(6)
	{
		if ds_grid_get(global.dsgrid_phones,0,i) == 0
		{
			ds_grid_set(global.dsgrid_phones,0,i,variable_struct_get(global.array_wildphones[number],"model"))
			ds_grid_set(global.dsgrid_phones,1,i,level)
			ds_grid_set(global.dsgrid_phones,2,i,variable_struct_get(global.array_wildphones[number],"battery"))
			ds_grid_set(global.dsgrid_phones,3,i,variable_struct_get(global.array_wildphones[number],"battery"))
			ds_grid_set(global.dsgrid_phones,4,i,100)
			ds_grid_set(global.dsgrid_phones,22,i,variable_struct_get(global.array_wildphones[number],"baseExp"))
			ds_grid_set(global.dsgrid_phones,6,i,floor(variable_struct_get(global.array_wildphones[number],"baseExp")*((level*1.5)+level)))
			ds_grid_set(global.dsgrid_phones,7,i,variable_struct_get(global.array_wildphones[number],"brand"))
			ds_grid_set(global.dsgrid_phones,8,i,variable_struct_get(global.array_wildphones[number],"attack"))
			ds_grid_set(global.dsgrid_phones,9,i,variable_struct_get(global.array_wildphones[number],"defense"))
			ds_grid_set(global.dsgrid_phones,10,i,variable_struct_get(global.array_wildphones[number],"weight"))
			ds_grid_set(global.dsgrid_phones,11,i,variable_struct_get(global.array_wildphones[number],"icon"))
			broken_chance = irandom_range(1,variable_struct_get(global.array_wildphones[number],"brokenChance"))
			if broken_chance == 1
			{
				ds_grid_set(global.dsgrid_phones,12,i,irandom_range(0,3))
				ds_grid_set(global.dsgrid_phones,13,i,irandom_range(0,3))
				ds_grid_set(global.dsgrid_phones,14,i,irandom_range(0,3))
				ds_grid_set(global.dsgrid_phones,15,i,irandom_range(0,3))
			}
			else
			{
				ds_grid_set(global.dsgrid_phones,12,i,irandom_range(1,3))
				ds_grid_set(global.dsgrid_phones,13,i,irandom_range(1,3))
				ds_grid_set(global.dsgrid_phones,14,i,irandom_range(1,3))
				ds_grid_set(global.dsgrid_phones,15,i,irandom_range(1,3))
			}
			if ds_grid_get(global.dsgrid_phones,15,i) == 0
			{
				ds_grid_set(global.dsgrid_phones,2,i,0)
				ds_grid_set(global.dsgrid_phones,3,i,1)				
			}
			ds_grid_set(global.dsgrid_phones,20,i,variable_struct_get(global.array_wildphones[number],"sprite"))
			ds_grid_set(global.dsgrid_phones,21,i,variable_struct_get(global.array_wildphones[number],"description"))
			ds_grid_set(global.dsgrid_phones,23,i,variable_struct_get(global.array_wildphones[number],"fictional"))
			return 1
		}
		else
		{
			i += 1
		}
	}
	return -1
}