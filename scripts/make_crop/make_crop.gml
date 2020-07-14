/// @function make_crop(Crop, X, Y)
/// @arg crop
/// @arg x
/// @arg y

_m = ds_map_create();

switch (argument[0]) {
    case "Wheat":
        _m[? "name"] = "Wheat";
		_m[? "x"] = argument[1];
		_m[? "y"] = argument[2];
		_m[? "value"] = 0;
        break;
		
	case "Grass":
		_m[? "name"] = "Grass";
		_m[? "x"] = argument[1];
		_m[? "y"] = argument[2];
		_m[? "value"] = 0;
        break;
		
	case "Carrot":
		_m[? "name"] = "Carrot";
		_m[? "x"] = argument[1];
		_m[? "y"] = argument[2];
		_m[? "value"] = 0;
        break;
	
	default:
        _m[? "name"] = "Dirt";
		_m[? "x"] = argument[1];
		_m[? "y"] = argument[2];
		_m[? "value"] = 0;
        break;
    
	default:
        // code here
        break;
}