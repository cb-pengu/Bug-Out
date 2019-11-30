side = argument0;

if(side == 1)
	startX = 400;
else if(side ==2)
	startX = 2200;

// Platforms Layer
var obj = instance_create_layer(startX, 663, "Platforms", oBlock);
startBlock = obj;
instance_create_layer(startBlock.x + 173, startBlock.y, "Platforms", oBlock);
instance_create_layer(startBlock.x + 95, startBlock.y - 138, "Platforms", oBlock);
instance_create_layer(startBlock.x + 442, startBlock.y - 289, "Platforms", oPlatforms);
instance_create_layer(startBlock.x + 895, startBlock.y - 372, "Platforms", oPlatforms);
instance_create_layer(startBlock.x + 1463, startBlock.y - 97, "Platforms", oStructure4);

// Instances Layer
instance_create_layer(startBlock.x + 670, startBlock.y - 32, "Instances", oSprayCan);
instance_create_layer(startBlock.x + 1174, startBlock.y, "Instances", oPuddle);
instance_create_layer(startBlock.x + 1519, startBlock.y - 1057, "Instances", oSpider);

obj = instance_create_layer(startBlock.x + 897, startBlock.y - 432, "Instances", oVacSpeed);
with(obj){
	image_xscale = 0.7254902;
	image_yscale = 0.71875
}
/*
// Walls Layer
obj = instance_create_layer(startBlock.x + 72, startBlock.y + 1.5, "Walls", oWall);
with(obj){
	image_xscale = 4.40625;
	image_yscale = 2.14062;
}

obj = instance_create_layer(startBlock.x + 96, startBlock.y - 133.5, "Walls", oWall);
with(obj){
	image_xscale = 2.1875;
	image_yscale = 2.296875;
}

obj = instance_create_layer(startBlock.x + 442.5, startBlock.y - 303.5, "Walls", oWall);
with(obj){
	image_xscale = 3.296875;
	image_yscale = 0.203125;
}

obj = instance_create_layer(startBlock.x + 893, startBlock.y - 390, "Walls", oWall);
with(obj){
	image_xscale = 3.21875;
	image_yscale = 0.125;
}

obj = instance_create_layer(startBlock.x + 1297.5, startBlock.y - 261.5, "Walls", oWall);
with(obj){
	image_xscale = 3.35975;
	image_yscale = 0.171875;
}

obj = instance_create_layer(startBlock.x + 1293.5, startBlock.y - 100, "Walls", oWall);
with(obj){
	image_xscale = 3.234375;
	image_yscale = 0.125;
}

obj = instance_create_layer(startBlock.x + 1403, startBlock.y - 99, "Walls", oWall);
with(obj){
	image_xscale = 0.21875;
	image_yscale = 5.23;
}

obj = instance_create_layer(startBlock.x + 1571, startBlock.y - 20.5, "Walls", oWall);
with(obj){
	image_xscale = 4.96875;
	image_yscale = 0.140625;
}
*/