/// @description Insert description here
// You can write your code in this editor

// destroys apple under spawn location to prevent infinite apples
if (spawning)
{
	if (other.held = 0) // prevents held apple from being destroyed
	{
		instance_destroy(other)
	}
}