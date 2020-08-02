/// @function make_crop(Crop, X, Y)
/// @arg crop
/// @arg x
/// @arg y

var _m = ds_map_create();
var _details = global.crop_index[? argument[0]]
var _start_val = 1

// Pre Loop for setting preconditionals
switch (argument[0]) {
	case "unplowed":
		_start_val = 1
	
	case "dirt":
		_start_val = 2
		
	default:
        break;
}

// Setting up all the values
_m[? "name"] = argument[0];
_m[? "x"] = argument[1];
_m[? "y"] = argument[2];
_m[? "value"] = _details[? "base_value"]
_m[? "unlocked"] = false

// Now, time for the big loop
_m[? "upgrade_list"] = ds_map_create()
var _upg_list = global.upgrade_index[? argument[0]]
for (var i = 0; i < _start_val; ++i) {
	var _str = argument[0]+ "_" + string_replace_all(string_format(i, 3, 0)," ","0")
	var _map = _m[? "upgrade_list"]
	ds_map_add(_map, _str, _upg_list[? _str])
}

// debugger time - arbitrarily increasing the list of upgrades.
if argument[0] == "dirt"{
	var _tmap = _m[? "upgrade_list"]
	for (var i = 1; i < 10; ++i) {
	    var _n = "dirt_00" + string(i);
		_tmap[? _n] = ds_map_create();	
		ds_map_copy(_tmap[? _n], _tmap[? "dirt_000"])
	}
}
// maybe a post-loop after? Let's see how it goes.

return _m