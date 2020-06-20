/// @description Insert description here
// You can write your code in this editor

draw_nineslice_med(spr_Menus2,x_pos,y_pos,menu_width,200,false)

draw_set_font(fnt_Menu)
draw_text(x_pos+10,y_pos+10,"Wheat:"+string(wheat_total))
draw_text(x_pos+10,y_pos+30,"CD:"+string(floor(wheat_cd)))
