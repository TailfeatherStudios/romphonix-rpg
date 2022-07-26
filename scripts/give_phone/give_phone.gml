// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function give_phone(number,level){
	i = 0
	repeat(6)
	{
		if ds_grid_get(global.dsgrid_phones,0,i) == 0
		{
			ds_grid_set(global.dsgrid_phones,0,i,ds_grid_get(global.dsgrid_wildphones,0,number))
			ds_grid_set(global.dsgrid_phones,1,i,level)
			ds_grid_set(global.dsgrid_phones,2,i,real(ds_grid_get(global.dsgrid_wildphones,2,number)))
			ds_grid_set(global.dsgrid_phones,3,i,real(ds_grid_get(global.dsgrid_wildphones,2,number)))
			ds_grid_set(global.dsgrid_phones,4,i,100)
			ds_grid_set(global.dsgrid_phones,22,i,real(ds_grid_get(global.dsgrid_wildphones,8,number)))
			ds_grid_set(global.dsgrid_phones,6,i,floor(real(ds_grid_get(global.dsgrid_phones,22,i))*((level*1.5)+level)))
			ds_grid_set(global.dsgrid_phones,7,i,ds_grid_get(global.dsgrid_wildphones,1,number))
			ds_grid_set(global.dsgrid_phones,8,i,real(ds_grid_get(global.dsgrid_wildphones,3,number)))
			ds_grid_set(global.dsgrid_phones,9,i,real(ds_grid_get(global.dsgrid_wildphones,4,number)))
			ds_grid_set(global.dsgrid_phones,10,i,real(ds_grid_get(global.dsgrid_wildphones,5,number)))
			ds_grid_set(global.dsgrid_phones,11,i,real(ds_grid_get(global.dsgrid_wildphones,9,number)))
			broken_chance = irandom_range(1,real(ds_grid_get(global.dsgrid_wildphones,7,number)))
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
			ds_grid_set(global.dsgrid_phones,20,i,real(ds_grid_get(global.dsgrid_wildphones,10,number)))
			ds_grid_set(global.dsgrid_phones,21,i,ds_grid_get(global.dsgrid_wildphones,11,number))
			ds_grid_set(global.dsgrid_phones,21,i,string_replace_all(ds_grid_get(global.dsgrid_phones,21,i),";",","))
			ds_grid_set(global.dsgrid_phones,21,i,string_replace_all(ds_grid_get(global.dsgrid_phones,21,i),"~","\""))
			return 1
		}
		else
		{
			i += 1
		}
	}
	return -1
}