if canclose == 1 and keyboard_check_pressed(global.select_button)
{
    global.textopen = 0
    global.choicemade = choice
    instance_destroy()
}

if keyboard_check_pressed(vk_up)
{
    choice = 0
	audio_play_sound(sfx_cursor,0,0)
}

if keyboard_check_pressed(vk_down)
{
    choice = 1
	audio_play_sound(sfx_cursor,0,0)
}

