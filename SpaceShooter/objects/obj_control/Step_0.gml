/// @description Insert description here
// You can write your code in this editor


if (!instance_exists(obj_player) && !gameover_seq && !level_completo) then
{
	gameover_seq = layer_sequence_create("Sequences", room_width/2, room_height/2, sq_gameover);
} 
// 928, 608