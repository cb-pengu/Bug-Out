side = argument0;

if(side == 1)
	startX = 600;
else if(side ==2)
	startX = 2300;

// Platforms Layer
var obj = instance_create_layer(startX, 576, "Platforms", oStructure3);
startBlock = obj;
instance_create_layer(startBlock.x + 416, startBlock.y - 128, "Platforms", oPlatforms);
instance_create_layer(startBlock.x + 967, startBlock.y + 10, "Platforms", oStructure5);
instance_create_layer(startBlock.x + 1408, startBlock.y - 160, "Platforms", oBlock);
instance_create_layer(startBlock.x + 1408, startBlock.y - 32, "Platforms", oBlock);
instance_create_layer(startBlock.x + 1408, startBlock.y + 96, "Platforms", oBlock);

// Instances Layer
instance_create_layer(startBlock.x + 224, startBlock.y, "Webs", oSpiderWeb);
instance_create_layer(startBlock.x + 416, startBlock.y - 1088, "Instances", oSpider);
instance_create_layer(startBlock.x + 595.5, startBlock.y + 80, "Instances", oPuddle);
instance_create_layer(startBlock.x + 1220.5, startBlock.y + 20, "Instances", oGhost);
instance_create_layer(startBlock.x + 864, startBlock.y - 20, "Instances", oVacSpeed);