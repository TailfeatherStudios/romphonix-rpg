// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_phone_sprite(phone)
{
	spr = "spr_" + string_replace_all(string(phone.brand) + " " + string(phone.model), "-", "_")
	spr = string_replace_all(spr, " ", "_")
	spr = string_replace_all(spr, "@", "at")
	if asset_get_type(spr) == asset_unknown
	{
		spr = "spr_default_phone"
	}
	return asset_get_index(spr)
}