/// @description Insert description here
// You can write your code in this editor
//find direction toward mouse, based on player
dir = point_direction(Outlaw.x,Outlaw.y,mouse_x,mouse_y)
image_angle=dir

//possibly flip gun sprite and make gun follow
//player's position
if Outlaw.x < mouse_x {
  image_yscale=+1
  x=Outlaw.x+15
  y=Outlaw.y+15
  }
else{
  image_yscale=-1
  x=Outlaw.x-15
  y=Outlaw.y+15
  }