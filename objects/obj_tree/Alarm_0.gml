/// @description Insert description here
// You can write your code in this editor

if (image_alpha = 1)
{
	spawnedApple = instance_create_depth(x, y, depth-1, obj_apple)
	spawnedApple.image_xscale = 3
	spawnedApple.image_yscale = 3
	spawnedApple.spawning = 1
}


alarm_set(0, random_range(60, 180))