/// @function make_crop(Crop, X, Y)
/// @arg crop
/// @arg x
/// @arg y

_m = ds_map_create();

switch (argument[0]) {
    case "wheat":
        _m[? "name"] = "wheat";
		_m[? "x"] = argument[1];
		_m[? "y"] = argument[2];
		_m[? "value"] = 0;
        break;
		
	case "grass":
		_m[? "name"] = "grass";
		_m[? "x"] = argument[1];
		_m[? "y"] = argument[2];
		_m[? "value"] = 0;
        break;
		
	case "carrot":
		_m[? "name"] = "carrot";
		_m[? "x"] = argument[1];
		_m[? "y"] = argument[2];
		_m[? "value"] = 0;
        break;
	
	default:
        _m[? "name"] = "dirt";
		_m[? "x"] = argument[1];
		_m[? "y"] = argument[2];
		_m[? "value"] = 0;
        break;
}

return _m