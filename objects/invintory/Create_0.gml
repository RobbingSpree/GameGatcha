/// @description Insert description here
// You can write your code in this editor

layouts=[];
layouts_total=1;
layout_focus=0;

unassigned = [];
totals=[];

var first = instance_create_layer(layout_up.x,layout_up.y+124,"Invintory",layout_parent);
first.index = 0;
layouts[0] = first;

var second = instance_create_layer(layout_up.x,layout_up.y+124,"Invintory",layout_parent);
second.index = 1;
layouts[1] = second;

for (var i=0; i<item.misc+1; i++)
{
	unassigned[i,0] = noone;
}

for (var i=0; i<item.misc+1; i++)
{
	totals[i] = 0;
}

subtypes = [];

for (var i=0; i<item.misc+1; i++)
{
	subtypes[i] = [];
	subtypes[i] = initalize_item_tables(i);
}