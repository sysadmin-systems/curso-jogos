/// @description Insert description here
// You can write your code in this editor
Velocidade = 5;
level_tiro = 1;
espera_tiro = 50;
vida = 3;
escudos = 3;
meu_escudo = noone;

atirando = function() {
	if (keyboard_check(vk_space) && alarm[0] == -1) then
	{	
		alarm[0] = espera_tiro;
	
		if level_tiro = 1 then
		{
			instance_create_layer(x,y - sprite_height / 2,"tiro",obj_tiro_player);
		} 
		else if level_tiro = 2 then
		{
			tiro2_level2();
		}
		else if level_tiro = 3 then
		{
			instance_create_layer(x,y - sprite_height / 2,"tiro",obj_tiro_player);
			tiro2_level2();
		}		
		else if level_tiro = 4 then
		{	
			tiro2_level4();
		}	
		else if level_tiro = 5 then
		{	
			tiro2_level2();
			tiro2_level4();
		}			
		
	}	

}

	tiro2_level2 = function() {
		var tiro1 = instance_create_layer(x - 60,y - sprite_height / 2,"tiro",obj_tiro2_player);
		var tiro2 = instance_create_layer(x + 60,y - sprite_height / 2,"tiro",obj_tiro2_player);
		tiro1.hspeed = -3;
		tiro2.hspeed = +3;	
	}	
	
	tiro2_level4 = function() {
		
		var mydirection = 75;
			
		repeat(3) 
		{				
			var meu_tiro = instance_create_layer(x,y - sprite_height / 2,"tiro",obj_tiro_player);
			meu_tiro.direction = mydirection;
			meu_tiro.image_angle = meu_tiro.direction - 90;
				
			mydirection += 15;
		}				
	}


level_up = function(_chance){
	
	if (_chance >= 90) then
	{
		if (level_tiro < 5){			
			
			level_tiro += 1;		
			
		}
		else
		{
			ganhando_pontos(100);
		}
	
	} 
	else if (_chance >= 45) then {
		if (espera_tiro > 20) then
		{
			espera_tiro *= .9;			
		}
		else
		{
			ganhando_pontos(10);
		}
	}
	else {
		if (Velocidade < 10) then
		{
			Velocidade += .5; 					
		}
		else
		{
			ganhando_pontos(10);
		}

	}	
	
}


perde_vida = function(){
	
	
	
	if (!meu_escudo) then
	{
		if (vida > 0 )  then
		{		
			vida--;
			screenshake(5);		
		} 
		else
		{
			instance_destroy();	
			screenshake(15);
		}		
	}
	
}


cria_escudo = function() 
{
	var tecla_e = keyboard_check_pressed(ord("E"));
	
	if (tecla_e && escudos > 0 && meu_escudo == noone)  then
	{
	
	
	 var escudo = instance_create_layer(x, y, "escudo", obj_escudo);
	 escudo.alvo = id;
	
	 meu_escudo = escudo;
	
     escudos--;	
	}


}

