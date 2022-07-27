// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_game()
{
	ini_open("save.ini")
	global.gotox = ini_read_real("DATA","X",0)
	global.gotoy = ini_read_real("DATA","Y",0)
	gotoroom = ini_read_real("DATA","ROOM",0)
	global.room_name = ini_read_string("DATA","ROOMNAME","NO DATA!!")
	global.money = ini_read_real("DATA","MONEY",500)
	global.seed = ini_read_real("DATA","SEED",global.seed)
	global.playername = ini_read_string("DATA","PLAYERNAME","Player")
	ini_close()	
	buffer = buffer_load("bag.tfs")
	load = buffer_read(buffer,buffer_string)
	global.bag = json_parse(load)
	
	buffer = buffer_load("bag_tools.tfs")
	load = buffer_read(buffer,buffer_string)
	global.bag_tools = json_parse(load)
	
	buffer = buffer_load("bag_memcards.tfs")
	load = buffer_read(buffer,buffer_string)
	global.bag_memcards = json_parse(load)
	
	buffer = buffer_load("phones.tfs")
	load = buffer_read(buffer,buffer_string)
	global.phones = json_parse(load)
	
	random_set_seed(global.seed)
	room = gotoroom
}