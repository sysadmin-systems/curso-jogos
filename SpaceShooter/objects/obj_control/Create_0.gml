/// @description Insert description here
// You can write your code in this editor
randomize();


alarm[0] = room_speed;

audio_play_sound(snd_darkling, 1,0);

pontos = 0;
level = 9;
proximo_level = 1;//100;
gameover_seq = noone;
criar_boss = true;
level_completo = false;

criar_inimigo =  function()
{
	var p1 = random_range(64, 1888);
	var p2 = random_range(-96, -1504 - (level * 800));


	var inimigo = obj_inimigo;

	var chance = random_range(0, level);

	if (chance > 2) then
	{
		inimigo = obj_inimigo2;
	}

	instance_create_layer(p1, p2, layer, inimigo);
}


ganha_pontos = function (__pontos)
{
	
	pontos += __pontos * level;
	
	if pontos > proximo_level then
	{
		level ++ ;
		proximo_level *= 2;
		
	}
	
	
}

