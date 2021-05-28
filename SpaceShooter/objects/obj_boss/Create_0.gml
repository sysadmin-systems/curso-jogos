/// @description Insert description here
// You can write your code in this editor

estados = ["estado_1" , "estado_2", "estado_3", "estado_4"];

estado_atual = estados[(choose(0,1,2))];

delay_tiro = room_speed / 2;
espera_tiro = 0;

delay_estado = room_speed * 8;
espera_estado = delay_estado;	
velocidade_horizontal = 3;

vida_max = 5;
vida_atual = vida_max;

meu_escudo = noone;

criar_minions = true;

tiro_2 = function(){
	instance_create_layer(x, y + 90, "Tiro", obj_tiro_inimigo02);		
	audio_play_sound(sfx_laser,1,0);
}


tiro_1 = function(_posx){
	instance_create_layer(x + _posx, y + 10, "Tiro", obj_tiro_inimigo01);	
}

estado_1 = function() {
	
	espera_tiro--;
	if (espera_tiro <= 0)then
	{
		tiro_2();
		espera_tiro = delay_tiro;
	}
	
}

estado_2 = function() {
	
	
	x += velocidade_horizontal;
	
	if (x >= 1632 || x <= 288) then
	{ 		
		velocidade_horizontal *= -1;
	}
	
	espera_tiro--;
	if (espera_tiro <= 0)then
	{
		tiro_1(160);
		tiro_1(-160);
		
		espera_tiro = delay_tiro * 2;
	}
	
}

estado_3 = function() {
	
	espera_tiro--;
	
	if (espera_tiro <= 0) {
		tiro_2();
		espera_tiro = delay_tiro * 2;
	}

	if (espera_tiro == delay_tiro) {
		tiro_1(160);
		tiro_1(-160);		
	}

}


estado_4 = function() {	
	
	sprite_index = spr_boss_escuro;
	
	
	x += sign(room_width / 2 - x);
	
	
	if (criar_minions) then
	{
		var _minion1 = instance_create_layer(128, 672, "Inimigo", obj_boss_minion);	
		var _minion2 = instance_create_layer(1760, 672, "Inimigo", obj_boss_minion);
	
		_minion1.image_angle = 90;
		_minion2.image_angle = -90;
		criar_minions = false;
	}
	
		
}

troca_estado = function () 
{
	espera_estado--;
	if (espera_estado <= 0) then
	{
		if (vida_atual > vida_max / 2) then
		{
		estado_atual = estados[(choose(0,1,2))];
		}
	else 
	{
		estado_atual = estados[(choose(0,1,2,3))];
	}	
	espera_estado = delay_estado;	
	}
}