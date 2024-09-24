/// @description Insert description here
// You can write your code in this editor

// changes ground depending on current season

if (global.currentSeason = 0)
{
	sprite_index = SummerTile9Slice
}
else if (global.currentSeason = 1)
{
	sprite_index = FallTile9Slice
}
else if (global.currentSeason = 2)
{
	sprite_index = WinterTile
}
else
{
	sprite_index = SpringTile9Slice
}