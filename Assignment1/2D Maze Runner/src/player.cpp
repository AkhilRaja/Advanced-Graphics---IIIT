//
//  player.cpp
//  graphics_asgn1
//
//  Created by Akhil Raja on 30/08/20.
//

#include "player.hpp"

//Spawn the player in this method
void Player::initPlayer(float posX, float posY) {
    //Inital Position
    x = posX;
    y = posY;
    
}

//Draw the player
//Here is where you can load the pixel art text file
void Player::drawPlayer() {
    float theta = 0.f;
    glColor3f(1, 1, 0);
    int startAngle = 30;
    int endAngle = 330;
    
    //Check the player movement and set him in motion
    if (canMove) {
        switch (currentDirection) {
            case rightD:
                startAngle = 30;
                endAngle = 330;
                x+=movementSpeed;
                break;
            case leftD:
                startAngle = -150;
                endAngle = 150;
                x-=movementSpeed;
                break;
            case topD:
                startAngle = 130;
                endAngle = 410;
                y+=movementSpeed;
                break;
            case bottomD:
                startAngle = -60;
                endAngle = 240;
                y-=movementSpeed;
            default:
                break;
        }
    }
    
    glLineWidth(2.0);
    glBegin(GL_LINE_LOOP);
    glColor3f(1, 0, 0);
    glVertex2f (x, y);
    for(double i = startAngle; i <= endAngle;i++) {
        glColor3f(0+i/endAngle, 1, 0);
        theta = i * 3.14/180;
        glVertex2f(x+cos(theta),y+sin(theta));
    }
    glEnd();
    
}

bool Player::checkForWalls() {
    //If the wall of the current in the direction of the player exists
    if(currentCell->walls[currentDirection]) {
        //Check for the distance between player and the wall is less than some threshold
        //Stop him from moving
        if(abs(currentCell->getGridX(currentDirection)-x) <= 1.5
           ||
           abs(currentCell->getGridY(currentDirection)-y) <= 1.5)
            canMove = false;
    }
    else {
        canMove = true;
    }
}

void Player::updateScore() {
    score++;
    std::cout<<"Score : " << score;
}
