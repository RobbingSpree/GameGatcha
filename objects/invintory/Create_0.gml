/// @description Insert description here
// You can write your code in this editor

layouts=[];
layouts_total=1;
layout_focus=0;

unassigned = [];
totals=[];


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