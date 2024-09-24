/// @description Insert description here
// You can write your code in this editor

// changes ground depending on current season

if (global.currentSeason = 0)
{
	sprite_index = spr_temp_summer
}
else if (global.currentSeason = 1)
{
	sprite_index = spr_temp_fall
}
else if (global.currentSeason = 2)
{
	sprite_index = spr_temp_spring
}
else
{
	sprite_index = spr_temp_winter
}