#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"
#include "game.h"
#include "character.h"
#include "item.h"
#include "room.h"

// PRIMARY ROOM FUNCTIONS

// Create Randomized Dungeon at start of game();
void initDungeon() {
    
    // Set up Entrance
    dungeon[0].roomType = ENTRANCE;
    // Ensure entrance is non hostile and possibly contain treasure.
    int decider = rand() % 100;

    if (decider < 60) {
        dungeon[0].adjective = EMPTY;
    } else if (decider < 95) {
        dungeon[0].adjective = TREASURE;
    } else {
        dungeon[0].adjective = RARETREASURE;
    }

    // Set up boss room
    dungeon[DUNGEONSIZE - 1].roomType = BOSSROOM;
    dungeon[DUNGEONSIZE - 1].adjective = BOSS;
    
    int decider = (rand() % BOSSOPTIONS) + MOBOPTIONS;
    dungeon[DUNGEONSIZE - 1].enemy = enemyList[decider];

    // Create dungeon room order without duplicates.
    int count = 0;
    int roomTypes [DUNGEONSIZE - 2];

    while(count < DUNGEONSIZE - 2) {
        int decider = rand() % 16;
        int found = 0;

        for (int i = 0; i < DUNGEONSIZE - 2; i++) {
            if (roomTypes[i] == decider) {
                found = 1;
                break;
            }
        }
        if (!found) {
            roomTypes[count] = decider;
            count++;
        }
    }

    for (int i = 0; i < DUNGEONSIZE - 2) {
        dungeon[i + 1].roomType = roomTypes[i];
    }

    // Populate Dungeon rooms

    for (int i = 1; i < DUNGEONSIZE - 1; i++) {
        int decider = rand() % 100;

        if (decider < 10) {
            dungeon[i].adjective = EMPTY;
        } else if (decider < 30) {
            dungeon[i].adjective = MONSTER;
        } else if (decider < 50) {
            dungeon[i].adjective = TRAP;
        } else if (decider < 70) {
            dungeon[i].adjective = GUARDED;
        } else if (decider < 95) {
            dungeon[i].adjective = TREASURE;
        } else {
            dungeon[i].adjective = RARETREASURE;
        }

        if (dungeon[i].adjective == MONSTER) {
            placeEnemy(i);
        } else if (dungeon[i].adjective == TRAP) {
            placeTrap(i);
        } else if (dungeon[i].adjective == GUARDED) {
            placeEnemy(i);
            placeAny(i);
        } else if (dungeon[i].adjective == TREASURE) {
            placeCommon(i);
        } else if (dungeon[i].adjective == RARETREASURE) {
            placeRare(i);
        }

        if (dungeon[i].roomType == TREASURE) {
            dungeon[i].adjective = RARETREASURE;
            dungeon[i].item[0] = randomRare();
            dungeon[i].searchSuccess = 0;
        }
    }
}

// Mange population of rooms
void placeCommon(int i) {
    dungeon[i].item[0] = randomCommon();
    dungeon[i].searchSuccess = 8 + ((rand() % 6) + 1);
}

void placeRare(int i) {
    dungeon[i].item[0] = randomRare();
    dungeon[i].searchSuccess = 12 + ((rand() % 6) + 1);
}

void placeAny(int i) {
    dungeon[i].item[0] = randomAll();
    dungeon[i].searchSuccess = 10 + ((rand() % 6) + 1);
}

void placeTrap(int i) {
    dungeon[i].trap = ((rand() % 2) == 0 ? PHYSICAL : MAGICAL)
    dungeon[i].trapSuccess = 10 + ((rand() % 4) + 1);
}

void placeEnemy(int i) {
    dungeon[i].enemy = enemyList[rand() % MOBOPTIONS];
}

// {ALCHEMYLAB, ATRIUM, BEDROOM, BREWERY, CIRCLES, CHESS, TELEPORTER, CRYSTAL, LIBRARY, MENAGERIE, TREASURY, GOLEMFAB, DINING, OBSERBVATORY, PRISON, GARDEN, ENTRANCE, BOSSROOM}

