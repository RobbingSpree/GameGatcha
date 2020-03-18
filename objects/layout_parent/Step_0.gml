/// @description 

#region //--First time setup
if first_frame
{
	while dev_spots > 0 && board_spots > 0 //this doesn't work atm
	{
		for(var i=0; i<width; i++)
		{
			for(var k=0; k<height; k++)
			{
				room_[i,k]=room_parts.empty;
				bucket[i,k]=noone;
				if irandom(3)==2 && room_[i,k] == room_parts.empty
				{
					if irandom(4) mod 2
					{
						if dev_spots > 0
						{
							room_[i,k]=room_parts.desk;
							var buk = instance_create_layer(x,y,"Buckets",bucket_obj);
							buk.x_offset = unit*i;
							buk.y_offset = unit*k;
							buk.parent = self;
							buk.type = room_parts.desk;
						}
						dev_spots-=1;
					}else{
						if board_spots > 0
						{
							room_[i,k]=room_parts.board;
							var buk = instance_create_layer(x,y,"Buckets",bucket_obj);
							buk.x_offset = unit*i;
							buk.y_offset = unit*k;
							buk.parent = self;
							buk.type = room_parts.board;
						}
						board_spots-=1;
					}
				}
			}
		}
	}
	first_frame = false;
}
#endregion

dy = (invintory.layout_focus - index)*view_hport[0]+188;

if py != dy
	py = lerp(py,dy,0.3)
if abs(py-dy)/view_hport[0] < 0.1
	py = dy;
y=py;