/// @description Insert description here
// You can write your code in this editor
display_set_gui_size(320, 240);

draw_set_color(c_white)
draw_set_halign(fa_center)

// Title box
if stage > 0
{
	show_box(2,2,126,30,c_navy)
}

// Sprite area
if stage > 1
{
	show_box(130,2,318,126,c_navy)
}

// Phone list box
if stage > 2
{
	show_box(2,34,126,238,c_navy)
}

// Description box
if stage > 3
{
	show_box(130,130,318,238,c_navy)
}

draw_set_color(c_white)
draw_text(64,8,"Collection")
draw_set_halign(fa_left)
draw_text_ext(136,138,global.wildphones[selection].description,16,179)

draw_text(135, 220, "Rarity:")
draw_sprite(spr_rarity, global.wildphones[selection].rarity, 180, 220)

year = "???"
if (variable_struct_exists(global.wildphones[selection], "year"))
{
	year = string(global.wildphones[selection].year)
}
draw_text(246, 220, "Year: " + year)

draw_sprite(get_phone_sprite(global.wildphones[selection]), 0, 192, 30)
if global.wildphones[selection].fictional {
	draw_sprite(spr_fictional, 0, 136, 110)
	draw_text(152, 109, "Fictional")
}

// Draw selection highlight
draw_set_color(c_blue)
draw_rectangle(2,14*(selection - scroll)+40,126,14*(selection - scroll) + 54,false)

// Draw phone list text
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

