global.playername = "Player"
global.gotox = 0
global.gotoy = 0
global.money = 500
global.gamepaused = 0

global.dsgrid_phones = ds_grid_create(24,6)
global.dsgrid_phonesbox1 = ds_grid_create(24,100)
global.dsgrid_bag = ds_grid_create(6,20)


global.buffer_wildphones = buffer_load("phones.json")
str = buffer_read(global.buffer_wildphones,buffer_string)
global.array_wildphonespre = json_parse(str)
buffer_delete(global.buffer_wildphones)

global.array_wildphones = [[0,0]];
for (i = 0; i < array_length(global.array_wildphonespre); i++)
{
	array = variable_struct_get_names(global.array_wildphonespre[i]);
	show_debug_message("Variables for struct: " + string(array));
	for (var j = 0; j < array_length(array); j++;)
	{
	    global.array_wildphones[i][j] = string(variable_struct_get(global.array_wildphonespre[i], array[j]));
	}
}

show_message(global.array_wildphones[1])
show_message(global.array_wildphones[1][0])

global.dsgrid_items = load_csv("item.csv")

randomise()
global.seed = irandom_range(0,16777216)
random_set_seed(global.seed)

room_goto(rm_title)