/// @description Drawing the menu

//draw the nineslice menu
draw_nineslice_med(spr_Menus2,x,y,width,height,false)

//draw and position the sprite for the x-box, might have to make this an object later
draw_sprite(spr_Xbox,0,x+width-2,y+1)

//draw some text!
draw_text_ext(x+10,y+10,"ID:"+string(field_id)+ "\n" + string(crop_id) + "\n" +"Crops!",-1,width-20)

