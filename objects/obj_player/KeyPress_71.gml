/// @description Insert description here
// You can write your code in this editor
num = get_integer("What tool should I give you? See item.csv.",1)
result = give_tool(num,1)
if result == 1
{
	show_message("Done! Check your Items menu.")
}
else
{
	show_message("No room!")
}