/// @description Insert description here
// You can write your code in this editor



if (image_alpha < 1 and  primeiro_tiro == false) then
{
	image_alpha += 1 / room_speed;
	
}

if (escala > 1.5 or escala < 1) then
{
	aumento_escala *= -1;	
}

escala += aumento_escala;