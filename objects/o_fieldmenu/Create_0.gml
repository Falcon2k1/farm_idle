/// @description Set variables

// set variables for ease of later use
height = calc_9s_round(spr_Menus2,o_camera.view_height * .8)
width = calc_9s_round(spr_Menus2,o_camera.view_width * .2)
x = o_camera.view_width - calc_9s_round(spr_Menus2,width)
y = o_camera.view_height * .05



#region scale time
// oh god oh fuck how big does this need to be
image_xscale = width / sprite_get_width(mask_index);
image_yscale = height / sprite_get_height(mask_index);
#endregion

