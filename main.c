#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"
#include "game.h"
#include "item.h"
#include "character.h"
#include "room.h"
#include "combat.h"
#include "start.h"
#include "charcreatebg.h"
#include "pause.h"
#include "win.h"
#include "lose.h"

#include "palette.h"
#include "spritesheet.h"

#include "charcreateinstructions.h"
#include "gameinstructions.h"
#include "combatinstructions.h"

#include "enemysheet.h"

// Prototypes
void initialize();


// State Prototypes
void goToStart();
void start();
void goToGuide();
void guide();
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
enum {START, GUIDE, CHARCREATE, GAME, PAUSE, COMBAT, COMBATPAUSE, WIN, LOSE};
int state;

// Button Variables
unsigned short buttons;
unsigned short oldButtons;

// hOff for Boss Battle
unsigned short hOff = 0;

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
            case GUIDE:
                guide();
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
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_WIDE | BG_8BPP;
    REG_DISPCTL =   MODE0 | BG1_ENABLE;

    waitForVBlank();

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

        goblinMode = 0;

        init();
        volatile int t = 0;
        while (t < 1000) {
            t++;
        }
        goToGuide();
    }
    else if (BUTTON_PRESSED(BUTTON_SELECT)) {

        // Seed the random generator
        srand(seed);

        goblinMode = 1;

        init();
        volatile int t = 0;
        while (t < 1000) {
            t++;
        }
        goToGuide();
    }
}

// Set Up Guide State
void goToGuide() {
    DMANow(3, palettePal, PALETTE, 256);
    DMANow(3, charcreatebgMap, &SCREENBLOCK[28], charcreatebgMapLen / 2);
    DMANow(3, charcreatebgTiles, &CHARBLOCK[0], charcreatebgTilesLen / 2);

    hideSprites();
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_WIDE | BG_4BPP;
    REG_DISPCTL =   MODE0 | SPRITE_ENABLE | BG0_ENABLE | BG1_ENABLE;

    state = GUIDE
}

// Run Every Frame of Guide Screen
void guide() {
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToCharCreation();
    }
}

// Set up Character Creation Screen
void goToCharCreation() {

    DMANow(3, palettePal, PALETTE, 256);
    DMANow(3, charcreatebgMap, &SCREENBLOCK[28], charcreatebgMapLen / 2);
    DMANow(3, charcreatebgTiles, &CHARBLOCK[0], charcreatebgTilesLen / 2);

    DMANow(3, palettePal, PALETTE, 256);
    DMANow(3, charcreateinstructionsMap, &SCREENBLOCK[30], charcreateinstructionsMapLen / 2);
    DMANow(3, charcreateinstructionsTiles, &CHARBLOCK[1], charcreateinstructionsTilesLen / 2);

    DMANow(3, palettePal, SPRITEPALETTE, 256);
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);

    hideSprites();
    REG_BG0CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(30) | BG_SIZE_WIDE | BG_4BPP;
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_WIDE | BG_4BPP;
    REG_DISPCTL =   MODE0 | SPRITE_ENABLE | BG0_ENABLE | BG1_ENABLE;

    state = CHARCREATE;
}

// Run Character Creation Screen
void charCreation() {
    
    updatePlayer();
    drawPlayer((SCREENWIDTH / 2) - 16, (SCREENHEIGHT / 2) - 16);

    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START))
        goToGame();

}

// Sets up the game state
void goToGame() {

    loadRoomData(currRoom);

    DMANow(3, palettePal, PALETTE, 256);
    DMANow(3, gameinstructionsMap, &SCREENBLOCK[30], gameinstructionsMapLen / 2);
    DMANow(3, gameinstructionsTiles, &CHARBLOCK[1], gameinstructionsTilesLen / 2);

    DMANow(3, palettePal, SPRITEPALETTE, 256);
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);

    hideSprites();
    REG_BG0CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(30) | BG_SIZE_WIDE | BG_4BPP;
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_WIDE | BG_4BPP;
    REG_BG2CNT = BG_CHARBLOCK(2) | BG_SCREENBLOCK(32) | BG_SIZE_WIDE | BG_4BPP;
    REG_DISPCTL =   MODE0 | SPRITE_ENABLE | BG0_ENABLE | BG1_ENABLE | BG2_ENABLE;

    state = GAME;
}

// Runs every frame of the game state
void game() {
    updateGame();
    drawGame();

    hOff++;

    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);
    
    REG_BG2HOFF = hOff / 2;

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
    


    state = PAUSE;
}

// Runs every frame of the pause state
void pause() {
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);

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
    initCombat(enemy);


    loadRoomData(currRoom);

    DMANow(3, palettePal, PALETTE, 256);
    DMANow(3, combatinstructionsMap, &SCREENBLOCK[30], combatinstructionsMapLen / 2);
    DMANow(3, combatinstructionsTiles, &CHARBLOCK[1], combatinstructionsTilesLen / 2);

    DMANow(3, palettePal, SPRITEPALETTE, 256);
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);

    hideSprites();
    REG_BG0CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(30) | BG_SIZE_WIDE | BG_4BPP;
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_WIDE | BG_4BPP;
    REG_BG2CNT = BG_CHARBLOCK(2) | BG_SCREENBLOCK(26) | BG_SIZE_WIDE | BG_4BPP;
    REG_DISPCTL =   MODE0 | SPRITE_ENABLE |BG0_ENABLE | BG1_ENABLE | BG2_ENABLE;

    state = COMBAT;

}

// Handle every frame of Combat state
void combat() {
    updateCombat();
    drawCombat();

    hOff++;

    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);

    REG_BG2HOFF = hOff / 2;
}

void goToCombatPause() {
    DMANow(3, pausePal, PALETTE, 256);
    DMANow(3, pauseMap, &SCREENBLOCK[28], pauseMapLen / 2);
    DMANow(3, pauseTiles, &CHARBLOCK[0], pauseTilesLen / 2);

    REG_DISPCTL =   MODE0 | SPRITE_ENABLE | BG1_ENABLE;

    waitForVBlank();

    state = COMBATPAUSE;
}

void combatPause() {

    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);

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

    REG_DISPCTL =   MODE0 | BG1_ENABLE;

    waitForVBlank();

    state = WIN;
}

// Runs every frame of the win state
void win() {

    // Lock the framerate to 60 fps
    hideSprites();
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

    REG_DISPCTL =   MODE0 | BG1_ENABLE;

    waitForVBlank();


    state = LOSE;
}

// Runs every frame of the lose state
void lose() {

    // Lock the framerate to 60 fps
    hideSprites();
    waitForVBlank();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START))
        goToStart();
}