/// @description Draws the menu

//figure out how high the menu should be based on font size

draw_nineslice_med(spr_Menus2,x_pos,y_pos,menu_width,menu_height,false)

menu_str = "Wheat: " + string(global.wheat_total) + " Fertility: 0" + " Carrots: 0" + " Grass: 0";

draw_set_font(font)
draw_text(2,-2,menu_str)