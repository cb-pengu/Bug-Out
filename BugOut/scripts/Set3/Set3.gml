side = argument0;

if(side == 1)
	startX = 550;
else if(side ==2)
	startX = 2250;

// Platforms Layer
var obj = instance_create_layer(startX, 666, "Platforms", oBlock);
startBlock = obj;
instance_create_layer(startBlock.x + 200, startBlock.y - 121, "Platforms", oPlatforms);
instance_create_layer(startBlock.x + 1250/*698*/, startBlock.y - 214, "Platforms", oPlatforms);
instance_create_layer(startBlock.x + 698/*1309*/, startBlock.y - 101, "Platforms", oStructure4);


// Instances Layer
instance_create_layer(startBlock.x + 293, startBlock.y - 1082, "Instances", oSpider);
instance_create_layer(startBlock.x + 1280/*696*/, startBlock.y - 245, "Instances", oCanStand);

prevObj = obj;
obj = instance_create_layer(startBlock.x + 1284.5/*700.5*/, startBlock.y - 75.5, "Webs", oSpiderWeb);
with(obj){
	image_xscale = 1.034884;
	image_yscale = 0.8757576;
}

instance_create_layer(startBlock.x + 866/*1477*/, startBlock.y - 100, "Instances", oPuddle);
instance_create_layer(startBlock.x + 866/*1477*/, startBlock.y - 186, "Instances", oVacSpeed);