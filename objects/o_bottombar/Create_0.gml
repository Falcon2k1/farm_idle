/// @description Sets location of the menu

// find the bottom of the view screen and then position it centered

x_pos = o_camera.x + calc_9s_round(spr_Menus2,o_camera.view_width * .2);
y_pos = o_camera.y + (o_camera.view_height * .8)
//menu_width = o_camera.view_width * .8
menu_width = calc_9s_round(spr_Menus2,o_camera.view_width * .6)

// the inventory totals 
wheat_total = 0;
wheat_cd = 0;
wheat_timer = 60;