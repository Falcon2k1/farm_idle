/// @description Clickity!

show_debug_message("I GOT CLICKED")

if field_id == 0 or crop_id == 0{
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
			with (field_id) 
			{
				var _arr = field[# crop_id[0],crop_id[1]]
				_arr[? "name"] = other.current_crop
				_arr[? "value"] = other.crop_index[? "base_value"]
			}
		}
}