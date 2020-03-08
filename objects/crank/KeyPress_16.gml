/// @description Insert description here
// You can write your code in this editor
var prize = instance_create_layer(mouse_x,mouse_y,"Instances",gatcha);
	prize.image_index = next_prize;
	next_prize = irandom(item.misc);