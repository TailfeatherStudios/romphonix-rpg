/// @description Insert description here
// You can write your code in this editor

for (var i = 0; i < stage; i++) {
	show_box(2,2+40*i,318,38+40*i,c_navy)
}

draw_set_colour(c_blue)
draw_rectangle(__view_get( e__VW.XView, 0 ) + 2,__view_get( e__VW.YView, 0 ) + 2 + 40*selection,__view_get( e__VW.XView, 0 ) + 318,__view_get( e__VW.YView, 0 ) + 38 + 40*selection,false)

draw_set_colour(c_white)
draw_set_valign(fa_center)

for (var i = 0; i < 6; i++) {
	if (!string_length(global.phones[i].model)) break
	draw_text(__view_get( e__VW.XView, 0 ) + 6,__view_get( e__VW.YView, 0 ) + 10+40*i, string(global.phones[i].brand) + " " + string(global.phones[i].model))
	draw_text(__view_get( e__VW.XView, 0 ) + 6,__view_get( e__VW.YView, 0 ) + 30+40*i,"Battery: " + string((global.phones[i].hp/global.phones[i].maxHP)*100) + "%")
	draw_text(__view_get( e__VW.XView, 0 ) + 160,__view_get( e__VW.YView, 0 ) + 10+40*i,"Level " + string(global.phones[i].level))
	draw_text(__view_get( e__VW.XView, 0 ) + 160,__view_get( e__VW.YView, 0 ) + 30+40*i,"EXP: " + string(global.phones[i].Exp) + "/" + string(global.phones[i].maxExp))
	
	// Draw phone icon or fallback to a default icon.
	phoneIcon = "spr_icon_" + global.phones[i].icon
	if asset_get_type(phoneIcon) == asset_unknown phoneIcon = "spr_icon_new_candybar"
	
	//draw_sprite(asset_get_index(phoneIcon), -1, __view_get( e__VW.XView, 0 )+300,__view_get( e__VW.YView, 0 )+20+40*i)
	
	draw_sprite_stretched(asset_get_index(phoneIcon), frame, __view_get( e__VW.XView, 0 ) + 284 ,__view_get( e__VW.YView, 0 ) + 4 + 40*i, 32, 32)
}

