2D Maze runner 
=========================


## Features of the Game implemented

1. Procedural Maze Generation
The maze for the world is procedurally generated and changes on each load. Recursive
Backtracking algorithm was used to generate the maze.
2. Player Spawn and Control Mechanism
The player can be controlled with Up,down, right and left keys to move. Player checks for collision
with the walls of each cell and only proceeds forward if there is no obstacle.
3. Enemy AI
AI ghosts move around the maze and choose a random path to reach the player. The enemies
are pixel art and animated. They also change color and flash when they can be killed by the user when using a powerup.
4. Powerups
Two Power Ups, (Player speed increase) and ( Player kills enemies) are available to the player
for grabs. Each powerup has a specific duration of working and then gets disabled.
5. Score
Each fruit that the player picks up awards 1 point to the player. If the player collects them all he
wins.
6. Camera Zoom
Camera smooth zoom transition has been implemented to zoom onto the orthographic projection.
Zoom out with ‘Z’ key and in with ‘X’ key.



Adapted From : https://github.com/meghprkh/graphics-boilerplate

Instructions:

mkdir build
cd build
cmake ../
make all -j 4

Note - In case of Experimental Error for GLM.
add "#define GLM_ENABLE_EXPERIMENTAL" in the files main.h nonedit.cpp other_handlers.cpp and input.cpp, before you include glm.


