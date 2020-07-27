/// @description Draws the menu

//figure out how high the menu should be based on font size

draw_nineslice_med(spr_Menus2,x_pos,y_pos,menu_width,menu_height,false)

#region create the resource strings
var _nextid = ds_map_find_first(global.crop_list)
menu_str = ""

while (!is_undefined( _nextid ) )
{
	var _nextmap = global.crop_list[? _nextid]
	menu_str += string(ds_map_find_value(_nextmap,"name")) + ": " + string(ds_map_find_value(_nextmap, "quantity")) + " ";
	_nextid = ds_map_find_next(global.crop_list, _nextid)
}

ds_list_sort(global.upgrade_list,true)
#endregion


draw_set_font(font)
draw_text(2,-2,menu_str)