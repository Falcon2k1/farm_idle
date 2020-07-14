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

 //calculate value
wheat_output = 0;
for (var w=0; w < ds_grid_width(field); w+=1) 
{    
	for (var h=0; h < ds_grid_height(field); h+=1) {
		var _current = field[# w, h]
		switch (_current[? "name"]) {
		    case "wheat":
		        // code here
				wheat_output += _current[? "value"];
		        break;
		    default:
		        // code here
		        break;
		}
	}
}