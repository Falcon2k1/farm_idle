/// @description Draws the menu

draw_nineslice_med(spr_Menus2,x-20,y,width+20,height+100,false)
draw_set_font(fnt_Menu)


// set the two strings to draw:
//draw_str_left = "Harvest CD: "+string(floor(global.wheat_cd / 60))
draw_str_left = "This spot reserved for derp.";
draw_str_right = "Field ID: " + string(global.cur_field) + "\n Crop ID: " + string(global.cur_crop);

//draw some text!
//draw_text_ext(x,y,draw_str_left,-1,(width-20)/2);
draw_set_halign(fa_right);
draw_text_ext(x+width-30,y,draw_str_right,-1,(width-20)/2);
draw_set_halign(fa_left);

box_start_x = x+10;
box_start_y = y+10+string_height(draw_str_left);

// small loop to draw the objects
for (var _count = 0; _count < ds_list_size(crop_list); _count++) { 
	var _this = crop_list[| _count];
	var _menu_x = box_start_x + _count * 32;
	var _crop = global.crop_index[? _this]
	draw_sprite(spr_Fields, _crop[? "image"],_menu_x,box_start_y)
}

if global.cur_field != 0 and global.cur_crop != 0 {
	var _field = global.cur_field.field[# global.cur_crop[0], global.cur_crop[1]]
	var _x = _field[? "x"]
	var _y = _field[? "y"]
	draw_rectangle(_x, _y, _x+15, _y+15,true)
}