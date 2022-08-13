// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function show_box(x, y, x2, y2, colour){
	draw_rectangle_color(x,   y,   x2,   y2,   colour,  colour,  c_black, c_black, false)
	draw_rectangle_color(x+4, y+4, x2-4, y2-4, c_black, c_black, colour,  colour,  false)
	draw_rectangle_color(x,   y,   x2+1, y2+1, c_white, c_white, c_white, c_white, true)
}