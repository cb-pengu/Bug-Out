side = argument0;

if(side == 1)
	startX = 600;
else if(side ==2)
	startX = 2400;

// Platforms Layer
var obj = instance_create_layer(startX, 672, "Platforms", oBlock);
startBlock = obj;
instance_create_layer(startBlock.x + 529, startBlock.y - 220, "Platforms", oPlatforms);
instance_create_layer(startBlock.x + 1180, startBlock.y - 104, "Platforms", oStructure4);


// Instances Layer
instance_create_layer(startBlock.x + 224, startBlock.y - 15, "Instances", oPuddle);
instance_create_layer(startBlock.x + 538, startBlock.y - 249, "Instances", oCanStand);
instance_create_layer(startBlock.x + 732, startBlock.y - 930, "Instances", oSpider);
instance_create_layer(startBlock.x + 987, startBlock.y - 175, "Instances", oVacSpeed);