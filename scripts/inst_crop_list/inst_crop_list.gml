/// @function inst_crop_list(Crop)
/// @arg crop

// Pretty small timer saver, but this happens a few times.

var _m = ds_map_create();
var _details = global.crop_index[? argument[0]]

// Setting up all the values
_m[? "name"] = argument[0];
_m[? "quantity"] = 0
_m[? "time_cur"] = 0
_m[? "time_max"] = _details[? "timer"]

return _m