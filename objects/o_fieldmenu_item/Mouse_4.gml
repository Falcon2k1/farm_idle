/// @description Insert description here


with (instance_nearest(x,y,o_fieldmenu)) {
	desc_txt = string(other.details[? "name"]) + "\n\n";
    var _next = string(other.details[? "description"]);
	desc_txt += _next;
}