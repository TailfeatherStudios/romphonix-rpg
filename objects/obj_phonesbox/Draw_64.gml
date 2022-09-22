/// @description Insert description here
// You can write your code in this editor
display_set_gui_size(320, 240);

for (var i = 0; i < stage; i++) {
	show_box(2,2+40*i,318,38+40*i,c_navy)
}

draw_set_colour(c_blue)
draw_rectangle(2,2 + 40*selection,318,38 + 40*selection,false)

draw_set_colour(c_white)
draw_set_valign(fa_center)

for (var i = 0; i < 6; i++) {
	if (!string_length(global.phones[i].model)) break
	draw_text(6,10+40*i, string(global.phones[i].brand) + " " + string(global.phones[i].model))
	draw_text(6,30+40*i,"Battery: " + string((global.phones[i].hp/global.phones[i].maxHP)*100) + "%")
	draw_text(160,10+40*i,"Level " + string(global.phones[i].level))
	draw_text(160,30+40*i,"EXP: " + string(global.phones[i].Exp) + "/" + string(global.phones[i].maxExp))
	
	// Draw phone icon or fallback to a default icon.
	phoneIcon = "spr_icon_" + global.phones[i].icon
	if asset_get_type(phoneIcon) == asset_unknown phoneIcon = "spr_icon_new_candybar"
	
	//draw_sprite(asset_get_index(phoneIcon), -1, 300,20+40*i)
	draw_sprite_stretched(asset_get_index(phoneIcon), frame, 284 ,4 + 40*i, 32, 32)
}

if selected != -1 && is_string(global.phones[selected].model)
{
	draw_set_color(c_white)
	draw_rectangle_color(2,2,62,62,c_white,c_white,c_aqua,c_aqua,false)
	draw_rectangle_color(6,6,58,58,c_aqua,c_aqua,c_white,c_white,false)
	draw_rectangle(2,2,62,62,true)
	show_box(66,2,318,62,c_navy)
	show_box(2,66,158,238,c_navy)
	show_box(162,66,318,238,c_navy)
	
	draw_sprite(get_phone_sprite(global.phones[selected]), -1, 0, 0)
	draw_text(70,10, string(global.phones[selected].brand + " " + global.phones[selected].model))
	draw_text(70,24,"Battery: " + string((global.phones[selected].hp/global.phones[selected].maxHP)*100) + "%")
	draw_text(160,24,"...Battery Status: " + condition_to_string(global.phones[selected].batteryStatus))
	draw_text(70,38,"Level " + string(global.phones[selected].level))
	draw_text(70,52,"EXP: " + string(global.phones[selected].Exp) + "/" + string(global.phones[selected].maxExp))
	draw_set_valign(fa_top)
	draw_text(6,70,"AT: " + string(global.phones[selected].attack))
	switch global.phones[selected].screenStatus
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
	draw_text(6,85,"...Screen Status: " + condition_to_string(global.phones[selected].screenStatus))
	draw_text(6,105,"DF: " + string(global.phones[selected].defense))
	switch global.phones[selected].boardStatus
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
	draw_text(6,120,"...Board Status: " + condition_to_string(global.phones[selected].boardStatus))
	draw_text(6,140,"WT: " + string(global.phones[selected].weight))
	switch global.phones[selected].coverStatus
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
	draw_text(6,155,"...Cover Status: " + condition_to_string(global.phones[selected].coverStatus))
	
	draw_text(166,70,"Moves:")
	draw_text(166,90,global.skills[global.phones[selected].skill1].name)
	draw_text(166,110,global.skills[global.phones[selected].skill2].name)
	draw_text(166,130,global.skills[global.phones[selected].skill3].name)
	draw_text(166,150,global.skills[global.phones[selected].skill4].name)
	
	// Draw fictional icon if the phone is fictional
	if global.phones[selected].fictional {
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