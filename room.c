#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"
#include "game.h"
#include "item.h"
#include "character.h"
#include "room.h"
#include "combat.h"

#include "alchemybg.h"
#include "atriumbg.h"
#include "bedroombg.h"
#include "brewerybg.h"
#include "circlesbg.h"
#include "chessbg.h"
#include "teleporterbg.h"
#include "crystalbg.h"
#include "librarybg.h"
#include "menageriebg.h"
#include "treasurybg.h"
#include "golemfabbg.h"
#include "diningbg.h"
#include "observatorybg.h"
#include "prisonbg.h"
#include "gardenbg.h"
#include "entrancebg.h"
#include "bossroombg.h"

ROOM dungeon[DUNGEONSIZE];

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
    
    decider = (rand() % BOSSOPTIONS) + MOBOPTIONS;
    dungeon[DUNGEONSIZE - 1].enemy = enemyList[decider];

    // Create dungeon room order without duplicates.
    int count = 0;
    int roomTypes [DUNGEONSIZE - 2];

    while(count < DUNGEONSIZE - 2) {
        decider = rand() % 16;
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

    for (int i = 0; i < DUNGEONSIZE - 2; i++) {
        dungeon[i + 1].roomType = roomTypes[i];
    }

    // Populate Dungeon rooms
    for (int i = 1; i < DUNGEONSIZE - 1; i++) {
        decider = rand() % 100;

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

        if (dungeon[i].roomType == TREASURY) {
            dungeon[i].adjective = RARETREASURE;
            dungeon[i].object = itemList[randomRare()];
            dungeon[i].searchSuccess = 0;
        }
    }
}

// Mange population of rooms
void placeCommon(int i) {
    dungeon[i].object = itemList[randomCommon()];
    dungeon[i].searchSuccess = 8 + ((rand() % 6) + 1);
}

void placeRare(int i) {
    dungeon[i].object = itemList[randomRare()];
    dungeon[i].searchSuccess = 12 + ((rand() % 6) + 1);
}

void placeAny(int i) {
    dungeon[i].object = itemList[randomAll()];
    dungeon[i].searchSuccess = 10 + ((rand() % 6) + 1);
}

void placeTrap(int i) {
    dungeon[i].trap = ((rand() % 2) == 0 ? PHYSICAL : MAGICAL);
    dungeon[i].trapSuccess = 10 + ((rand() % 4) + 1);
}

void placeEnemy(int i) {
    int decider = (rand() * rand() % MOBOPTIONS);
    dungeon[i].enemy.enemyid = enemyList[decider].intelligence;
    dungeon[i].enemy.intelligence = enemyList[decider].intelligence;
    dungeon[i].enemy.dexterity = enemyList[decider].dexterity;
    dungeon[i].enemy.strength = enemyList[decider].strength;
    dungeon[i].enemy.ac = enemyList[decider].ac;
    dungeon[i].enemy.hpMax = enemyList[decider].hpMax;
    dungeon[i].enemy.hpCurr = enemyList[decider].hpCurr;
}

// {ALCHEMYLAB, ATRIUM, BEDROOM, BREWERY, CIRCLES, CHESS, TELEPORTER, CRYSTAL, LIBRARY, MENAGERIE, TREASURY, GOLEMFAB, DINING, OBSERBVATORY, PRISON, GARDEN, ENTRANCE, BOSSROOM}

