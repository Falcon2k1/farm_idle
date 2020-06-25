///@function scr_add_item(ID, name, description, base value, grow_speed, sprite, image);
///@arg {real} The ID of the crop to add
///@arg {string} The description of the crop
///@arg {real} The base value of the crop
///@arg {real} The grow speed of the crop
///@arg {real} The ID of the crops sprite
///@arg {real} Starting image index (standalone, left, mid, right)


//global.crop_index is the thing to look for in o_controller

var item_id = argument0;
global.crop_index[#item_id, cropstats.name] = argument1;
global.crop_index[#item_id, cropstats.description] = argument2;
global.crop_index[#item_id, cropstats.base_value] = argument3;
global.crop_index[#item_id, cropstats.grow_speed] = argument4;
global.crop_index[#item_id, cropstats.sprite] = argument5;
global.crop_index[#item_id, cropstats.image] = argument6;