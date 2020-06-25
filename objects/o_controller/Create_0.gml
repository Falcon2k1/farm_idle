/// @description Setup ALL variables

// setting target delta, or how many milliseconds a frame should take.
target_delta = 1/60;

// the inventory totals 
global.wheat_total = 0;
global.wheat_cd = 0;
global.wheat_timer = 60;

#region crop definitions
// https://forum.yoyogames.com/index.php?threads/structure-for-inventory-and-items-ideas-solved.26606/
// just in case you forget where the hell you found this
enum crops {
	dirt,
	grass,
	carrots,
	wheat,
	total = 4,
}
enum cropstats {
	name,
	description,
	base_value,
	grow_speed,
	sprite,
	image,
	total = 6,
}
#endregion

global.crop_index = ds_grid_create(crops.total, cropstats.total);

#region adding crop descriptions
add_crop(crops.dirt, "Dirt", "Just dirt. So weird that you'd bother planting this.", 1, 1,spr_Fields,1)
add_crop(crops.grass, "Grass", "Now you're starting to get somewhere! Look at you, mister grass-grower!", 1, 1,spr_Fields,5)
add_crop(crops.carrots, "Carrots", "Whoa, this is some serious stuff.", 1, 1,spr_Fields,9)
add_crop(crops.wheat, "Wheat", "Hard winter wheat, ready for harvesting and making that BREAD.", 1, 1,spr_Fields,14)

#endregion