void loadRoomData(int currentRoom) {
    switch (dungeon[currentRoom].roomType) {
        case ALCHEMYLAB:
            DMANow(3, alchemybgPal, PALETTE, 256);
            DMANow(3, alchemybgMap, &SCREENBLOCK[28], alchemybgMapLen / 2);
            DMANow(3, alchemybgTiles, &CHARBLOCK[0], alchemybgTilesLen / 2);
            break;
        case ATRIUM:
            DMANow(3, atriumbgPal, PALETTE, 256);
            DMANow(3, atriumbgMap, &SCREENBLOCK[28], atriumbgMapLen / 2);
            DMANow(3, atriumbgTiles, &CHARBLOCK[0], atriumbgTilesLen / 2);
            break;
        case BEDROOM:
            DMANow(3, bedroombgPal, PALETTE, 256);
            DMANow(3, bedroombgMap, &SCREENBLOCK[28], bedroombgMapLen / 2);
            DMANow(3, bedroombgTiles, &CHARBLOCK[0], bedroombgTilesLen / 2);
            break;
        case BREWERY:
            DMANow(3, brewerybgPal, PALETTE, 256);
            DMANow(3, brewerybgMap, &SCREENBLOCK[28], brewerybgMapLen / 2);
            DMANow(3, brewerybgTiles, &CHARBLOCK[0], brewerybgTilesLen / 2);
            break;
        case CIRCLES:
            DMANow(3, circlesbgPal, PALETTE, 256);
            DMANow(3, circlesbgMap, &SCREENBLOCK[28], circlesbgMapLen / 2);
            DMANow(3, circlesbgTiles, &CHARBLOCK[0], circlesbgTilesLen / 2);
            break;
        case CHESS:
            DMANow(3, chessbgPal, PALETTE, 256);
            DMANow(3, chessbgMap, &SCREENBLOCK[28], chessbgMapLen / 2);
            DMANow(3, chessbgTiles, &CHARBLOCK[0], chessbgTilesLen / 2);
            break;
        case TELEPORTER:
            DMANow(3, teleporterbgPal, PALETTE, 256);
            DMANow(3, teleporterbgMap, &SCREENBLOCK[28], teleporterbgMapLen / 2);
            DMANow(3, teleporterbgTiles, &CHARBLOCK[0], teleporterbgTilesLen / 2);
            break;
        case CRYSTAL:
            DMANow(3, crystalbgPal, PALETTE, 256);
            DMANow(3, crystalbgMap, &SCREENBLOCK[28], crystalbgMapLen / 2);
            DMANow(3, crystalbgTiles, &CHARBLOCK[0], crystalbgTilesLen / 2);
            break;
        case LIBRARY:
            DMANow(3, librarybgPal, PALETTE, 256);
            DMANow(3, librarybgMap, &SCREENBLOCK[28], librarybgMapLen / 2);
            DMANow(3, librarybgTiles, &CHARBLOCK[0], librarybgTilesLen / 2);
            break;
        case MENAGERIE:
            DMANow(3, menageriebgPal, PALETTE, 256);
            DMANow(3, menageriebgMap, &SCREENBLOCK[28], menageriebgMapLen / 2);
            DMANow(3, menageriebgTiles, &CHARBLOCK[0], menageriebgTilesLen / 2);
            break;
        case TREASURY:
            DMANow(3, treasurybgPal, PALETTE, 256);
            DMANow(3, treasurybgMap, &SCREENBLOCK[28], treasurybgMapLen / 2);
            DMANow(3, treasurybgTiles, &CHARBLOCK[0], treasurybgTilesLen / 2);
            break;
        case GOLEMFAB:
            DMANow(3, golemfabbgPal, PALETTE, 256);
            DMANow(3, golemfabbgMap, &SCREENBLOCK[28], golemfabbgMapLen / 2);
            DMANow(3, golemfabbgTiles, &CHARBLOCK[0], golemfabbgTilesLen / 2);
            break;
        case DINING:
            DMANow(3, diningbgPal, PALETTE, 256);
            DMANow(3, diningbgMap, &SCREENBLOCK[28], diningbgMapLen / 2);
            DMANow(3, diningbgTiles, &CHARBLOCK[0], diningbgTilesLen / 2);
            break;
        case OBSERVATORY:
            DMANow(3, observatorybgPal, PALETTE, 256);
            DMANow(3, observatorybgMap, &SCREENBLOCK[28], observatorybgMapLen / 2);
            DMANow(3, observatorybgTiles, &CHARBLOCK[0], observatorybgTilesLen / 2);
            break;
        case PRISON:
            DMANow(3, prisonbgPal, PALETTE, 256);
            DMANow(3, prisonbgMap, &SCREENBLOCK[28], prisonbgMapLen / 2);
            DMANow(3, prisonbgTiles, &CHARBLOCK[0], prisonbgTilesLen / 2);
            break;
        case GARDEN:
            DMANow(3, gardenbgPal, PALETTE, 256);
            DMANow(3, gardenbgMap, &SCREENBLOCK[28], gardenbgMapLen / 2);
            DMANow(3, gardenbgTiles, &CHARBLOCK[0], gardenbgTilesLen / 2);
            break;
        case ENTRANCE:
            DMANow(3, entrancebgPal, PALETTE, 256);
            DMANow(3, entrancebgMap, &SCREENBLOCK[28], entrancebgMapLen / 2);
            DMANow(3, entrancebgTiles, &CHARBLOCK[0], entrancebgTilesLen / 2);
            break;
        case BOSSROOM:
            DMANow(3, bossroombgPal, PALETTE, 256);
            DMANow(3, bossroombgMap, &SCREENBLOCK[28], bossroombgMapLen / 2);
            DMANow(3, bossroombgTiles, &CHARBLOCK[0], bossroombgTilesLen / 2);
            break;
    }
}

// void updateRoom() {

// }

void drawRoom() {

}

// Checks
int checkSearch() {
    if (intDiceRoll(&player) >= dungeon[currRoom].searchSuccess) {
        for (int i = 0; i < INVSIZE; i++) {
            if (backpack[i].id == WEAPONOPTIONS + ARMOROPTIONS + COMMONOPTIONS + RAREOPTIONS) {
                backpack[i] = dungeon[currRoom].object;
                return 1;
            }
        }
    }
    return 0;
}

int checkTrap() {
    if (dungeon[currRoom].trap == MAGICAL) {
        if (intDiceRoll(&player) < dungeon[currRoom].trapSuccess) {
            damageChar(&player, 6); 
            return 1;
        }
    } else if (dungeon[currRoom].trap == PHYSICAL) {
        if (dexDiceRoll(&player) < dungeon[currRoom].trapSuccess) {
            damageChar(&player, 6); 
            return 1;
        }
    }
    return 0;
}