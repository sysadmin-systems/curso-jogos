/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event




event_inherited();

chance = 30;
mover = true;

atirando = function() {
	if ( y > 0 ) then
	{
		instance_create_layer(x - 3, y + sprite_height / 3 , "tiro", obj_tiro_inimigo02);
	}
}


