side = argument0;

if(side == 1)
	startX = 600;
else if(side ==2)
	startX = 2350;

// Platforms Layer
var obj = instance_create_layer(startX, 640, "Platforms", oPlatforms);
startBlock = obj;
instance_create_layer(startBlock.x + 441, startBlock.y - 16, "Platforms", oWallMedium);
instance_create_layer(startBlock.x + 690, startBlock.y - 250, "Platforms", oBlock);
instance_create_layer(startBlock.x + 654, startBlock.y - 112, "Platforms", oBlock);
instance_create_layer(startBlock.x + 708, startBlock.y + 24, "Platforms", oBlock);
instance_create_layer(startBlock.x + 1120, startBlock.y - 64, "Platforms", oStructure5);


// Instances Layer
instance_create_layer(startBlock.x + 308, startBlock.y + 26, "Instances", oPuddle);
instance_create_layer(startBlock.x + 1024, startBlock.y - 96, "Instances", oVacSpeed);