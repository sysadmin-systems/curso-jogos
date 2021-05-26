/// @description Insert description here
// You can write your code in this editor



image_alpha -= .1;


if (image_alpha <= 0) then
{
	instance_destroy(id, false);

}


// show_debug_message(  string(room_speed) + "!!!!!")
alarm[0] = room_speed;