/// @description Creation variables
// You can write your code in this editor

click_cd = 0;
wheat_output = 0;
crop_name = noone;
start_index = 0;

//l_neighbor = instance_position(x-15, y+1, o_field);
//r_neighbor = instance_position(x+17, y+1, o_field);

//gonna initialize a grid yall
field = ds_grid_create(3,3)

//IM INITIALIZING THE FUCK OUT OF THIS GRID
//[name, x, y, value]

for (var w=0; w < ds_grid_width(field); w+=1) 
{    
	for (var h=0; h < ds_grid_height(field); h+=1) {
		field[# w, h] = ["dirt",x+16*w,y+16*h,0]
	}
}