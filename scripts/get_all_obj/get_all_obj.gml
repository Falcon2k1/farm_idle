/// @function get_all_obj
/// @arg object
/// @arg variable


var i, _obj, total, _id, _var;

_obj = argument0;			// The object to be looked up
total = 0					// The total value
_var = argument1;			// What variable you're adding up

for (i = 0; i < instance_number(_obj); i += 1)
   {
	   _id = instance_find(_obj,i);
	   total += variable_instance_get(_id,_var);
   }

return total;