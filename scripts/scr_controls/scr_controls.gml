// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_user_input() 
{
	jump		=  keyboard_check_pressed(ord("W"));
	moveLeft	= -keyboard_check(ord("A"));
	moveRight	=  keyboard_check(ord("D"));
	interact    =  keyboard_check_pressed(ord("S"));
	climbUp		=  -keyboard_check(vk_up);
	climbDown	=  keyboard_check(vk_down);
	seasonSwap  =  keyboard_check_pressed(vk_space)
}
