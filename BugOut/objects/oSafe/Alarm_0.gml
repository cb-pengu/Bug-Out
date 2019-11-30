/// @description Go to next level

global.level++;
//temp going back to menu
if(room == finalLevel){
	room_goto(menu); // Change to win
} else if (global.level == 9){
	room_goto(finalLevel);
} else {
	room_restart();
}