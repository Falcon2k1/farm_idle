/// @description Time incrementor
// You can write your code in this editor

// setting actual time of last frame in milliseconds
actual_delta = delta_time/1000000;	

// finally, calculating the actual global.delta_mult
global.delta_mult = actual_delta / target_delta

// GET THAT WHEAT CALC SON

if global.wheat_cd < 0
{
	global.wheat_total += get_all_obj(o_field,"wheat_output");
	global.wheat_cd = global.wheat_timer;
}
else
{
	global.wheat_cd -= global.delta_mult
}