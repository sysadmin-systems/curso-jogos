/// @description Insert description here
// You can write your code in this editor



if (estado_atual != estados[3]) then
{
	sprite_index = spr_boss;
}

troca_estado();

show_debug_message(estado_atual);

if (estado_atual == "estado_1") then
{
   estado_1();
}
else if (estado_atual == "estado_2") then 
{
// videoaula 316.307 time 1:19
	estado_2();
	
}
else if (estado_atual == "estado_3") then
{
	estado_3();
}
else if (estado_atual == "estado_4") then
{
	estado_4();
}
