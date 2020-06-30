/// @description Drawing stuff!

//LOOP ALL GRID 
for (var w=0; w < ds_grid_width(field); w+=1) 
{    
	for (var h=0; h < ds_grid_height(field); h+=1) {
		var this = field[# w, h]
		//LOOP STUFF GOES HEEEEERE let's start with getting the fuck out of dodge if there's nothing here
		if this[0] == 0{break}
		
		//okay now that that's out of the way, let's draw some motherfucking sprites
		var cropdetails = global.crop_index[? this[0]]
		
		//debug time!
		//var spr = cropdetails[? "sprite"]
		//var img = cropdetails[? "image"]
		draw_sprite(asset_get_index(cropdetails[? "sprite"]),cropdetails[? "image"],this[1],this[2])
	}
}