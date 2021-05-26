/// @description Insert description here
// You can write your code in this editor

if estado_atual != estados[3] then 
{

	if vida_atual > 0 then
	{
		vida_atual--;
	}
	else
	{
		instance_destroy();
	}

	instance_destroy(other);
}