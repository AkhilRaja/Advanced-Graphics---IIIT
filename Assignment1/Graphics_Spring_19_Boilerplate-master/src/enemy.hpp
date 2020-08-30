//
//  enemy.hpp
//  graphics_asgn1
//
//  Created by Akhil Raja on 30/08/20.
//

#ifndef enemy_hpp
#define enemy_hpp

#include <stdio.h>

class Enemy {
public:
    Enemy(){
    }
    void initEnemy(int x,int y);
    void drawEnemy();
    
    //Getters and Setters
    int getX() {return x;}
    int getY() {return y;}
    
private:
    double x,y;
    void playFrame(int frame[]);
//    static int frame1[96];
//    static int frame2[96];
};


#endif /* enemy_hpp */