if selected != -1 && is_string(global.phones[selected].model)
{
	draw_set_color(c_white)
	draw_rectangle_color(__view_get( e__VW.XView, 0 ) + 2,__view_get( e__VW.YView, 0 ) + 2,__view_get( e__VW.XView, 0 ) + 62,__view_get( e__VW.YView, 0 ) + 62,c_white,c_white,c_aqua,c_aqua,false)
	draw_rectangle_color(__view_get( e__VW.XView, 0 ) + 6,__view_get( e__VW.YView, 0 ) + 6,__view_get( e__VW.XView, 0 ) + 58,__view_get( e__VW.YView, 0 ) + 58,c_aqua,c_aqua,c_white,c_white,false)
	draw_rectangle(__view_get( e__VW.XView, 0 ) + 2,__view_get( e__VW.YView, 0 ) + 2,__view_get( e__VW.XView, 0 ) + 62,__view_get( e__VW.YView, 0 ) + 62,true)
	show_box(66,2,318,62,c_navy)
	show_box(2,66,158,238,c_navy)
	show_box(162,66,318,238,c_navy)
	
	// Draw phone sprite or fallback to a default sprite.
	phoneSprite = "spr_" + string_replace_all(string_replace_all(string(global.phones[selected].brand) + " " + string(global.phones[selected].model), "-", "_"), " ", "_")
	if asset_get_type(phoneSprite) == asset_unknown phoneSprite = "spr_default_phone"
	draw_sprite(asset_get_index(phoneSprite), -1, __view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ))
	
	draw_text(__view_get( e__VW.XView, 0 ) + 70,__view_get( e__VW.YView, 0 ) + 10, string(global.phones[selected].brand + " " + global.phones[selected].model))
	draw_text(__view_get( e__VW.XView, 0 ) + 70,__view_get( e__VW.YView, 0 ) + 24,"Battery: " + string((global.phones[selected].hp/global.phones[selected].maxHP)*100) + "%")
	draw_text(__view_get( e__VW.XView, 0 ) + 160,__view_get( e__VW.YView, 0 ) + 24,"...Battery Status: " + condition_to_string(global.phones[selected].batteryStatus))
	draw_text(__view_get( e__VW.XView, 0 ) + 70,__view_get( e__VW.YView, 0 ) + 38,"Level " + string(global.phones[selected].level))
	draw_text(__view_get( e__VW.XView, 0 ) + 70,__view_get( e__VW.YView, 0 ) + 52,"EXP: " + string(global.phones[selected].Exp) + "/" + string(global.phones[selected].maxExp))
	draw_set_valign(fa_top)
	draw_text(__view_get( e__VW.XView, 0 ) + 6,__view_get( e__VW.YView, 0 ) + 70,"AT: " + string(global.phones[selected].attack))
	switch global.phones[selected].screenStatus
	{
		case 0:
		draw_set_colour(c_red)
		draw_text(__view_get( e__VW.XView, 0 ) + 6,__view_get( e__VW.YView, 0 ) + 70,"------")
		draw_set_colour(c_white)
		break
		case 1:
		draw_set_colour(c_red)
		draw_text(__view_get( e__VW.XView, 0 ) + 48,__view_get( e__VW.YView, 0 ) + 70,"x 0.8")
		draw_set_colour(c_white)
		break
		case 3:
		draw_set_colour(c_lime)
		draw_text(__view_get( e__VW.XView, 0 ) + 48,__view_get( e__VW.YView, 0 ) + 70,"x 1.2")
		draw_set_colour(c_white)
		break
	}
	draw_text(__view_get( e__VW.XView, 0 ) + 6,__view_get( e__VW.YView, 0 ) + 85,"...Screen Status: " + condition_to_string(global.phones[selected].screenStatus))
	draw_text(__view_get( e__VW.XView, 0 ) + 6,__view_get( e__VW.YView, 0 ) + 105,"DF: " + string(global.phones[selected].defense))
	switch global.phones[selected].boardStatus
	{
		case 0:
		draw_set_colour(c_red)
		draw_text(__view_get( e__VW.XView, 0 ) + 6,__view_get( e__VW.YView, 0 ) + 105,"------")
		draw_set_colour(c_white)
		break
		case 1:
		draw_set_colour(c_red)
		draw_text(__view_get( e__VW.XView, 0 ) + 48,__view_get( e__VW.YView, 0 ) + 105,"x 0.8")
		draw_set_colour(c_white)
		break
		case 3:
		draw_set_colour(c_lime)
		draw_text(__view_get( e__VW.XView, 0 ) + 48,__view_get( e__VW.YView, 0 ) + 105,"x 1.2")
		draw_set_colour(c_white)
		break
	}
	draw_text(__view_get( e__VW.XView, 0 ) + 6,__view_get( e__VW.YView, 0 ) + 120,"...Board Status: " + condition_to_string(global.phones[selected].boardStatus))
	draw_text(__view_get( e__VW.XView, 0 ) + 6,__view_get( e__VW.YView, 0 ) + 140,"WT: " + string(global.phones[selected].weight))
	switch global.phones[selected].coverStatus
	{
		case 0:
		draw_set_colour(c_red)
		draw_text(__view_get( e__VW.XView, 0 ) + 6,__view_get( e__VW.YView, 0 ) + 140,"------")
		draw_set_colour(c_white)
		break
		case 1:
		draw_set_colour(c_red)
		draw_text(__view_get( e__VW.XView, 0 ) + 48,__view_get( e__VW.YView, 0 ) + 140,"x 0.8")
		draw_set_colour(c_white)
		break
		case 3:
		draw_set_colour(c_lime)
		draw_text(__view_get( e__VW.XView, 0 ) + 48,__view_get( e__VW.YView, 0 ) + 140,"x 1.2")
		draw_set_colour(c_white)
		break
	}
	draw_text(__view_get( e__VW.XView, 0 ) + 6,__view_get( e__VW.YView, 0 ) + 155,"...Cover Status: " + condition_to_string(global.phones[selected].coverStatus))
	
	draw_text_ext(__view_get( e__VW.XView, 0 ) + 166,__view_get( e__VW.YView, 0 ) + 70,global.phones[selected].description, 16, 160)
	
	// Draw fictional icon if the phone is fictional	
	if global.phones[selected].fictional {
		draw_sprite(spr_fictional, 0, __view_get(e__VW.XView, 0) + 45,__view_get(e__VW.YView, 0) + 45)
		
		if mouse_x > __view_get(e__VW.XView, 0) + 45 && mouse_x < __view_get(e__VW.XView, 0) + 56 {
			if mouse_y > __view_get(e__VW.YView, 0) + 45 && mouse_y < __view_get(e__VW.YView, 0) + 56 {
				draw_set_colour(c_white)
				draw_rectangle(mouse_x, mouse_y, mouse_x + 150, mouse_y + 20, false)
				draw_set_colour(c_black)
				draw_text(mouse_x + 3, mouse_y + 3, "This phone is fictional.")
				
			}
		}
	}
}



