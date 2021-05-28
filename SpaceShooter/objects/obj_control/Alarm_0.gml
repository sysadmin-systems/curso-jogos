/// @description Insert description here
// You can write your code in this editor


if not (instance_exists(obj_inimigo)) then
{
	var repetir = 10 * level;
	
	if (level < 10) then
	{
		repeat(repetir) 
		{
			criar_inimigo();	
		}
	}
	else 
	{	
		if  (criar_boss) then		
		{	
			
			layer_sequence_create("Boss_Entrada", 928, 608, sq_boss_entrando);
			criar_boss = false;
			audio_stop_all();
			
		}
		
	}
	
	

}




alarm[0] = room_speed * 5;

	