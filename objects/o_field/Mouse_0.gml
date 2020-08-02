/// @description On-click stuff!
// You can write your code in this editor


// creating the new menu - setting it VERY briefly for now to a set coordinate

for (var w=0; w < ds_grid_width(field); w+=1) 
{    
	for (var h=0; h < ds_grid_height(field); h+=1) {
		var this = field[# w, h]
		//let's see if it's in this rectangle
		if point_in_rectangle(mouse_x, mouse_y,this[? "x"], this[? "y"], this[? "x"]+16, this[? "y"]+16)
		{
			crop_id = [w, h]
		}
	}
}


global.cur_field = id;
global.cur_crop = crop_id;

draw_upgrades()