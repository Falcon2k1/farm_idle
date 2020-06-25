/// @description Clickity!

show_debug_message("HEYA")
// get the o_fieldmenu id
fieldmenu = instance_find(o_fieldmenu,0)
field_id = fieldmenu.field_id

if field_id
{
	with (field_id)
	{
		sprite_index = other.sprite_index
		start_index = other.image_index	
		crop_name = other.crop_name
	
	}
}