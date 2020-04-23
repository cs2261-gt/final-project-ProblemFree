#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"
#include "game.h"
#include "item.h"
#include "character.h"
#include "room.h"
#include "combat.h"

// ShadowOAM
OBJ_ATTR shadowOAM [128];

// Variables
int seed;
int currRoom;
int turnCount;

// Initialize the game
void init() {
	// srand(seed);
	currRoom = 0;

	initItems();
	initPlayer();
	initEnemies();
	initDungeon();

    // Initialize the colors
    unsigned short colors[NUMCOLORS] = {BLACK, BLUE, GREEN, YELLOW, RED, WHITE, GRAY};

    // Load the custom game colors to the end
    for (int i = 0; i < NUMCOLORS; i++) {
        PALETTE[256-NUMCOLORS+i] = colors[i];
    }
}

// Updates the game each frame
void updateGame() {
    
    // Handle events before room is run
    if (dungeon[currRoom].adjective == TRAP) {
        checkTrap();
        dungeon[currRoom].adjective = EMPTY;
    } else if (dungeon[currRoom].adjective == MONSTER || dungeon[currRoom].adjective == GUARDED || dungeon[currRoom].adjective == BOSS) {
        goToCombat(&(dungeon[currRoom].enemy));
    } else {

        // // Search Room ability
        // if (BUTTON_PRESSED(BUTTON_A)) {
        //     turnCount++;
        //     checkSearch();
        // }

        if (BUTTON_PRESSED(BUTTON_L)) {
                player.hpCurr = player.hpMax;
        }
        
        // Room Traversal
        else if (BUTTON_PRESSED(BUTTON_RIGHT) && currRoom + 1 <= 12) {
            turnCount++;
            currRoom++;
            goToGame();
        }
        else if (BUTTON_PRESSED(BUTTON_LEFT) && currRoom - 1 >= 0) {
            turnCount++;
            currRoom--;
            goToGame();
        }
    }
}

// Draws the game each frame
void drawGame() {
    drawPlayer(24, (SCREENHEIGHT - 56 - 8 - 32));
    drawPlayerHealthbar(player.hpMax, player.hpCurr, 24, (SCREENHEIGHT - 56 - 8));
}





