/// @description Insert description here
// You can write your code in this editor
display_set_gui_size(320, 240);

draw_set_color(c_white)
draw_set_halign(fa_center)
if stage > 0
{
	show_box(2,2,126,30,c_navy)
}
if stage > 1
{
	show_box(130,2,318,126,c_navy)
}
if stage > 2
{
	show_box(2,34,126,238,c_navy)
}
if stage > 3
{
	show_box(130,130,318,238,c_navy)
}
//draw_set_color(c_blue)
//draw_rectangle(2,54,126,72,false)
draw_set_color(c_white)
draw_text(64,8,"Collection")
//draw_text_ext(64,40,"LG LGC-330W\nLG TP-1100\nLG TM-510\nLG TP-5200\nLG TP-5250\nLG VX-1\nLG VX-10\nLG 4NE1\nLG VX-2000\nLG LX-5350\nLG VX-4400\nLG LX-1200\nLG VX-3100",16,128)
draw_set_halign(fa_left)
//draw_text_ext(136,138,"An early phone from LG. Features a large display, web capabilities and two games.\n\nRarity: ***\nYear: 2000",16,192)
draw_text_ext(136,138,global.wildphones[selection].description,16,192)

draw_text(135, 220, "Rarity:")
draw_sprite(spr_rarity, global.wildphones[selection].rarity, 180, 220)

year = "unknown"
if (variable_struct_exists(global.wildphones[selection], "year"))
{
	year = string(global.wildphones[selection].year)
}
draw_text(246, 220, "Year: " + year)
draw_sprite(get_phone_sprite(global.wildphones[selection]), 0, 192, 30)

// Draw selection highlight
draw_set_color(c_blue)
draw_rectangle(2,14*(selection - scroll)+40,126,14*(selection - scroll) + 54,false)

draw_set_colour(c_white)
draw_set_halign(fa_center)
i = scroll
j = 0
repeat(14)
{
	if i < array_length(global.wildphones)
	{
		draw_text(64,40 + 14*j, global.wildphones[i].brand + " " + global.wildphones[i].model)
	}
	i += 1
	j += 1
}
