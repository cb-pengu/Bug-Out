// Generate Borders and Floor

randomize();

var Border = instance_create_layer(2000, 750.5, "Walls", oWall);
with(Border){
	image_xscale = 62.5;
	image_yscale = 0.546875;
}
Border = instance_create_layer(-32, 384, "Walls", oWall);
with(Border){
	image_yscale = 12;
}
Border = instance_create_layer(2000, -32, "Walls", oWall);
with(Border){
	image_xscale = 64.5;
}
Border = instance_create_layer(4032, 384, "Walls", oWall);
with(Border){
	image_yscale = 12;
}

//Set ant/vac/end start positions
oVacuum.x = oVacuum.xstart;
oVacuum.y = oVacuum.ystart;
oAnt.x = oAnt.xstart;
oAnt.y = oAnt.ystart;
oSafe.x = oSafe.xstart;
oSafe.y = oSafe.ystart;

// Add Structure Sets to list
sets = ds_list_create();
ds_list_add(sets, Set0);
ds_list_add(sets, Set1);
ds_list_add(sets, Set2);
ds_list_add(sets, Set3);
ds_list_add(sets, Set4);
ds_list_add(sets, Set5);

// Execute Random Set
script_execute(ds_list_find_value(sets, irandom(ds_list_size(sets) -1 )), 1);
if(room != finalLevel){
	script_execute(ds_list_find_value(sets, irandom(ds_list_size(sets) -1 )), 2);
}


oAnt.backgroundColor = irandom(9);
