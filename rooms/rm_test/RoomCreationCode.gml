audio_stop_all()
global.music = bgm_test
audio_play_sound(global.music,0,1)
global.room_name = "Test Zone"
global.show_room_name = true

global.wildphones_thisarea = 0
i = 0
j = 0
repeat(array_length(global.wildphones))
{
	repeat(rarity_to_real(global.wildphones[i].rarity))
	{
		global.wildphones_thisarea[i+j] = i
		j += 1
	}
	i += 1
	j -= 1
}