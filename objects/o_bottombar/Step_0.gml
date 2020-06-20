/// @description Iterate through totals
// You can write your code in this editor

if wheat_cd < 0
{
	wheat_total += get_all_obj(o_field,"wheat_output");
	wheat_cd = wheat_timer;
}
else
{
	wheat_cd -= global.delta_mult
}