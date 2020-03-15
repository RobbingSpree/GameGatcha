/// @description 
//The Layout is a basic map with sections that must be filled

enum item
{
	layout,
	dev,
	mech,
	philosophy,
	idea,
	crunch,
	inspiration,
	misc
}

enum room_parts
{
	empty,
	desk,
	board,
	misc
}

unit=64;
width=5;
height=5;
dev_spots = 2;
board_spots = 2;
index = invintory.layout_focus;

room_ = [];
px=x; //position on screen as refrenced by other objects
py=y;
dx=px; //destination on screen as refrenced by itself and other objects so smooth movement can be acheived
dy=py;

first_frame = true; //run a second lot of create events after having another object create this one

bucket=[];
/*
//column 0 what the bucket is for 
bucket[0,0]=item.dev;
//column 1 bucket is filled
bucket[1,0]=false;
//column 2 bucket index
bucket[0,2]=noone;
//column 3 contents index
bucket[0,3]=noone;
bucket[1,0]=item.misc;
bucket[1,1]=false;
bucket[1,2]=noone;
bucket[1,3]=noone;

scope=0; //size of project
progress=0; //how much of the current game is made