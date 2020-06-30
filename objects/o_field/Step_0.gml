/// @description Once per step
// You can write your code in this editor


#region sprite changes
//// Image index notes - 
////			S   L   C   R
//// Dirt 	1,  2,  3,  4
//// Grass	5,  6,  7,  8
//// Carrots	9,  10, 11, 12
//// Wheat -  13, 14, 15, 16
//// 13 - Standalone
//// 14 - Left (start+1)
//// 15 - Center (start+2)
//// 16 - Right (start+3)


////set neighbors
//if l_neighbor != noone and l_neighbor.crop_name == crop_name {left = true;}
//else {left = false;}

//if r_neighbor != noone and r_neighbor.crop_name == crop_name {right = true;}
//else {right = false;}

//if sprite_index = spr_Fields
//{
//	if left == true and right == true
//	{
//		image_index = start_index+2;
//	}
//	else if left == true and right == false
//	{
//		image_index = start_index+3;
//	}
//	else if left == false and right == true
//	{
//		image_index = start_index+1;
//	}
//	else
//	{
//		image_index = start_index;
//	}
//}
#endregion

//click cooldown checker
if click_cd > 0 {click_cd -= global.delta_mult;}

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