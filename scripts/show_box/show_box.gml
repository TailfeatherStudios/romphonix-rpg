// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function show_box(x,y,x2,y2,colour){
	draw_rectangle_color(__view_get( e__VW.XView, 0 ) + x,__view_get( e__VW.YView, 0 ) + y,__view_get( e__VW.XView, 0 ) + x2,__view_get( e__VW.YView, 0 ) + y2,colour,colour,c_black,c_black,false)
	draw_rectangle_color(__view_get( e__VW.XView, 0 ) + x+4,__view_get( e__VW.YView, 0 ) + y+4,__view_get( e__VW.XView, 0 ) + x2-4,__view_get( e__VW.YView, 0 ) + y2-4,c_black,c_black,colour,colour,false)
	draw_rectangle_color(__view_get( e__VW.XView, 0 ) + x,__view_get( e__VW.YView, 0 ) + y,__view_get( e__VW.XView, 0 ) + x2,__view_get( e__VW.YView, 0 ) + y2,c_white,c_white,c_white,c_white,true)
}