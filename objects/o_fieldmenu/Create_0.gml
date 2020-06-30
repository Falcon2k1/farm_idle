/// @description Set variables

// set variables for ease of later use
height = calc_9s_round(spr_Menus2,150)
width = calc_9s_round(spr_Menus2,80)
field_id = 0
crop_id = 0

#region scale time
// oh god oh fuck how big does this need to be
image_xscale = width / sprite_get_width(mask_index);
image_yscale = height / sprite_get_height(mask_index);
#endregion

// find out how many boxes I can display per row:
box_width = 32;
var grid_col = width div box_width;
var grid_rows = ceil(ds_map_size(global.crop_index) / grid_col)

crop_list = ds_grid_create(grid_col,grid_rows)

// LETS DO THE GRID LOOP AGAIN, INITIALIZE THE MENU

var _count = 0;
for (var w=0; w < ds_grid_width(crop_list); w+=1) 
{    
	for (var h=0; h < ds_grid_height(crop_list); h+=1) 
	{
		if _count < ds_list_size(global.crop_list)
		{
		crop_list[# w, h] = global.crop_list[| _count]
		_count++;
		}
	}
}

//FUCK IT IM DOING THIS BY HAND FOR NOW GUESS IM NOT



//b_dirt = instance_create_layer(x+10,y+50,"Instances",o_menu_item)
//// b_grass = instance_create_layer(x+42,y+50,"Instances",o_menu_item)
//// b_carrot = instance_create_layer(x+10,y+100,"Instances",o_menu_item)
//// b_wheat = instance_create_layer(x+42,y+100,"Instances",o_menu_item)

//with (b_dirt) 
//{
//    // code here
//	x = other.x+10
//	y = other.y+50
//	var cropmap = global.crop_index[? "dirt"]
//	sprite_index = asset_get_index(cropmap[? "sprite"])
//	image_index = cropmap[? "image"]
//	crop_name = cropmap[? "name"]
//	depth = -100
//	field_id = other.field_id
//}
