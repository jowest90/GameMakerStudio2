/// @description Insert description here
// You can write your code in this editor
//Get the player's input
key_right = keyboard_check(ord("D")) || (gamepad_axis_value(0,gp_axislh) > 0);
key_left = -(keyboard_check(ord("A")) || (gamepad_axis_value(0,gp_axislh) < 0));
key_jump = keyboard_check_pressed(vk_space) || (gamepad_button_check_pressed(0,gp_face1));

//React to inputs
move = key_left + key_right;
hsp = move * movespeed;
if (vsp < 10) vsp += grav;

if (place_meeting(x,y+1,Ground))
{
    vsp = key_jump * -jumpspeed
}

//Horizontal Collision
if (place_meeting(round(x+hsp),round(y),Ground))
{
    while(!place_meeting(round(x+sign(hsp)),round(y),Ground)) x += sign(hsp);
    hsp = 0;
}
x += hsp;

//Vertical Collision
if (place_meeting(round(x),round(y+vsp),Ground))
{
    while(!place_meeting(round(x),round(y+sign(vsp)),Ground)) y += sign(vsp);
    vsp = 0;
}
y += vsp;