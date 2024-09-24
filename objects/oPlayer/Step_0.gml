/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(ord("D"))) {
    hspeed = move_speed;
    image_xscale = -1; // Face right
    if (!jumping) {
        sprite_index = playerWalk;
    }
} else if (keyboard_check(ord("A"))) {
    hspeed = -move_speed;
    image_xscale = 1; // Face left
    if (!jumping) {
        sprite_index = playerWalk;
    }
} else {
    hspeed = 0;
    if (!jumping) {
        sprite_index = playerWalk;
    }
}

// this is the jump button being pressed and setting an animation and two other bools to do animation checks
if (keyboard_check_pressed(ord("W")) && place_meeting(x, y + 1, oGround) && !place_meeting(x + 1, y, oIcefall) && !place_meeting(x - 1, y, oIcefall) && !jumping) {
    vspeed = jump_strength;
    sprite_index = playerJump;
    image_index = 0; 
    jumping = true;
}

if (keyboard_check_pressed(ord("W")) && place_meeting(x + 1, y, oIcefall) && place_meeting(x - 1, y, oIcefall) && !jumping) {
	vspeed = -move_speed;
    image_index = 0; 
    jumping = true;
}

// this is just applying the gravity for the player
if (!place_meeting(x, y + 1, oGround)) {
    vspeed += grav;
} else if (vspeed > 0) {
    vspeed = 0;
    if (jumping) {
        // this is setting the landing animation 
        sprite_index = playerWalk;
        image_index = 0;
        jumping = false; 
		JumpCount = 0;
    }
}

if (place_meeting(x + 1, y, oIcefall) && place_meeting(x - 1, y, oIcefall)) {
	hspeed = 0;
}

// this is setting the collision for our vspeed
if (place_meeting(x, y + vspeed, oGround)) {
    while (!place_meeting(x, y + sign(vspeed), oGround)) {
        y += sign(vspeed);
    }
    vspeed = 0;
}

// this is applying our vspeed
y += vspeed;

//this goes into the pause menu and makes a save of the players location within it.
if (keyboard_check(vk_tab) ||(keyboard_check(vk_escape)))
{
	window_set_cursor(cr_arrow)

	room_goto(RTitle);
	
	audio_stop_all();
}
