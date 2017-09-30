/// @description Insert description here
// You can write your code in this editor
var xp, yp;
xp=x+30*cos( degtorad(image_angle) )
yp=y-30*sin( degtorad(image_angle) )

bob=instance_create_depth(xp,yp,0,Bullet);
bob.speed=15
bob.direction=image_angle
bob.image_angle=image_angle