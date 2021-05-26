/// @description Insert description here
// You can write your code in this editorIf (keyboard_check(ord("A"))
var up, down, left, right, setacima;
up    =   keyboard_check(ord("W"));
down  =   keyboard_check(ord("S"));
left  =   keyboard_check(ord("A"));
right =   keyboard_check(ord("D"));


setacima  =   keyboard_check_pressed(vk_up);
setabaixo =   keyboard_check_pressed(vk_down);
setaesquerda  =   keyboard_check_pressed(vk_left);
setadireita =   keyboard_check_pressed(vk_right);



if (setacima) && (level_tiro < 5) then 
{
	level_tiro++;	
}

if (setabaixo)  && (level_tiro > 1) then
{
	level_tiro--;
	
}
if (setadireita) then
{
	espera_tiro *= 1.1;
}

if (setaesquerda) && (espera_tiro > 20) then
{
	espera_tiro *= .9;
}

cria_escudo();	

y =  (y + (Velocidade * (down -  up)))
x =  (x + (Velocidade * (right - left)))



x = clamp(x, 64, 1856);
y = clamp(y, 64, 1024);



atirando();

