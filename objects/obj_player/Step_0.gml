/// @descr Movement Code
get_user_input();

//process movement
hsp = (moveRight + moveLeft) * moveSpeed;

//jump and gravity
//collision code
if(place_meeting(x, y + 1, obj_temp_ground))
{
	if(jump)
	{
		vsp = -jumpSpeed;
	}
}
else
{
	vsp += grav;	
}
	
horizontal_collision(obj_temp_ground);
	

vertical_collision(obj_temp_ground);

x += hsp;
y += vsp;

// throw direction changes based on last input
if (moveLeft = -1)
{
	throwDirection = -1
}
if (moveRight = 1)
{
	throwDirection = 1
}
