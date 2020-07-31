/// @description Time incrementor
// You can write your code in this editor

// setting actual time of last frame in milliseconds
actual_delta = delta_time/1000000;	

// finally, calculating the actual global.delta_mult
// you can multiply any incremental value by this.
global.delta_mult = actual_delta / target_delta

#region Loop through maps
var _nextid = ds_map_find_first(global.crop_list)

while (!is_undefined( _nextid ) )
{
	var _nextmap = global.crop_list[? _nextid]
	var _income = 0;
	#endregion
	// Midloop code goes here!
	// _nextid is the name of the crop you're on. 
	// _nextmap is the map itself
	if (_nextmap[? "time_cur"] < 0) {
	    // Time to harvest!
		for (var i = 0; i < instance_number(o_field); ++i) {
		    var _field = instance_find(o_field,i)
			for (var w=0; w < ds_grid_width(_field.field); w+=1) 
			{    
				for (var h=0; h < ds_grid_height(_field.field); h+=1) {
					if ds_map_find_value(_field.field[# w, h],"name") == _nextid
					_income += ds_map_find_value(_field.field[# w, h],"value")
				}
			}
		}
		_nextmap[? "time_cur"] = _nextmap[? "time_max"]
		
	}
	else {_nextmap[? "time_cur"] -= global.delta_mult;}
	_nextmap[? "quantity"] += _income;
	
	#region Loop end
	_nextid = ds_map_find_next(global.crop_list, _nextid)
}
#endregion