get_user_input()

if (seasonSwap)
{
	if (global.currentSeason < 3)
	{
		global.currentSeason += 1
	}
	else
	{
		global.currentSeason = 0
	}
	if(global.currentSeason = 0)
	{
		layer_background_change(layer_background_get_id(Background),BGSummer)
	}
}