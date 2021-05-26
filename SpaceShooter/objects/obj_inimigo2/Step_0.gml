/// @description Insert description here
// You can write your code in this editor


event_inherited();


pontos = 12;

if (y > room_height/3 && mover ) {	    
		mover = false;
	
		if (x > room_width/2) then {	
			// show_debug_message("Estou na direita");
			hspeed = -3
		} else {
			// show_debug_message("Estou na esquerda");
			hspeed = 3
		}
}
	
