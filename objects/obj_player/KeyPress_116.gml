/// @description Insert description here
// You can write your code in this editor
num = get_integer("What phone should I give you? See phones.json.",0)
result = give_phone(num,1)
if result == 1
{
	show_message("Done! Check your Phones menu.")
}
else
{
	boxno = get_integer("No room, please specify a box.",1)
	result = give_phone_box(num,1,boxno-1)
	if result == 1
	{
		show_message("Done! Check your Phones box (F).")
	}
	else
	{
		show_message("No room in that box.")
	}
}