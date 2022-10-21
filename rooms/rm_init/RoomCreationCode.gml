global.playername = "Player"
global.gotox = 0
global.gotoy = 0
global.money = 500
global.gamepaused = 0

global.select_button = ord("L")
global.back_button = ord("K")

for (var i = 0; i < 9999; i++)
{
	global.vars[i] = 0
}

Phone = function() constructor {
    brand = ""
    model = ""
    description = ""
	fictional = false
	icon = 0
	sprite = "new_candybar"
	hp = 0
	maxHP = 0
	energy = 0
	level = 0
	Exp = 0
	maxExp = 0
	baseExp = 0
	attack = 0
	defense = 0
	weight = 0
	brokenChance = 0
	screenStatus = 0
	boardStatus = 0
	coverStatus = 0
	batteryStatus = 0
	skill1 = 0
	skill2 = 0
	skill3 = 0
	skill4 = 0
}

Item = function() constructor {
	item = 0
	count = 0
}

Skill = function() constructor {
    learnBy = ""
}

for (var i = 0; i < 6; i++) {
    global.phones[i] = new Phone(); 
}

for (var i = 0; i < 40; i++) {
    global.phoneBox[0][i] = new Phone(); 
	global.phoneBox[1][i] = new Phone(); 
	global.phoneBox[2][i] = new Phone(); 
	global.phoneBox[3][i] = new Phone(); 
	global.phoneBox[4][i] = new Phone(); 
	global.phoneBox[5][i] = new Phone(); 
	global.phoneBox[6][i] = new Phone(); 
	global.phoneBox[7][i] = new Phone(); 
}

for (var i = 0; i < 20; i++) {
	global.bag[0][i] = new Item();
	global.bag[1][i] = new Item();
	global.bag[2][i] = new Item();
}

global.buffer_wildphones = buffer_load("phones.json")
str = buffer_read(global.buffer_wildphones, buffer_string)
global.wildphones = json_parse(str)
buffer_delete(global.buffer_wildphones)

for (var i = 0; i < 150; i++) {
	global.seen[i] = false
	global.caught[i] = false
}

global.buffer_items = buffer_load("items.json")
str = buffer_read(global.buffer_items, buffer_string)
global.items = json_parse(str)
buffer_delete(global.buffer_items)

global.buffer_skills = buffer_load("skills.json")
str = buffer_read(global.buffer_skills, buffer_string)
global.skills = json_parse(str)
buffer_delete(global.buffer_skills)

randomise()
global.seed = irandom_range(0,16777216)
random_set_seed(global.seed)

global.start_date = string(current_year) + "/" + string(current_month) + "/" + string(current_day)

room_goto(rm_title)