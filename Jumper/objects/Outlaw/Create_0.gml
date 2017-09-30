/// @description Insert description here
// You can write your code in this editor
grav = 1;
hsp = 0;
vsp = 0;
jumpspeed = 7;
movespeed = 4;
rateOfFire = 10;

gamepad_set_axis_deadzone(0,0.7);

//create gun
x_offset = 0;
y_offset = 0;
revovler = instance_create_depth(x+x_offset,y+y_offset,0,Gun);