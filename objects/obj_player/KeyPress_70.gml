/// @description Insert description here
// You can write your code in this editor
num = get_integer("What item should I give you?",1)
result = give_item(num,1)
if result == 1
{
	show_message("Done! Check your Items menu.")
}
else
{
	show_message("No room!")
}