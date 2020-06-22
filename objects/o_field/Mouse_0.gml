/// @description On-click stuff!
// You can write your code in this editor

// Image index notes
// 13 - Standalone
// 14 - Left 
// 15 - Center
// 16 - Right

if click_cd <= 0
{
	switch (sprite_index)
	{
		case -1:
			sprite_index = spr_Fields;
			image_index = 13;
			click_cd = 25;
			wheat_output = 1;
			break;
		case 1:
			sprite_index = -1;
			click_cd = 25;
			wheat_output = 0;
			break;
	}
}
