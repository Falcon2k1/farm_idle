/// @description Draws the menu

//figure out how high the menu should be based on font size

draw_nineslice_med(spr_Menus2,x_pos,y_pos,menu_width,menu_height,false)
draw_set_font(font)

#region create the resource strings
var _nextid = ds_map_find_first(global.crop_list)
var _curr_x = 2
var _curr_y = 2
while (!is_undefined( _nextid ) )
{
	var _nextmap = global.crop_list[? _nextid]
	var _menu_str = ""
	draw_sprite(spr_Fields, ds_map_find_value(global.crop_index[? _nextid], "image") ,_curr_x,_curr_y)
	_curr_x += sprite_get_width(spr_Fields)
	_menu_str += ": " + string(ds_map_find_value(_nextmap, "quantity")) + " ";
	draw_text(_curr_x, _curr_y,_menu_str)
	_curr_x += string_width(_menu_str)
	_nextid = ds_map_find_next(global.crop_list, _nextid)
}

#endregion