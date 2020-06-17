/// @function calc_9s_round(sprite, length)
/// @arg sprite
/// @arg length

//Initialize variables

var _sprite, _len, _sprlen, _mod;

//define arguments

_sprite = argument0; // The sprite used
_len = argument1;    // The requested length to round

// Calculate sprite length

_sprlen = sprite_get_width(_sprite); // The width of the sprite
_mod = _len mod _sprlen;        // Remainder of dividing requested length by the sprite
_div = _len div _sprlen;		// How many times you can divide the requested length by the sprite

if _mod == 0
{
	return _len;
}
else if _mod / 2 < _sprlen
{
	return (_sprlen * _div);
}
else
{
	return (_sprlen * (_div+1));
}
