side = argument0;

if(side == 1)
	startX = 800;
else if(side ==2)
	startX = 2400;

// Platforms Layer
var obj = instance_create_layer(startX, 662, "Platforms", oWallShort);
startBlock = obj;
instance_create_layer(startBlock.x + 129, startBlock.y - 38, "Platforms", oWallMedium);
instance_create_layer(startBlock.x + 259, startBlock.y - 96, "Platforms", oWallTall);
instance_create_layer(startBlock.x + 925, startBlock.y + 10, "Platforms", oBlock);
instance_create_layer(startBlock.x + 1035, startBlock.y - 128, "Platforms", oBlock);
instance_create_layer(startBlock.x + 1064, startBlock.y + 10, "Platforms", oBlock);


// Instances Layer
instance_create_layer(startBlock.x + 405, startBlock.y - 918, "Instances", oSpider);
instance_create_layer(startBlock.x + 434, startBlock.y - 30, "Instances", oSprayCan);