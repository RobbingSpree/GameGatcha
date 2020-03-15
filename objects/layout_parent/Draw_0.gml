/// @description Insert description here
// You can write your code in this editor

//draw blueprint bg
for (var i=0; i<width; i++)
{
	for (var k=0; k<height; k++)
	{
		draw_sprite(blueprint_spr,0,px+unit*i,py+unit*k);
		if room_[i,k] != room_parts.empty
		{
			if room_[i,k] == room_parts.desk
				draw_sprite(spr_table,0,px+unit*i,py+unit*k);
			if room_[i,k] == room_parts.board
				draw_sprite(spr_board,0,px+unit*i,py+unit*k);
		}
	}
}

