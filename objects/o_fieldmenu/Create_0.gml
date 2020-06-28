/// @description Set variables

// set variables for ease of later use
height = calc_9s_round(spr_Menus2,150)
width = calc_9s_round(spr_Menus2,80)
field_id = 0

// find out how many boxes I can display per row:
//box_width = 32;
//box_per_row = width div box_width;

//FUCK IT IM DOING THIS BY HAND FOR NOW

b_dirt = instance_create_layer(x+10,y+50,"Instances",o_menu_item)
// b_grass = instance_create_layer(x+42,y+50,"Instances",o_menu_item)
// b_carrot = instance_create_layer(x+10,y+100,"Instances",o_menu_item)
// b_wheat = instance_create_layer(x+42,y+100,"Instances",o_menu_item)

with (b_dirt) 
{
    // code here
	x = other.x+10
	y = other.y+50
	var cropmap = global.crop_index2[? "dirt"]
	sprite_index = asset_get_index(cropmap[? "sprite"])
	image_index = cropmap[? "image"]
	crop_name = cropmap[? "name"]
	depth = -100
	field_id = other.field_id
}
