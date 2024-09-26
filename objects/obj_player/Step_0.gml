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

//animation 

if (!place_meeting(x,y+1,obj_temp_ground))
{
	// gets airbrone sprite
	sprite_index = playerJump;
	// mutiplication of image speed
	image_speed = 1;
	// inline if else statement
}
else
{
	if (sprite_index == playerJump) 
	{
		audio_play_sound(fall,4,false);
		repeat(5)
		{
			with (instance_create_layer(x,bbox_bottom,"dust",oDust))
			{
				vsp = 0;
				
			}
		}
	}
	// running animation
	// when the hsp has a value higer then 0 it'll use the run animation
	if (hsp == 0)
	{
		sprite_index = playerWalk;	
		image_speed = 0;
	}
	else
	{
		sprite_index = playerWalk;
		image_speed = 1;
	}
}

// flips image to the left
if (hsp != 0) image_xscale = sign(-hsp) * 3;

/*
if (holding)
{
	if (interact)
	{
		holding = 0
	}
}
*/