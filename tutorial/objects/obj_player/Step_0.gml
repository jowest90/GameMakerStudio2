//moving around
if (keyboard_check(vk_right)){
x = x+4;
}else if(keyboard_check(vk_left)){
x = x-4;
}else if(keyboard_check(vk_up)){
y = y-4;
}else if(keyboard_check(vk_down)){
y = y+4;
}

image_angle=point_direction(x,y,mouse_x,mouse_y);

//shoot
if (mouse_check_button(mb_left)){
	instance_create_layer(mouse_x,mouse_y,layer,obj_bullet);
}