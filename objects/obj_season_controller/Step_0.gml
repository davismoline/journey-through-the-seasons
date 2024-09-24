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
}