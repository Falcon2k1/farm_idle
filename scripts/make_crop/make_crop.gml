/// @function make_crop(Crop, X, Y)
/// @arg crop
/// @arg x
/// @arg y

_m = ds_map_create();
_details = global.crop_index[? argument[0]]
_start_val = 1

// Pre Loop for setting preconditionals
switch (argument[0]) {
    case "wheat":
        // define how many basic upgrades you start with
		//_start_val = 1
        break;
		
	case "grass":
        break;
		
	case "carrots":
        break;
	
	case "dirt":
		break;
		
	default:
        break;
}

// Setting up all the values
_m[? "name"] = argument[0];
_m[? "x"] = argument[1];
_m[? "y"] = argument[2];
_m[? "value"] = _details[? "base_value"]

// Now, time for the big loop
_m[? "upgrade_list"] = ds_map_create()
var _upg_list = global.upgrade_index[? argument[0]]
for (var i = 0; i < _start_val; ++i) {
	var _str = argument[0]+ "_" + string_replace_all(string_format(i, 3, 0)," ","0")
	var _map = _m[? "upgrade_list"]
	ds_map_add(_map, _str, _upg_list[? _str])
}

// maybe a post-loop after? Let's see how it goes.

return _m