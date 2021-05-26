/// @description Insert description here
// You can write your code in this editor
instance_create_layer(x,y, layer, obj_explosao_inimigo);

screenshake(10);

if instance_exists(obj_control) then 
{
	obj_control.ganha_pontos(pontos);	
}


dropa_item(chance);

global.total_inimigos++; 