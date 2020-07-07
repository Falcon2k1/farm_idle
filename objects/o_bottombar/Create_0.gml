/// @description Sets location of the menu

// find the bottom of the view screen and then position it centered


width = o_camera.view_width
height = o_camera.view_height * .2
x = 10
y = o_camera.view_height * .85

field_id = 0
crop_id = 0

#region scale time
// oh god oh fuck how big does this need to be
image_xscale = width / sprite_get_width(mask_index);
image_yscale = height / sprite_get_height(mask_index);
#endregion

//Initialize a local crop list

crop_list = ds_list_create()

// LETS DO THE LIST LOOP AGAIN, INITIALIZE THE LIST OF CROPS

for (var _count = 0; _count < ds_list_size(global.crop_list); _count++) { 
	crop_list[| _count] = global.crop_list[| _count]
}