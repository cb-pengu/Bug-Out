/// @description Create buttons

// New Game
sprite = sNew;
x1 = x0-sprite/2;
button = instance_create_layer(x1 - 200, y0 + 300, "Instances", oButton);
button.sprite_index = sprite;
button.target = room0;

//Update variables
y0 += (sep + sprite.sprite_height);

// Quit Game
sprite = sQuit;
button = instance_create_layer(x1 + 200, y0 + 172, "Instances", oButton);
button.sprite_index = sprite;
button.quit = true;