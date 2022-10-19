/// @description Insert description here
// You can write your code in this editor
i = 0
repeat(40)
{
	give_phone_box(i,1,0)
	i += 1
}
repeat(40)
{
	give_phone_box(i,1,1)
	i += 1
}
repeat(40)
{
	give_phone_box(i,1,2)
	i += 1
}
repeat(30)
{
	give_phone_box(i,1,3)
	i += 1
}
show_message("Unlocked every phone.")