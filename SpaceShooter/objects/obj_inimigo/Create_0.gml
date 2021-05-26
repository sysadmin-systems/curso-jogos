/// @description Insert description here
// You can write your code in this editor
vspeed = 3;
chance = 20;

alarm[0] = room_speed * random_range(1,3);

pontos = 10;


if place_meeting(x, y, obj_inimigo) then
{
	instance_destroy(id, false);
}



atirando = function() {
	if ( y > 0 ) then
	{
		instance_create_layer(x - 3, y + sprite_height / 3 , "tiro", obj_tiro_inimigo01);
	}
}

dropa_item = function(_chance)
{
	var valor = random(100);
	if (valor <= _chance && y > 96) {
		instance_create_layer(x, y, "tiro", obj_power_up);
	}
	
}