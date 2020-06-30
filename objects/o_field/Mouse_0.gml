/// @description On-click stuff!
// You can write your code in this editor


// creating the new menu - setting it VERY briefly for now to a set coordinate
var menu = instance_find(o_fieldmenu,0)
for (var w=0; w < ds_grid_width(field); w+=1) 
{    
	for (var h=0; h < ds_grid_height(field); h+=1) {
		var this = field[# w, h]
		//let's see if it's in this rectangle
		if point_in_rectangle(mouse_x, mouse_y,this[1], this[2], this[1]+16, this[2]+16)
		{
			crop_id = [w, h]
		}
	}
}

with (menu)
{
	field_id = other.id;
	crop_id = other.crop_id
}