void loadRoomData(int currentRoom) {
    switch (dungeon[currentRoom].roomType) {
        case ALCHEMYLAB:
            DMANow(3, backgroundPal, PALETTE, 256);
            DMANow(3, backgroundMap, &SCREENBLOCK[28], backgroundMapLen / 2);
            DMANow(3, backgroundTiles, &CHARBLOCK[0], backgroundTilesLen / 2);
            break;
        case ATRIUM:
            DMANow(3, backgroundPal, PALETTE, 256);
            DMANow(3, backgroundMap, &SCREENBLOCK[28], backgroundMapLen / 2);
            DMANow(3, backgroundTiles, &CHARBLOCK[0], backgroundTilesLen / 2);
            break;
        case BEDROOM:
            DMANow(3, backgroundPal, PALETTE, 256);
            DMANow(3, backgroundMap, &SCREENBLOCK[28], backgroundMapLen / 2);
            DMANow(3, backgroundTiles, &CHARBLOCK[0], backgroundTilesLen / 2);
            break;
        case BREWERY:
            DMANow(3, backgroundPal, PALETTE, 256);
            DMANow(3, backgroundMap, &SCREENBLOCK[28], backgroundMapLen / 2);
            DMANow(3, backgroundTiles, &CHARBLOCK[0], backgroundTilesLen / 2);
            break;
        case CIRCLES:
            DMANow(3, backgroundPal, PALETTE, 256);
            DMANow(3, backgroundMap, &SCREENBLOCK[28], backgroundMapLen / 2);
            DMANow(3, backgroundTiles, &CHARBLOCK[0], backgroundTilesLen / 2);
            break;
        case CHESS:
            DMANow(3, backgroundPal, PALETTE, 256);
            DMANow(3, backgroundMap, &SCREENBLOCK[28], backgroundMapLen / 2);
            DMANow(3, backgroundTiles, &CHARBLOCK[0], backgroundTilesLen / 2);
            break;
        case TELEPORTER:
            DMANow(3, backgroundPal, PALETTE, 256);
            DMANow(3, backgroundMap, &SCREENBLOCK[28], backgroundMapLen / 2);
            DMANow(3, backgroundTiles, &CHARBLOCK[0], backgroundTilesLen / 2);
            break;
        case CRYSTAL:
            DMANow(3, backgroundPal, PALETTE, 256);
            DMANow(3, backgroundMap, &SCREENBLOCK[28], backgroundMapLen / 2);
            DMANow(3, backgroundTiles, &CHARBLOCK[0], backgroundTilesLen / 2);
            break;
        case LIBRARY:
            DMANow(3, backgroundPal, PALETTE, 256);
            DMANow(3, backgroundMap, &SCREENBLOCK[28], backgroundMapLen / 2);
            DMANow(3, backgroundTiles, &CHARBLOCK[0], backgroundTilesLen / 2);
            break;
        case MENAGERIE:
            DMANow(3, backgroundPal, PALETTE, 256);
            DMANow(3, backgroundMap, &SCREENBLOCK[28], backgroundMapLen / 2);
            DMANow(3, backgroundTiles, &CHARBLOCK[0], backgroundTilesLen / 2);
            break;
        case TREASUREY:
            DMANow(3, backgroundPal, PALETTE, 256);
            DMANow(3, backgroundMap, &SCREENBLOCK[28], backgroundMapLen / 2);
            DMANow(3, backgroundTiles, &CHARBLOCK[0], backgroundTilesLen / 2);
            break;
        case GOLEMFAB:
            DMANow(3, backgroundPal, PALETTE, 256);
            DMANow(3, backgroundMap, &SCREENBLOCK[28], backgroundMapLen / 2);
            DMANow(3, backgroundTiles, &CHARBLOCK[0], backgroundTilesLen / 2);
            break;
        case DINING:
            DMANow(3, backgroundPal, PALETTE, 256);
            DMANow(3, backgroundMap, &SCREENBLOCK[28], backgroundMapLen / 2);
            DMANow(3, backgroundTiles, &CHARBLOCK[0], backgroundTilesLen / 2);
            break;
        case OBSERBVATORY:
            DMANow(3, backgroundPal, PALETTE, 256);
            DMANow(3, backgroundMap, &SCREENBLOCK[28], backgroundMapLen / 2);
            DMANow(3, backgroundTiles, &CHARBLOCK[0], backgroundTilesLen / 2);
            break;
        case PRISON:
            DMANow(3, backgroundPal, PALETTE, 256);
            DMANow(3, backgroundMap, &SCREENBLOCK[28], backgroundMapLen / 2);
            DMANow(3, backgroundTiles, &CHARBLOCK[0], backgroundTilesLen / 2);
            break;
        case GARDEN:
            DMANow(3, backgroundPal, PALETTE, 256);
            DMANow(3, backgroundMap, &SCREENBLOCK[28], backgroundMapLen / 2);
            DMANow(3, backgroundTiles, &CHARBLOCK[0], backgroundTilesLen / 2);
            break;
        case ENTRANCE:
            DMANow(3, backgroundPal, PALETTE, 256);
            DMANow(3, backgroundMap, &SCREENBLOCK[28], backgroundMapLen / 2);
            DMANow(3, backgroundTiles, &CHARBLOCK[0], backgroundTilesLen / 2);
            break;
        case BOSSROOM:
            DMANow(3, backgroundPal, PALETTE, 256);
            DMANow(3, backgroundMap, &SCREENBLOCK[28], backgroundMapLen / 2);
            DMANow(3, backgroundTiles, &CHARBLOCK[0], backgroundTilesLen / 2);
            break;
    }
}

void updateRoom() {
}

void drawRoom() {

}

// Checks
int checkSearch() {

}

int checkTrap() {

}