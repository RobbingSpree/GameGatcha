/// @description Insert description here
// You can write your code in this editor

//roll for item
var it = instance_create_layer(x,y,"Invintory",items);
it.item_type = image_index;
it.index = invintory.totals[image_index];
it.subindex = roll_result(image_index);
invintory.totals[image_index]+=1;
invintory.unassigned[image_index,invintory.totals[image_index]]=it;