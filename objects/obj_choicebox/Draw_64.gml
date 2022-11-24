display_set_gui_size(320, 240);

draw_set_color(c_black)
draw_rectangle_color(2,192,318,238,c_navy,c_navy,c_black,c_black,false)
draw_rectangle_color(6,196,314,234,c_black,c_black,c_navy,c_navy,false)
draw_set_color(c_white)
draw_rectangle(2,192,318,238,true)
draw_set_color(c_black)
draw_rectangle(224,208,318,238,false)
draw_set_color(c_white)
draw_rectangle(224,208,318,238,true)
draw_set_color(c_blue)
if choice == 0
{
    draw_rectangle(224,208,318,223,false)
}
else
{
    draw_rectangle(224,223,318,238,false)
}
draw_set_color(c_navy)
draw_set_font(fon_dialogue)
draw_text_ext(4,195,string_hash_to_newline(global.text),16,320)
draw_text_ext(5,194,string_hash_to_newline(global.text),16,320)
draw_text_ext(5,195,string_hash_to_newline(global.text),16,320)
draw_set_color(c_white)
draw_text_ext(4,194,string_hash_to_newline(global.text),16,320)
draw_text_ext(226,210,string_hash_to_newline("  Yes#  No"),16,320)