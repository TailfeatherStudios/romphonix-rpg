/// @description Insert description here
// You can write your code in this editor
instance_deactivate_all(true)
wildphone = irandom_range(0,array_length(global.wildphones_thisarea))
wildphone = global.wildphones_thisarea[wildphone]
stage = 0
introdone = 0
audio_stop_all()
song = audio_play_sound(bgm_battle,0,1)