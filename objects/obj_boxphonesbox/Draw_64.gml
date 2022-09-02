/// @description Insert description here
// You can write your code in this editor
display_set_gui_size(320, 240);

show_box(2,2,318,198,c_navy)
show_box(2,202,318,238,c_navy)

draw_set_colour(c_blue)
draw_rectangle(2 + 40 * (selection mod 8),2 + floor(selection/8)*40,40 + 40 * (selection mod 8),38 + floor(selection/8)*40,false)

draw_set_colour(c_white)
draw_set_valign(fa_center)
draw_text(284,202+18,"BOX " + string(boxno+1))

for (var i = 0; i < 4; i++) {
	for (var j = 0; j < 8; j++) {
		if (!string_length(global.phoneBox[boxno][j+i*8].model)) break
	
		// Draw phone icon or fallback to a default icon.
		phoneIcon = "spr_icon_" + global.phoneBox[boxno][j+i*8].icon
		if asset_get_type(phoneIcon) == asset_unknown phoneIcon = "spr_icon_new_candybar"
		
		//draw_sprite(asset_get_index(phoneIcon), -1, 300,20+40*i)
		draw_sprite_stretched(asset_get_index(phoneIcon), frame, 2 + 40*j ,4 + 40*i, 32, 32)
	}
}

draw_text(6,10+202, string(global.phoneBox[boxno][selection].brand) + " " + string(global.phoneBox[boxno][selection].model))
draw_text(6,30+202,"Battery: " + string((global.phoneBox[boxno][selection].hp/global.phoneBox[boxno][selection].maxHP)*100) + "%")
draw_text(160,10+202,"Level " + string(global.phoneBox[boxno][selection].level))
draw_text(160,30+202,"EXP: " + string(global.phoneBox[boxno][selection].Exp) + "/" + string(global.phoneBox[boxno][selection].maxExp))

if selected != -1 && is_string(global.phoneBox[boxno][selected].model)
{
	draw_set_color(c_white)
	draw_rectangle_color(2,2,62,62,c_white,c_white,c_aqua,c_aqua,false)
	draw_rectangle_color(6,6,58,58,c_aqua,c_aqua,c_white,c_white,false)
	draw_rectangle(2,2,62,62,true)
	show_box(66,2,318,62,c_navy)
	show_box(2,66,158,238,c_navy)
	show_box(162,66,318,238,c_navy)
	
	draw_sprite(get_phone_sprite(global.phoneBox[boxno][selected]), -1, 0, 0)
	draw_text(70,10, string(global.phoneBox[boxno][selected].brand + " " + global.phoneBox[boxno][selected].model))
	draw_text(70,24,"Battery: " + string((global.phoneBox[boxno][selected].hp/global.phoneBox[boxno][selected].maxHP)*100) + "%")
	draw_text(160,24,"...Battery Status: " + condition_to_string(global.phoneBox[boxno][selected].batteryStatus))
	draw_text(70,38,"Level " + string(global.phoneBox[boxno][selected].level))
	draw_text(70,52,"EXP: " + string(global.phoneBox[boxno][selected].Exp) + "/" + string(global.phoneBox[boxno][selected].maxExp))
	draw_set_valign(fa_top)
	draw_text(6,70,"AT: " + string(global.phoneBox[boxno][selected].attack))
	switch global.phoneBox[boxno][selected].screenStatus
	{
		case 0:
		draw_set_colour(c_red)
		draw_text(6,70,"------")
		break
		case 1:
		draw_set_colour(c_red)
		draw_text(48,70,"x 0.8")
		break
		case 3:
		draw_set_colour(c_lime)
		draw_text(48,70,"x 1.2")
		break
	}
	
	draw_set_colour(c_white)
	draw_text(6,85,"...Screen Status: " + condition_to_string(global.phoneBox[boxno][selected].screenStatus))
	draw_text(6,105,"DF: " + string(global.phoneBox[boxno][selected].defense))
	switch global.phoneBox[boxno][selected].boardStatus
	{
		case 0:
		draw_set_colour(c_red)
		draw_text(6,105,"------")
		break
		case 1:
		draw_set_colour(c_red)
		draw_text(48,105,"x 0.8")
		break
		case 3:
		draw_set_colour(c_lime)
		draw_text(48,105,"x 1.2")
		break
	}
	
	draw_set_colour(c_white)
	draw_text(6,120,"...Board Status: " + condition_to_string(global.phoneBox[boxno][selected].boardStatus))
	draw_text(6,140,"WT: " + string(global.phoneBox[boxno][selected].weight))
	switch global.phoneBox[boxno][selected].coverStatus
	{
		case 0:
		draw_set_colour(c_red)
		draw_text(6,140,"------")
		break
		case 1:
		draw_set_colour(c_red)
		draw_text(48,140,"x 0.8")
		break
		case 3:
		draw_set_colour(c_lime)
		draw_text(48,140,"x 1.2")
		break
	}
	
	draw_set_colour(c_white)
	draw_text(6,155,"...Cover Status: " + condition_to_string(global.phoneBox[boxno][selected].coverStatus))
	
	draw_text_ext(166,70,global.phoneBox[boxno][selected].description, 16, 152)
	
	// Draw fictional icon if the phone is fictional
	if global.phoneBox[boxno][selected].fictional {
		draw_sprite(spr_fictional, 0, 45,45)
		
		if mouse_x > 45 && mouse_x < 56 {
			if mouse_y > 45 && mouse_y < 56 {
				draw_set_colour(c_white)
				draw_rectangle(mouse_x, mouse_y, mouse_x + 140, mouse_y + 20, false)
				draw_set_colour(c_black)
				draw_text(mouse_x + 3, mouse_y + 3, "This phone is fictional.")
				
			}
		}
	}
}

draw_set_valign(fa_top)