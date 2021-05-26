/// @description Insert description here
// You can write your code in this editor


chance = random(100);


speed = 2;
direction = irandom(359);


cor = c_red;


if (chance >= 90) then
{
	cor = c_lime;	
	
} 
else if (chance >= 45) then 
{
	cor = c_orange;	

}
else {
	cor = c_purple;
}			


alarm[0] = room_speed;
	
