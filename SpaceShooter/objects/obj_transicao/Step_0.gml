/// @description Insert description here
// You can write your code in this editor
if ( troquei_room  == false ) then
{
	alpha += 0.02;
}
else
{
	alpha -= 0.02;
}

if (alpha <= 0) then
{
	instance_destroy();
}


if (alpha >= 1 && troquei_room == false) then
{
	room_goto(destino1);
}