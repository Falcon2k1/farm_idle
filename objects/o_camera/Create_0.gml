/// @description Camera creation

// Divisors of View Width and Height:
// 1 - 1920 x 1080
// 2 - 960  x 540
// 3 - 640  x 360
// 4 - 480  x 270
// 5 - 384  x 216

view_width = 480;
view_height = 270;

window_scale = 3;

window_set_size(view_width*window_scale, view_height*window_scale);
//window_set_size(view_width, view_height)
alarm[0] = 1;

surface_resize(application_surface, view_width*window_scale, view_height*window_scale);
//surface_resize(application_surface, view_width, view_height);