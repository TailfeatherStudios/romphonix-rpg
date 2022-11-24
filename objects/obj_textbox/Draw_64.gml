display_set_gui_size(320, 240);

draw_set_color(c_black)
draw_rectangle_color(2,192,318,238,c_navy,c_navy,c_black,c_black,false)
draw_rectangle_color(6,196,314,234,c_black,c_black,c_navy,c_navy,false)
draw_set_color(c_navy)
draw_text_ext(4,195,string_hash_to_newline(temp2),16,312)
draw_text_ext(5,194,string_hash_to_newline(temp2),16,312)
draw_text_ext(5,195,string_hash_to_newline(temp2),16,312)
draw_set_color(c_white)
draw_rectangle(2,192,318,238,true)
draw_set_font(fon_dialogue)
draw_text_ext(4,194,string_hash_to_newline(temp2),16,312)

