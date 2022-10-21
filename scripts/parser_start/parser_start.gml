function parser_start(argument0) {
	str = argument0
	str = string_replace_all(str,"$p",global.playername)
	str = string_replace_all(str,"$g","$" + string(global.money))
	parser_running = 1
	waitforchoice = 0
	wait = 0
	global.choicemade = 0
	for (i = 0; i < 9; i++)
	{
		global.vars[i] = 0
	}
	i = 0
	j = ""
	labelstack = ds_grid_create(1,9999)
	do
	{
	    i += 1
	    j = string_char_at(str,i)
	    if j == "["
	    {
	        temp1 = string_copy(str,i+1,3)
	        if temp1 = "LBL"
	        {
	            //Add this label to the DS grid
	            temp2 = string_copy(str,i+5,4)
	            temp2 = real(temp2)
	            temp3 = i
	            ds_grid_add(labelstack,0,temp2,temp3)
	            show_debug_message("DEBUG: Added label " + string(temp2) + " at position " + string(temp3))
	        }
	    }
	}
	until j == ""
	i = 0



}
