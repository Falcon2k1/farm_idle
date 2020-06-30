/// @description Setup ALL variables

// setting target delta, or how many milliseconds a frame should take.
target_delta = 1/60;

// the inventory totals 
global.wheat_total = 0;
global.wheat_cd = 0;
global.wheat_timer = 60;

file = file_text_open_read("crops.json");
json = ""
while (!file_text_eof(file))
{
	json += file_text_read_string(file);
	file_text_readln(file);
}
file_text_close(file);

global.crop_index = json_decode(json);