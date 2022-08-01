/// @description Insert description here
// You can write your code in this editor

if stage < 64
{
	stage += 1
}
else
{
	introdone = 1
}

if audio_sound_get_track_position(song) > 58.697
{
	audio_sound_set_track_position(song,audio_sound_get_track_position(song) - 50.766)
}

if keyboard_check_pressed(global.select_button)
{
	instance_destroy()
}