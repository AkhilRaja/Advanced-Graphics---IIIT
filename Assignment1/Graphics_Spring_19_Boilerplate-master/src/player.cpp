//
//  player.cpp
//  graphics_asgn1
//
//  Created by Akhil Raja on 30/08/20.
//

#include "player.hpp"


//Spawn the player in this method
void Player::initPlayer(int posX, int posY) {
    //Inital Position
    
}

//Draw the player
//Here is where you can load the pixel art text file
void Player::drawPlayer() {
    switch (currentDirection) {
        case right:
            
            break;
            
        default:
            break;
    }
}

bool Player::checkForWalls() {
    //If the wall of the current in the direction of the player exists
    if(currentCell->walls[currentDirection]) {
        //Check for the distance between player and the wall is less than some threshold
        //Stop him from moving
        canMove = false;
    }
    else {
        canMove = true;
    }
}

