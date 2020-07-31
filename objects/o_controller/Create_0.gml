/// @description Setup ALL variables

// setting target delta, or how many milliseconds a frame should take.
target_delta = 1/60;

#region read crops.json
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
global.crop_list = ds_map_create()
ds_map_add(global.crop_list, "dirt", inst_crop_list("dirt"))
ds_map_add(global.crop_list, "turnip", inst_crop_list("turnip"))

#region read upgrades.json
file = file_text_open_read("upgrades.json");
json = ""
while (!file_text_eof(file))
{
	json += file_text_read_string(file);
	file_text_readln(file);
}
file_text_close(file);
#endregion
global.upgrade_index = json_decode(json);
global.upgrade_list = ds_list_create()


#region populate the upgrade list
var _next = ds_map_find_first(global.upgrade_index)
var _count = 0

while (!is_undefined( _next ) )
{
	ds_list_add(global.upgrade_list, _next)
	_next = ds_map_find_next(global.upgrade_index, _next)
	_count++;
}

ds_list_sort(global.upgrade_list,true)
#endregion

// Setting an initial dirt value so you can buy your first unlock.
var _dirt_map = global.crop_list[? "dirt"]
_dirt_map[? "quantity"] = 100;

