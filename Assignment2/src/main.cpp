#include "GameManager.hpp"


// The MAIN function, from here we start the application and run the game loop
int main( )
{
    GameManager *gameManager = &GameManager::getGameManager();
    gameManager->runGameLoop();
    GameManager::destroyGameManager();
}

