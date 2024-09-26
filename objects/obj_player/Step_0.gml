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
		vsp = (climbDown + climbUp) * moveSpeed;
	}
}

//vine climbing
onVines = false;
if (!place_meeting(x, y + 1, obj_temp_ground) && place_meeting(x, y, obj_vines)) {
	onVines = true;
	vsp = 0;
	vsp = (climbUp + climbDown) * moveSpeed;
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