/// @description Insert description here
// You can write your code in this editor

//this is just the horizontal speed
hspeed = 0; 

//this is just the vertical speed
vspeed = 0; 

//this is just the gravity speed
grav = .5;

//this is the jump strength that we use for our jump
jump_strength = -5;

// this is the base value for our movement speed
move_speed = 4; 

//this is the base sprite that the player uses
sprite_index = playerWalk; 

// this is the base direction the player should be facing
image_xscale = 1; 

// this is just checking to see if the player is jumping or not 
jumping = false; 

ice_sticking = false;

//we are setting the cursor to none when the player is on screen 
window_set_cursor(cr_none)
