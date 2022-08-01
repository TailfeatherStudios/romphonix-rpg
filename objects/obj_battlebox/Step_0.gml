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

show_debug_message(song)
if audio_sound_get_track_position(song) > 58.697
{
	audio_sound_set_track_position(song,audio_sound_get_track_position(song) - 50.766)
}