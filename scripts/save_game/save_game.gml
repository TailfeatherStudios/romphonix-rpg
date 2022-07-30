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
	ini_close()
	
	save = json_stringify(global.bag)
	buffer = buffer_create(string_byte_length(save)+1,buffer_fixed,1)
    buffer_write(buffer,buffer_string,save)
    buffer_save(buffer,"bag.tfs")
	
	save = json_stringify(global.phones)
	buffer = buffer_create(string_byte_length(save)+1,buffer_fixed,1)
    buffer_write(buffer,buffer_string,save)
    buffer_save(buffer,"phones.tfs")
	
	save = json_stringify(global.phoneBox)
	buffer = buffer_create(string_byte_length(save)+1,buffer_fixed,1)
    buffer_write(buffer,buffer_string,save)
    buffer_save(buffer,"phonebox.tfs")
	
	return 1
}