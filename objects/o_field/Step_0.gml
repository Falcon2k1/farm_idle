/// @description Once per step
// You can write your code in this editor

// Image index notes
// 13 - Standalone
// 14 - Left 
// 15 - Center
// 16 - Right



//set neighbors
if l_neighbor != noone and l_neighbor.sprite_index == spr_Fields {left = true;}
else {left = false;}

if r_neighbor != noone and r_neighbor.sprite_index == spr_Fields {right = true;}
else {right = false;}

if sprite_index = spr_Fields
{
	if left == true and right == true
	{
		image_index = 15;
	}
	else if left == true and right == false
	{
		image_index = 16;
	}
	else if left == false and right == true
	{
		image_index = 14;
	}
	else
	{
		image_index = 13;
	}
}

if click_cd > 0
{
	click_cd -= global.delta_mult;
}