// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function save_game(){
	ini_open("save.ini")
	ini_write_real("DATA","X",my_x)
	ini_write_real("DATA","Y",my_y)
	ini_write_real("DATA","ROOM",room)
	ini_write_string("DATA","ROOMNAME",global.room_name)
	ini_write_real("DATA","MONEY",global.money)
	ini_write_real("DATA","SEED",global.seed)
	ini_write_string("DATA","PLAYERNAME",global.playername)
	ini_write_string("DSGRID","BAG",ds_grid_write(global.dsgrid_bag))
	ini_write_string("DSGRID","PHONE",ds_grid_write(global.dsgrid_phones))
	ini_write_string("DSGRID","BOX1",ds_grid_write(global.dsgrid_phonesbox1))
	ini_close()
	return 1
}