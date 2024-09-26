/// @description Insert description here
// You can write your code in this editor

// only "exists" during spring or while held
if (global.currentSeason != 3)
{
	if (!held)
	{
	image_alpha = 0
	}

}
else
{
	image_alpha = 1
}

if (spawning)
{
	falling = 1
	if (place_meeting(x, y, obj_ground))
	{
		falling = 0
		vspeed = 0
		spawning = 0
	}
}

// movement when thrown
if (thrown)
{
	hspeed = (10 * thrownDirection)
	vspeed = -10
	falling = 1
	thrown = 0
}

//adds gravity after throw arc
if (falling)
{
	image_alpha = 1
	vspeed += 1
}

if (image_alpha = 0)
{
	instance_destroy()
}