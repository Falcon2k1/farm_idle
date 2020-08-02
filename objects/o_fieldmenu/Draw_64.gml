/// @description Drawing the menu

//draw the nineslice menu
draw_nineslice_med(spr_Menus2,x,y,width+50,height,false)
var _x = x+10
var _y = y+5
draw_text(_x, _y, title_text)
_y += string_height(title_text)

// Drawing the description box
draw_nineslice_med(spr_Menus2,x,dbox_y, width+50, dbox_height, false)
_y += height - dbox_height - 15

draw_set_font(fnt_Tiny)
draw_text_ext(_x,_y,desc_txt,10,width-10)
draw_set_font(fnt_Menu)