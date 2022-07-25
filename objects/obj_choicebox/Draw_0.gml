draw_set_color(c_black)
draw_rectangle_color(__view_get( e__VW.XView, 0 ) + 2,__view_get( e__VW.YView, 0 ) + 192,__view_get( e__VW.XView, 0 ) + 318,__view_get( e__VW.YView, 0 ) + 238,c_navy,c_navy,c_black,c_black,false)
draw_rectangle_color(__view_get( e__VW.XView, 0 ) + 6,__view_get( e__VW.YView, 0 ) + 196,__view_get( e__VW.XView, 0 ) + 314,__view_get( e__VW.YView, 0 ) + 234,c_black,c_black,c_navy,c_navy,false)
draw_set_color(c_white)
draw_rectangle(__view_get( e__VW.XView, 0 ) + 2,__view_get( e__VW.YView, 0 ) + 192,__view_get( e__VW.XView, 0 ) + 318,__view_get( e__VW.YView, 0 ) + 238,true)
draw_set_color(c_black)
draw_rectangle(__view_get( e__VW.XView, 0 ) + 224,__view_get( e__VW.YView, 0 ) + 208,__view_get( e__VW.XView, 0 ) + 318,__view_get( e__VW.YView, 0 ) + 238,false)
draw_set_color(c_white)
draw_rectangle(__view_get( e__VW.XView, 0 ) + 224,__view_get( e__VW.YView, 0 ) + 208,__view_get( e__VW.XView, 0 ) + 318,__view_get( e__VW.YView, 0 ) + 238,true)
draw_set_color(c_blue)
if choice == 0
{
    draw_rectangle(__view_get( e__VW.XView, 0 ) + 224,__view_get( e__VW.YView, 0 ) + 208,__view_get( e__VW.XView, 0 ) + 318,__view_get( e__VW.YView, 0 ) + 223,false)
}
else
{
    draw_rectangle(__view_get( e__VW.XView, 0 ) + 224,__view_get( e__VW.YView, 0 ) + 223,__view_get( e__VW.XView, 0 ) + 318,__view_get( e__VW.YView, 0 ) + 238,false)
}
draw_set_color(c_white)
draw_set_font(fon_dialogue)
draw_text_ext(__view_get( e__VW.XView, 0 ) + 4,__view_get( e__VW.YView, 0 ) + 194,string_hash_to_newline(global.text),16,320)
draw_text_ext(__view_get( e__VW.XView, 0 ) + 226,__view_get( e__VW.YView, 0 ) + 210,string_hash_to_newline("  Yes#  No"),16,320)


