/// @description Draws the menu

//figure out how high the menu should be based on font size

draw_nineslice_med(spr_Menus2,x_pos,y_pos,menu_width,menu_height,false)
draw_set_font(font)

#region draw the resources
var _nextid = ds_map_find_first(global.crop_list)
var _curr_x = 2
var _curr_y = 2
while (!is_undefined( _nextid ) )
{
	// Initialize some variables
	var _nextmap = global.crop_list[? _nextid]
	var _menu_str = ""
	var _box_x1 = _curr_x
	var _box_x2 = 0
	
	
	// Draw the sprite and entry
	draw_sprite(spr_Fields, ds_map_find_value(global.crop_index[? _nextid], "image") ,_curr_x,_curr_y)
	_curr_x += sprite_get_width(spr_Fields)
	_menu_str += ": " + string(ds_map_find_value(_nextmap, "quantity")) + " ";
	draw_text(_curr_x, _curr_y,_menu_str)
	_curr_x += string_width(_menu_str) 
	_nextid = ds_map_find_next(global.crop_list, _nextid)
	_box_x2 = _curr_x
	_curr_x += menu_spacing
	
	//Initialize more variables
	var _box_y1 = _curr_y + sprite_get_height(spr_Fields)
	var _box_y2 = _box_y1 + timer_bar_height
	var _bar_w = (_box_x2 - _box_x1)
	var _timer_w = (_nextmap[? "time_cur"] / _nextmap[? "time_max"]) * _bar_w
	
	// Draw the inner timer box
	draw_set_color(c_red);
	draw_rectangle(_box_x1, _box_y1, _box_x1 + _timer_w, _box_y2,false);
	// Draw the outer timer box - not sure why there's a weird offset required here, but whatever
	draw_set_color(c_black);
	draw_rectangle(_box_x1-1, _box_y1-1 , _box_x2, _box_y2, true);
	
	
	
}

#endregion
