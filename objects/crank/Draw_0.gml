/// @description Insert description here
// You can write your code in this editor

draw_self();
draw_sprite(gatcha_ball,next_prize,x,y+sprite_height)
draw_sprite(gatcha_opening_spr,24/1800*turn,x,y+sprite_height); //gatcha hole
draw_sprite_ext(crank_shaft_spr,0,x,y,1,1,ang,c_white,1); //crank shaft
draw_sprite_ext(crank_hold_spr,0,x,y,1,1,ang,c_white,1); //crank handle

/*
if inrange
	draw_circle(px,py,48,true);
	
draw_text(20,40,turn);
draw_text(20,60,point_direction(x,y,mouse_x,mouse_y));
draw_text(20,80,ang mod 360);
draw_text(20,100,inrange);
draw_text(20,120,onpoint);