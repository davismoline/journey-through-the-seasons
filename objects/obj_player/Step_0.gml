/// @descr Movement Code
get_user_input();

//process movement
if (place_meeting(x - 1, y, obj_icefall)) {
	iceWallLeft = true;
}
else {
	iceWallLeft = false;
}
if (place_meeting(x + 1, y, obj_icefall)) {
	iceWallRight = true;
}
else {
	iceWallRight = false;
}
if (!iceWallLeft && !iceWallRight) {
	hsp = (moveRight + moveLeft) * moveSpeed;
}
if (iceWallLeft) {
	hsp = moveRight * moveSpeed;
}
if (iceWallRight) {
	hsp = moveLeft * moveSpeed;
}

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

if (onIcefall || onVines) {
	grav = 0;
}

if (!onIcefall && !onVines) {
	grav = .6;
}

//ice climbing mechanic
onIcefall = false;
if (!place_meeting(x, y + 1, obj_temp_ground)) {
	if (place_meeting(x - 1, y, obj_icefall) || place_meeting(x + 1, y, obj_icefall)) {
		onIcefall = true;
		vsp = 0;
		vsp = (climbUp) * moveSpeed;
	}
}

//vine climbing
onVines = false;
if (!place_meeting(x, y + 1, obj_temp_ground) && place_meeting(x, y, obj_vines)) {
	onVines = true;
	vsp = 0;
	vsp = (climbUp + climbDown) * moveSpeed;
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

x += hsp;
y += vsp;

/*
if (holding)
{
	if (interact)
	{
		holding = 0
	}
}
*/