// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_game_profile(){
	ini_open("save.ini")
	profile_room_name = ini_read_string("DATA","ROOMNAME","NO DATA!!")
	profile_money = ini_read_real("DATA","MONEY",0)
	profile_seed = ini_read_real("DATA","SEED",global.seed)
	ini_close()
}