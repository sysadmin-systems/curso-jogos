/// @description Insert description here
// You can write your code in this editor


if (vida > 0) then
{
	vida--;
	
	image_alpha -= 0.08;
	
	aumento_escala *= 1.1;

}
else
{
	instance_destroy();
}
instance_destroy(other);