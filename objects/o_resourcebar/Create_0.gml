/// @description Sets location of the menu

font = fnt_Menu;
// Big ol' box

x_pos = o_camera.x - 10;
y_pos = o_camera.y - 10;
menu_width = o_camera.view_width + 20;
menu_height = calc_9s_round(spr_Menus2, abs(x_pos) + sprite_get_width(spr_Fields) + 6);