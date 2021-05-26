/// @description Insert description here
// You can write your code in this editor

if image_index > 0 then
{
  image_index -=1;
  
  image_alpha -= 0.2;
}
else
{
	instance_destroy();
}


alarm[0] = room_speed * 2;