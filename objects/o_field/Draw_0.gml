/// @description Drawing stuff!

//LOOP ALL GRID 
for (var w=0; w < ds_grid_width(field); w+=1) 
{    
	for (var h=0; h < ds_grid_height(field); h+=1) {
		var this = field[# w, h]
		//LOOP STUFF GOES HEEEEERE let's start with getting the fuck out of dodge if there's nothing here
		if ds_map_exists(this, "name") == false{break}
		
		//okay now that that's out of the way, let's draw some motherfucking sprites
		var cropdetails = global.crop_index[? ds_map_find_value(this, "name")]
		var imgFrame = cropdetails[? "image"]
		
		// Is there a better way to do this? Probably.
		// Basically trying to avoid hardcoding values for the special crops.
		switch (ds_map_find_value(this, "name")) {
		    case "dirt":
		        break;
			case "unplowed":
				break;
			default:
		        imgFrame += 4;
		        break;
		}
		
		draw_sprite(asset_get_index(cropdetails[? "sprite"]),imgFrame,this[? "x"],this[? "y"])
	}
}