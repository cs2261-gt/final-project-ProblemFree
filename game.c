#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"
#include "character.h"
#include "item.h"
#include "room.h"
#include "game.h"

// ShadowOAM
OBJ_ATTR shadowOAM [128];

// Variables
int seed;
int currRoom;
ROOM dungeon[DUNGEONSIZE];

// Initialize the game
void init() {

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
	updatePlayer();
	updateRoom();
}

// Draws the game each frame
void drawGame() {
	drawPlayer();
	drawRoom();
}





