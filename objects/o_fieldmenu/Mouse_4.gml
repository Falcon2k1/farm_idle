/// @description Clickity!

//show_debug_message("HEYA")


if field_id != 0 and crop_id != 0
{

	for (var w=0; w < ds_grid_width(crop_list); w+=1) 
	{    
		for (var h=0; h < ds_grid_height(crop_list); h+=1) 
		{
			var _this = crop_list[# w, h];
			if (_this != 0) 
			{
				var _menu_x = box_start_x + h*32 + 8;
				var _menu_y = box_start_y + w*32 + 8;
				if point_in_rectangle(mouse_x, mouse_y, _menu_x, _menu_y, _menu_x+16,_menu_y+16)
			    {
					current_crop = _this
					with (field_id) 
					{
						var _arr = field[# crop_id[0],crop_id[1]]
						_arr[0] = other.current_crop
						ds_grid_set(field,crop_id[0],crop_id[1],_arr)
					}
				}
			}
		}
	}

}

//// get the o_fieldmenu id
//fieldmenu = instance_find(o_fieldmenu,0)
//field_id = fieldmenu.field_id

//if field_id
//{
//	with (field_id)
//	{
//		sprite_index = other.sprite_index
//		start_index = other.image_index	
//		crop_name = other.crop_name
	
//	}
//}