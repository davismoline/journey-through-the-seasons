/// @description Insert description here
// You can write your code in this editor

// destroys enemy then self if apple is actively falling
if (falling)
{
	instance_destroy(other)
	instance_destroy()
}