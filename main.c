#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"
#include "game.h"
#include "item.h"
#include "character.h"
#include "room.h"
#include "combat.h"
#include "start.h"
#include "pause.h"
#include "win.h"
#include "lose.h"

// Prototypes
void initialize();


// State Prototypes
void goToStart();
void start();
void goToCharCreation();
void charCreation();
void goToGame();
void game();
void goToPause();
void pause();
void goToCombat(CHARACTER * enemy);
void combat();
void goToCombatPause();
void combatPause();
void goToWin();
void win();
void goToLose();
void lose();


// States
enum {START, CHARCREATE, GAME, PAUSE, COMBAT, COMBATPAUSE, WIN, LOSE};
int state;

// Button Variables
unsigned short buttons;
unsigned short oldButtons;

// Random Seed
int seed;

// Text Buffer
char buffer[41];

int main() {

    initialize();

    while(1) {

        // Update button variables
        oldButtons = buttons;
        buttons = BUTTONS;

        // State Machine
        switch(state) {

            case START:
                start();
                break;
            case CHARCREATE:
                charCreation();
                break;
            case GAME:
                game();
                break;
            case PAUSE:
                pause();
                break;
            case COMBAT:
                combat();
                break;
            case COMBATPAUSE:
                combatPause();
                break;
            case WIN:
                win();
                break;
            case LOSE:
                lose();
                break;
        }
	}
    return 0;
}

// Set up GBA
void initialize() {

    REG_DISPCTL =   MODE0 | SPRITE_ENABLE | BG0_ENABLE | BG1_ENABLE;

    REG_BG0CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(30) | BG_SIZE_WIDE;

    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_WIDE;

    buttons = BUTTONS;

    goToStart();
}


// Sets up the start state
void goToStart() {

    DMANow(3, startPal, PALETTE, 256);
    DMANow(3, startMap, &SCREENBLOCK[28], startMapLen / 2);
    DMANow(3, startTiles, &CHARBLOCK[0], startTilesLen / 2);

    hideSprites();
    REG_DISPCTL =   MODE0 | BG1_ENABLE;

    //Wait for vertical blank and flip the page
    waitForVBlank();
    flipPage();

    state = START;

    // Begin the seed randomization
    seed = 0;
}

// Runs every frame of the start state
void start() {

    seed++;

    // Lock the framerate to 60 fps
    waitForVBlank();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {

        // Seed the random generator
        srand(seed);

        
        init();
        goToGame();
    }
}

// Set up Character Creation Screen
void goToCharCreation() {

    // DMANow(3, backgroundPal, PALETTE, 256);
    // DMANow(3, backgroundMap, &SCREENBLOCK[28], backgroundMapLen / 2);
    // DMANow(3, backgroundTiles, &CHARBLOCK[0], backgroundTilesLen / 2);

    // DMANow(3, spriteSheetPal, SPRITEPALETTE, 256);
    // DMANow(3, spriteSheetTiles, &CHARBLOCK[4], spriteSheetTilesLen / 2);

    hideSprites();
    REG_DISPCTL =   MODE0 | SPRITE_ENABLE | BG0_ENABLE | BG1_ENABLE;

    state = CHARCREATE;
}

// Run Character Creation Screen
void charCreation() {
    // updatePlayer();
    // drawPlayer();

    //Wait for vertical blank and flip the page
    waitForVBlank();
    flipPage();
    DMANow(3, shadowOAM, OAM, 512);

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START))
        goToGame();

}

// Sets up the game state
void goToGame() {

    loadRoomData(currRoom);

    // DMANow(3, spriteSheetPal, SPRITEPALETTE, 256);
    // DMANow(3, spriteSheetTiles, &CHARBLOCK[4], spriteSheetTilesLen / 2);

    hideSprites();
    REG_DISPCTL =   MODE0 | SPRITE_ENABLE | BG1_ENABLE;

    state = GAME;
}

// Runs every frame of the game state
void game() {
    updateGame();
    // drawGame();

    //Wait for vertical blank and flip the page
    waitForVBlank();
    flipPage();
    DMANow(3, shadowOAM, OAM, 512);

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToPause();
    }
    
}

// Sets up the pause state
void goToPause() {
    
    DMANow(3, pausePal, PALETTE, 256);
    DMANow(3, pauseMap, &SCREENBLOCK[28], pauseMapLen / 2);
    DMANow(3, pauseTiles, &CHARBLOCK[0], pauseTilesLen / 2);

    hideSprites();
    REG_DISPCTL =   MODE0 | SPRITE_ENABLE | BG1_ENABLE;

    //Wait for vertical blank and flip the page
    waitForVBlank();
    flipPage();


    state = PAUSE;
}

// Runs every frame of the pause state
void pause() {

    // Lock the framerate to 60 fps
    waitForVBlank();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToGame();
    }
    else if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToStart();
    }
}

// Set up Combat state
void goToCombat(CHARACTER * enemy) {
    initCombat(&enemy);

    loadRoomData(currRoom);

    hideSprites();
    REG_DISPCTL =   MODE0 | SPRITE_ENABLE | BG1_ENABLE;

    state = COMBAT;

}

// Handle every frame of Combat state
void combat() {
    updateCombat();
    drawCombat();
}

void goToCombatPause() {
    DMANow(3, pausePal, PALETTE, 256);
    DMANow(3, pauseMap, &SCREENBLOCK[28], pauseMapLen / 2);
    DMANow(3, pauseTiles, &CHARBLOCK[0], pauseTilesLen / 2);

    hideSprites();
    REG_DISPCTL =   MODE0 | SPRITE_ENABLE | BG1_ENABLE;

    //Wait for vertical blank and flip the page
    waitForVBlank();
    flipPage();

    state = COMBATPAUSE;
}

void combatPause() {
    // Lock the framerate to 60 fps
    waitForVBlank();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToCombat(&enemyChar);
    }
    else if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToStart();
    }
}

// Sets up the win state
void goToWin() {

    DMANow(3, winPal, PALETTE, 256);
    DMANow(3, winMap, &SCREENBLOCK[28], winMapLen / 2);
    DMANow(3, winTiles, &CHARBLOCK[0], winTilesLen / 2);

    hideSprites();
    REG_DISPCTL =   MODE0 | BG1_ENABLE;

    //Wait for vertical blank and flip the page
    waitForVBlank();
    flipPage();

    state = WIN;
}

// Runs every frame of the win state
void win() {

    // Lock the framerate to 60 fps
    waitForVBlank();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START))
        goToStart();
}

// Sets up the lose state
void goToLose() {

    DMANow(3, losePal, PALETTE, 256);
    DMANow(3, loseMap, &SCREENBLOCK[28], loseMapLen / 2);
    DMANow(3, loseTiles, &CHARBLOCK[0], loseTilesLen / 2);

    hideSprites();
    REG_DISPCTL =   MODE0 | BG1_ENABLE;

    //Wait for vertical blank and flip the page
    waitForVBlank();
    flipPage();


    state = LOSE;
}

// Runs every frame of the lose state
void lose() {

    // Lock the framerate to 60 fps
    waitForVBlank();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START))
        goToStart();
}