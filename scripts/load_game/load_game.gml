// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_game(){
	ini_open("save.ini")
	global.gotox = ini_read_real("DATA","X",0)
	global.gotoy = ini_read_real("DATA","Y",0)
	gotoroom = ini_read_real("DATA","ROOM",0)
	global.room_name = ini_read_string("DATA","ROOMNAME","NO DATA!!")
	global.money = ini_read_real("DATA","MONEY",500)
	global.seed = ini_read_real("DATA","SEED",global.seed)
	global.playername = ini_read_string("DATA","PLAYERNAME","Player")
	ds_grid_read(global.dsgrid_bag,ini_read_string("DSGRID","BAG",0))
	ds_grid_read(global.dsgrid_phones,ini_read_string("DSGRID","PHONE",0))
	ds_grid_read(global.dsgrid_phonesbox1,ini_read_string("DSGRID","BOX1",0))
	ini_close()
	random_set_seed(global.seed)
	room = gotoroom
}