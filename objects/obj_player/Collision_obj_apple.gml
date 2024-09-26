/// @description Insert description here
// You can write your code in this editor


// pickup object
if (!holding && interact && other.image_alpha != 0)
{
	holding = 1
	pickup = other
	pickup.held = 1
	holdCooldown = 1
	alarm_set(0, 3)
}

if (holding)
{
	pickup.x = x
	pickup.y = y-50
	if (!holdCooldown && interact)
	{
		holding = 0
		pickup.thrownDirection = throwDirection
		pickup.thrown = 1
		pickup.held = 0
	}
}

