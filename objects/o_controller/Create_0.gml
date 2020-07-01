/// @description Setup ALL variables

// setting target delta, or how many milliseconds a frame should take.
target_delta = 1/60;

// the inventory totals 
global.wheat_total = 0;
global.wheat_cd = 0;

// what is our cooldown?
global.wheat_timer = 180;

#region json stuff
file = file_text_open_read("crops.json");
json = ""
while (!file_text_eof(file))
{
	json += file_text_read_string(file);
	file_text_readln(file);
}
file_text_close(file);
#endregion

global.crop_index = json_decode(json);
global.crop_list = ds_list_create()

#region populate the crop list
var _next = ds_map_find_first(global.crop_index)
var _count = 0

while (!is_undefined( _next ) )
{
	ds_list_add(global.crop_list, _next)
	_next = ds_map_find_next(global.crop_index, _next)
	_count++;
}

ds_list_sort(global.crop_list,true)
#endregion