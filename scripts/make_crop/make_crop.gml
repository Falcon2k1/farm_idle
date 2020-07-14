/// @function make_crop(Crop, X, Y)
/// @arg crop
/// @arg x
/// @arg y

_m = ds_map_create();
_details = global.crop_index[? argument[0]]

switch (argument[0]) {
    case "wheat":
        _m[? "name"] = "wheat";
		_m[? "x"] = argument[1];
		_m[? "y"] = argument[2];
		_m[? "value"] = _details[? "base_value"]
        break;
		
	case "grass":
		_m[? "name"] = "grass";
		_m[? "x"] = argument[1];
		_m[? "y"] = argument[2];
		_m[? "value"] = _details[? "base_value"]
        break;
		
	case "carrots":
		_m[? "name"] = "carrots";
		_m[? "x"] = argument[1];
		_m[? "y"] = argument[2];
		_m[? "value"] = _details[? "base_value"]
        break;
	
	default:
        _m[? "name"] = "dirt";
		_m[? "x"] = argument[1];
		_m[? "y"] = argument[2];
		_m[? "value"] = _details[? "base_value"]
        break;
}

return _m