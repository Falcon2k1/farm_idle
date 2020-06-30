/// @description Drawing the menu

//draw the nineslice menu
draw_nineslice_med(spr_Menus2,x,y,width,height,false)

//draw and position the sprite for the x-box, might have to make this an object later
draw_sprite(spr_Xbox,0,x+width-2,y+1)

//draw some text!
_draw_str = "ID:" + string(field_id) + "\n" + string(crop_id) + "\n" +"Crops!"
draw_text_ext(x+10,y+10,_draw_str,-1,width-20)

box_start_x = x+10;
box_start_y = y+10+string_height(_draw_str);

for (var w=0; w < ds_grid_width(crop_list); w+=1) 
{    
	for (var h=0; h < ds_grid_height(crop_list); h+=1) 
	{
		var _this = crop_list[# w, h];
		if (_this != 0) 
		{
			var _menu_x = box_start_x + h*32 + 8;
			var _menu_y = box_start_y + w*32 + 8;
			var _crop = global.crop_index[? _this]
		    draw_sprite(spr_Fields,_crop[? "image"],_menu_x,_menu_y)
		}
	}
}
