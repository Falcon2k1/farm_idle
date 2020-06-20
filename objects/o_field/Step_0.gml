/// @description Once per step
// You can write your code in this editor

switch (sprite_index)
{
	case -1:
		wheat_output = 0;
		break;
	default:
		wheat_output = 1;
		break;
}

if click_cd > 0
{
	click_cd -= global.delta_mult;
}