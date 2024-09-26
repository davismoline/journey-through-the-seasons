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
 var lay_id = layer_get_id("BG_Summer")
 var background_id =layer_background_get_id((lay_id))
if(global.currentSeason = 0)
	{
		layer_background_sprite(background_id,BGSummer)
		
	}
else if(global.currentSeason = 1)
	{
		layer_background_sprite(background_id,BGFall)
		
	}
else if(global.currentSeason = 2)
	{
		layer_background_sprite(background_id,BGWinterl)
		
	}
	else if(global.currentSeason = 3)
	{
		layer_background_sprite(background_id,BGSpring)
		
	}