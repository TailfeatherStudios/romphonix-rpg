function parser() {
	// Check if we're waiting
	if wait > 0
	{
		wait -= 1
	}
	// Check if we're waiting on a yes/no choice
	else if waitforchoice == 1
	{
	    waitforchoice = 0
	    if global.choicemade == 0
	    {
	        temp2 = string_copy(str,i+5,4)
	        show_debug_message("DEBUG: Going to label " + temp2)
	        temp2 = real(temp2)
	        i = ds_grid_get(labelstack,0,temp2)
	    }
	    else if global.choicemade == 1
	    {
	        temp2 = string_copy(str,i+10,4)
	        show_debug_message("DEBUG: Going to label " + temp2)
	        temp2 = real(temp2)
	        i = ds_grid_get(labelstack,0,temp2)        
	    }
	}
	// If not, continue the parser
	else
	{
	i += 1
	temp1 = string_char_at(str,i)
	if temp1 == "["
	{
	    temp2 = string_copy(str,i+1,3)
	    if temp2 = "TXT"
	    {
	        //Get the text to be drawn
	        i += 4
	        j = i
	        do
	        {
	            temp3 = string_char_at(str,j)
	            j += 1
	        }
	        until temp3 == "]"
	        temp4 = string_copy(str,i+1,(j-2)-i)
	        create_textbox(temp4)
	        i += (j-1)-i
	    }
    
	    else if temp2 = "CHO"
	    {
	        //Create choice box and set the wait flag
	        instance_create(0,0,obj_choicebox)
	        waitforchoice = 1
	    }
    
	    else if temp2 = "JMP"
	    {
	        //Get the label to be jumped to
	        temp2 = string_copy(str,i+5,4)
	        show_debug_message("DEBUG: Going to label " + temp2)
	        temp2 = real(temp2)
	        i = ds_grid_get(labelstack,0,temp2)
	    }

	    else if temp2 = "GTR"
	    {
	        //Get the room
	        temp2 = string_copy(str,i+5,4)
	        temp3 = string_copy(str,i+10,4)
	        i += 14
	        j = i
	        do
	        {
	            temp5 = string_char_at(str,j)
	            j += 1
	        }
	        until temp5 == "]"
	        temp4 = string_copy(str,i+1,(j-2)-i)
	        show_debug_message("DEBUG: Going to room number " + temp4 + " at X " + temp2 + " Y " + temp3)
	        global.gotox = real(temp2)
	        global.gotoy = real(temp3)
	        temp4 = asset_get_index(temp4)
	        room_goto(temp4)
	        i += (j-1)-i
	    }
		
	    else if temp2 = "SND"
	    {
	        //Get the room
	        temp2 = string_copy(str,i+5,4)
	        i += 9
	        j = i
	        do
	        {
	            temp5 = string_char_at(str,j)
	            j += 1
	        }
	        until temp5 == "]"
	        temp4 = string_copy(str,i+1,(j-2)-i)
	        audio_play_sound(asset_get_index(temp4),0,real(temp2))
	        i += (j-1)-i
	    }
    
	    else if temp2 = "RMR"
	    {
	        //Get the room
	        tempr3 = obj_player.x
	        tempr4 = obj_player.y
	        tempr5 = room
	    }

	    else if temp2 = "GRR"
	    {
	        //Get the room
	        global.gotox = real(tempr3)
	        global.gotoy = real(tempr4)
	        tempr5 = real(tempr5)
	        room_goto(tempr5)
	    }
    
	    else if temp2 = "GTP"
	    {
	        //Get the position
	        temp2 = string_copy(str,i+5,4)
	        temp3 = string_copy(str,i+10,4)
	        obj_player.x = real(temp2)
	        obj_player.y = real(temp3)
	        i += 10
	    }
    
	    else if temp2 = "RMP"
	    {
	        //Get the position
	        tempr1 = obj_player.x
	        tempr2 = obj_player.y
	    }

	    else if temp2 = "GRP"
	    {
	        //Get the position
	        obj_player.x = real(tempr1)
	        obj_player.y = real(tempr2)
	    }
		
		else if temp2 = "ITA"
	    {
			temp2 = string_copy(str,i+5,4)
			temp2 = real(temp2)
			temp3 = string_copy(str,i+10,4)
			temp3 = real(temp3)
	        give_item(temp2,temp3)
	    }
		
		else if temp2 = "TLA"
	    {
			temp2 = string_copy(str,i+5,4)
			temp2 = real(temp2)
			temp3 = string_copy(str,i+10,4)
			temp3 = real(temp3)
	        give_tool(temp2,temp3)
	    }
		
		else if temp2 = "MVA"
	    {
			temp2 = string_copy(str,i+5,4)
			temp2 = real(temp2)
			temp3 = string_copy(str,i+10,4)
			temp3 = real(temp3)
	        give_memcard(temp2,temp3)
	    }
		
		else if temp2 = "PHA"
	    {
			temp2 = string_copy(str,i+5,4)
			temp2 = real(temp2)
			temp3 = string_copy(str,i+10,4)
			temp3 = real(temp3)
	        give_phone(temp2,temp3)
	    }
		
		else if temp2 = "WAI"
	    {
			temp2 = string_copy(str,i+5,4)
			temp2 = real(temp2)
	        wait = temp2
	    }
		
		else if temp2 = "FAO"
	    {
			instance_create_depth(0,0,-1,obj_fadeout)
	    }
		
		else if temp2 = "FOI"
	    {
			instance_create_depth(0,0,-1,obj_fadeoutinstant)
	    }
		
		else if temp2 = "FAI"
	    {
			instance_create_depth(0,0,-1,obj_fadein)
	    }
		
		else if temp2 = "OPB"
	    {
			instance_create_depth(0,0,-100,obj_boxphonesbox)
	    }
    
	}
	else if temp1 == "*"
	{
	    show_debug_message("DEBUG: End of programme, goodbye!")
	    parser_running = 0
		instance_destroy()
	}
	else if temp1 == ""
	{
	    show_debug_message("DEBUG: No more data; end of programme, goodbye!")
	    parser_running = 0
	    instance_destroy()
	}
	}



}
