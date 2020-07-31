/// @description Clickity!

show_debug_message("I GOT CLICKED")

if global.cur_field == 0 or global.cur_crop == 0{
	exit
}

for (var _i = 0; _i < ds_list_size(crop_list); _i++) { 
	var _this = crop_list[| _i]
	var _menu_x = box_start_x + _i*32;
	var _menu_y = box_start_y;
	if (_this != 0 and point_in_rectangle(mouse_x, mouse_y, _menu_x, _menu_y, _menu_x+16,_menu_y+16)) 
		{
			current_crop = _this
			crop_index = global.crop_index[? current_crop]
			with (global.cur_field) 
			{
				var _arr = field[# crop_id[0],crop_id[1]]
				field[# crop_id[0],crop_id[1]] = make_crop(other.current_crop, _arr[? "x"], _arr[? "y"])
			}
		}
}

instance_destroy(o_fieldmenu_item)
var _menu = instance_nearest(x,y,o_fieldmenu)

if (global.cur_field != 0){

	// inherit starting positions from the fieldmenu, ipr is icons per row
	var _x = _menu.x + _menu.buffer
	var _y = _menu.y + 20
	var _ipr = _menu.icons_per_row
	var _size = _menu.buffer + sprite_get_width(spr_Icons)
	var _count = 1
	
	// hi i have to iterate through a shitton of steps god I hope 
	// that they fix this in 2.3
	var _field_ds = global.cur_field.field;
	var _cropmap = _field_ds[# global.cur_crop[0], global.cur_crop[1]]
	var _upgrades = _cropmap[? "upgrade_list"]
	
	// to re-explain this loop again
	// setting _up to be the first in the map
	var _up = ds_map_find_first(_upgrades)
	while (!is_undefined( _up ) )
	{
		// Set a variable for the map of all the upgrades
		var _upmap = _upgrades[? _up]
		new_item = instance_create_layer(_x,_y,"Instances",o_fieldmenu_item)
		
		// Set the details for the newly created object
		with (new_item) {
		    details = _upmap;	
		}
		
		// find the next map
		_up = ds_map_find_next(_upgrades, _up)
		
		// increase the count, skip row if we need to
		_count++
		if _count > _ipr {
			// carriage return, essentially
			_x = _menu.x + _menu.buffer
			_y += _size
			_count = 1
		}
		else {
			// move on to the next icon
			_x += _size
		}
		
		
		
	}
}