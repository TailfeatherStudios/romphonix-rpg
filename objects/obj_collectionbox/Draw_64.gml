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
desc = "Not much is known about this phone presently."
if global.caught[selection] desc = global.wildphones[selection].description
draw_text_ext(136, 138, desc, 16, 179)

if global.caught[selection] {
	draw_text(135, 220, "Rarity:")
	draw_sprite(spr_rarity, global.wildphones[selection].rarity, 180, 220)

	year = "???"
	if (variable_struct_exists(global.wildphones[selection], "year"))
	{
		year = string(global.wildphones[selection].year)
	}
	draw_text(246, 220, "Year: " + year)
}

spr = spr_unknown_phone
if global.seen[selection] spr = get_phone_sprite(global.wildphones[selection])
draw_sprite(spr, 0, 192, 30)

if global.wildphones[selection].fictional && global.seen[selection] {
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
		draw_set_colour(make_colour_rgb(144, 144, 160))
		if (global.caught[i]) draw_set_colour(c_white)
		model = "???"
		if global.seen[i] model = global.wildphones[i].brand + " " + global.wildphones[i].model
		draw_text(64,40 + 14*j, model)
	}
	i += 1
	j += 1
}

// Draw scroll bar
draw_set_colour(c_white)
draw_rectangle(124,34+scroll,126,40+scroll,false)