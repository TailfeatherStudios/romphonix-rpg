global.playername = "Player"
global.gotox = 0
global.gotoy = 0
global.money = 500
global.gamepaused = 0

global.select_button = ord("L")
global.back_button = ord("K")

//global.dsgrid_phones = ds_grid_create(24,6)	
//global.dsgrid_phonesbox1 = ds_grid_create(24,100)
//global.bag = ds_grid_create(6,20)

Phone = function() constructor {
    brand = "";
    model = "";
    description = "";
	fictional = false;
	icon = 0;
	sprite = spr_phonesprites;
	hp = 0;
	maxHP = 0;
	energy = 0;
	level = 0;
	Exp = 0;
	maxExp = 0;
	baseExp = 0;
	attack = 0;
	defense = 0;
	weight = 0;
	brokenChance = 0;
	screenStatus = 0;
	boardStatus = 0;
	coverStatus = 0;
	batteryStatus = 0
}

for (var i = 0; i < 6; i++) {
    global.phones[i] = new Phone(); 
}

global.phonebox1 = []
global.bag = []
global.bag_tools = []
global.bag_memcards = []

global.buffer_wildphones = buffer_load("phones.json")
str = buffer_read(global.buffer_wildphones, buffer_string)
global.wildphones = json_parse(str)
buffer_delete(global.buffer_wildphones)

global.buffer_items = buffer_load("items.json")
str = buffer_read(global.buffer_items, buffer_string)
global.items = json_parse(str)
buffer_delete(global.buffer_items)

randomise()
global.seed = irandom_range(0,16777216)
random_set_seed(global.seed)

room_goto(rm_title)