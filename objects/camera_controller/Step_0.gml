/// @description Insert description here
// You can write your code in this editor
var left = keyboard_check_pressed(vk_left);
var right = keyboard_check_pressed(vk_right);

if left || right 
{
	var dir = right - left;
	menu_destination += dir;
	if menu_destination < m.gatcha
		menu_destination=m.stats;
	if menu_destination > m.stats
		menu_destination=m.gatcha;
}
if menu != menu_destination
	menu=lerp(menu,menu_destination,0.4);
if abs(menu-menu_destination) < 0.2
{
	menu=menu_destination;
	last_menu=menu;
}

x = 1024*menu;
camera_set_view_pos(view_camera[0],x,y);

