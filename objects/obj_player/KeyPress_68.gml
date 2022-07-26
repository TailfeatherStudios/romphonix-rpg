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
	show_message("No room, and boxes haven't been implemented yet. Sorry!")
}