/// @function draw_upgrades()
/// @description Used to trigger drawing upgrades on multiple events.

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