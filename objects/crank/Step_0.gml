/// @description Insert description here
// You can write your code in this editor

image_angle=turn/5;

px = x + lengthdir_x(r, ang);
py = y + lengthdir_y(r, ang);

if turn > 1800
{
	turn-=1800;
	var prize = instance_create_layer(x,y+sprite_height,"Invintory",gatcha);
	prize.depth = 10;
	prize.image_index = next_prize;
	next_prize = irandom(item.misc);
}
if ang mod 360 > 355
	ang+=5;
var mouse_ang = point_direction(x,y,mouse_x,mouse_y);

inrange=false;
if point_distance(x,y,mouse_x,mouse_y) < 240 && point_distance(x,y,mouse_x,mouse_y) > 150
	inrange=true;

onpoint=false;
if abs(mouse_ang-(ang mod 360)) <20
	onpoint = true;
	
if inrange && onpoint && mouse_check_button(mb_left)
{
	if mouse_ang > ang
		turn += mouse_ang-ang;
	ang = mouse_ang;
}