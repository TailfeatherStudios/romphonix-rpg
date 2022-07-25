global.playername = "Player"
global.gotox = 0
global.gotoy = 0
global.money = 500
global.gamepaused = 0

global.dsgrid_phones = ds_grid_create(24,6)
global.dsgrid_phonesbox1 = ds_grid_create(24,100)
global.dsgrid_bag = ds_grid_create(6,20)


global.dsgrid_wildphones = load_csv("wildphones.csv")
global.dsgrid_items = load_csv("item.csv")

randomise()
global.seed = irandom_range(0,16777216)
random_set_seed(global.seed)

room_goto(rm_title)