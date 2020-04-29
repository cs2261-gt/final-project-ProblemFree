#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"
#include "game.h"
#include "item.h"
#include "character.h"
#include "room.h"
#include "combat.h"

#include "sound.h"

#include "spritesheet.h"

#include "charcreatebgaaron.h"
#include "charcreatebgbianca.h"
#include "charcreatebgchris.h"
#include "charcreatebgjodianne.h"
#include "charcreatebgmarie.h"
#include "charcreatebgwilliam.h"

CHARACTER player;
ITEM backpack [INVSIZE];

int anitimer;
int anicounter;


CHARACTER abomination;
CHARACTER apprentice;
CHARACTER chimera;
CHARACTER drow;
CHARACTER elemental;
CHARACTER golem;
CHARACTER goblin;
CHARACTER homunculus;
CHARACTER kobold;
CHARACTER mimic;
CHARACTER orc;
CHARACTER slime;
CHARACTER skeleton;
CHARACTER troll;
CHARACTER vampire;
CHARACTER zombie;

CHARACTER beholder;
CHARACTER dragon;
CHARACTER wizard;
CHARACTER mindflayer;
CHARACTER slicethescreamlord;

CHARACTER enemyList [MOBOPTIONS + BOSSOPTIONS];

void initPlayer() {
    player.playerclass = MAGE;
    player.sex = MALE;
    player.enemyid = MOBOPTIONS + BOSSOPTIONS;

    player.weapon = itemList[ARCHWIZARDSTAFF];
    player.armor = itemList[HEROS];

    player.ac = 12;
    player.intelligence = 12;
    player.dexterity = 10;
    player.strength = 8;

    player.dmg = 6;

    player.hpMax = 60;
    player.hpCurr = 60;

    backpack[0] = player.weapon;
    backpack[1] = player.armor;

    for (int i = 2; i < INVSIZE; i++) {
        backpack[i].id = WEAPONOPTIONS + ARMOROPTIONS + COMMONOPTIONS + RAREOPTIONS;
    }

}

void updatePlayer() {
    if (BUTTON_PRESSED(BUTTON_LEFT)) {
        if (player.playerclass == MAGE) {
            player.playerclass = FIGHTER;
            player.intelligence = 10;
            player.dexterity = 12;
            player.strength = 14;
            player.hpMax = 75;
            player.hpCurr = 75;
            player.dmg = 10;
            player.ac = 14;
        } else if (player.playerclass == FIGHTER) {
            player.playerclass = ROGUE;
            player.intelligence = 10;
            player.dexterity = 16;
            player.strength = 12;
            player.hpMax = 65;
            player.hpCurr = 65;
            player.dmg = 6;
            player.ac = 12;
        } else if (player.playerclass == ROGUE) {
            player.playerclass = MAGE;
            player.intelligence = 18;
            player.dexterity = 14;
            player.strength = 8;
            player.hpMax = 60;
            player.hpCurr = 60;
            player.dmg = 12;
            player.ac = 10;
        }
    } else if (BUTTON_PRESSED(BUTTON_RIGHT)) {
        if (player.playerclass == MAGE) {
            player.playerclass = ROGUE;
            player.intelligence = 10;
            player.dexterity = 16;
            player.strength = 12;
            player.hpMax = 65;
            player.hpCurr = 65;
            player.dmg = 6;
            player.ac = 12;
        } else if (player.playerclass == FIGHTER) {
            player.playerclass = MAGE;
            player.intelligence = 18;
            player.dexterity = 14;
            player.strength = 8;
            player.hpMax = 60;
            player.hpCurr = 60;
            player.dmg = 12;
            player.ac = 10;
        } else if (player.playerclass == ROGUE) {
            player.playerclass = FIGHTER;
            player.intelligence = 10;
            player.dexterity = 12;
            player.strength = 14;
            player.hpMax = 75;
            player.hpCurr = 75;
            player.dmg = 10;
            player.ac = 14;
        }
    } else if (BUTTON_PRESSED(BUTTON_UP)) {
        player.sex = (player.sex == MALE ? FEMALE : MALE);
    } else if (BUTTON_HELD(BUTTON_DOWN)) {
        player.sex = (player.sex == MALE ? FEMALE : MALE);
    }
}

void drawPlayer(int col, int row) {
    shadowOAM[4].attr0 = row | ATTR0_SQUARE | ATTR0_4BPP;
    shadowOAM[4].attr1 = col | ATTR1_MEDIUM;

    if (player.playerclass == MAGE) {
        if (player.sex == MALE) {
            shadowOAM[4].attr2 = ATTR2_TILEID(0, 20);
        } else if (player.sex == FEMALE) {
            shadowOAM[4].attr2 = ATTR2_TILEID(16, 20);
        }
    } else if (player.playerclass == FIGHTER) {
        if (player.sex == MALE) {
            shadowOAM[4].attr2 = ATTR2_TILEID(0, 24);
        } else if (player.sex == FEMALE) {
            shadowOAM[4].attr2 = ATTR2_TILEID(16, 24);
        }
    } else if (player.playerclass == ROGUE) {
        if (player.sex == MALE) {
            shadowOAM[4].attr2 = ATTR2_TILEID(0, 28);
        } else if (player.sex == FEMALE) {
            shadowOAM[4].attr2 = ATTR2_TILEID(16, 28);
        }
    }
}

void drawPlayerName() {
    if (player.playerclass == MAGE) {
        if (player.sex == MALE) {
            DMANow(3, charcreatebgaaronMap, &SCREENBLOCK[28], charcreatebgaaronMapLen / 2);
            DMANow(3, charcreatebgaaronTiles, &CHARBLOCK[0], charcreatebgaaronTilesLen / 2);
        } else if (player.sex == FEMALE) {
            DMANow(3, charcreatebgmarieMap, &SCREENBLOCK[28], charcreatebgmarieMapLen / 2);
            DMANow(3, charcreatebgmarieTiles, &CHARBLOCK[0], charcreatebgmarieTilesLen / 2);
        }
    } else if (player.playerclass == FIGHTER) {
        if (player.sex == MALE) {
            DMANow(3, charcreatebgwilliamMap, &SCREENBLOCK[28], charcreatebgwilliamMapLen / 2);
            DMANow(3, charcreatebgwilliamTiles, &CHARBLOCK[0], charcreatebgwilliamTilesLen / 2);
        } else if (player.sex == FEMALE) {
            DMANow(3, charcreatebgjodianneMap, &SCREENBLOCK[28], charcreatebgjodianneMapLen / 2);
            DMANow(3, charcreatebgjodianneTiles, &CHARBLOCK[0], charcreatebgjodianneTilesLen / 2);
        }
    } else if (player.playerclass == ROGUE) {
        if (player.sex == MALE) {
            DMANow(3, charcreatebgchrisMap, &SCREENBLOCK[28], charcreatebgchrisMapLen / 2);
            DMANow(3, charcreatebgchrisTiles, &CHARBLOCK[0], charcreatebgchrisTilesLen / 2);
        } else if (player.sex == FEMALE) {
            DMANow(3, charcreatebgbiancaMap, &SCREENBLOCK[28], charcreatebgbiancaMapLen / 2);
            DMANow(3, charcreatebgbiancaTiles, &CHARBLOCK[0], charcreatebgbiancaTilesLen / 2);
        }
    }
}

void drawPlayerHealthbar(int max, int curr, int col, int row) {
    shadowOAM[6].attr0 = row | ATTR0_WIDE | ATTR0_4BPP;
    shadowOAM[6].attr1 = col | ATTR1_SMALL;
    if (curr == max) {
        shadowOAM[6].attr2 = ATTR2_TILEID(0, 12);
    } else if (curr == (max / 10) * 9) {
        shadowOAM[6].attr2 = ATTR2_TILEID(4, 12);
    } else if (curr == (max / 10) * 8) {
        shadowOAM[6].attr2 = ATTR2_TILEID(8, 12);
    } else if (curr == (max / 10) * 7) {
        shadowOAM[6].attr2 = ATTR2_TILEID(12, 12);
    } else if (curr == (max / 10) * 6) {
        shadowOAM[6].attr2 = ATTR2_TILEID(16, 12);
    } else if (curr == (max / 10) * 5) {
        shadowOAM[6].attr2 = ATTR2_TILEID(0, 14);
    } else if (curr == (max / 10) * 4) {
        shadowOAM[6].attr2 = ATTR2_TILEID(4, 14);
    } else if (curr == (max / 10) * 3) {
        shadowOAM[6].attr2 = ATTR2_TILEID(8, 14);
    } else if (curr == (max / 10) * 2) {
        shadowOAM[6].attr2 = ATTR2_TILEID(12, 14);
    } else if (curr == (max / 10) * 1) {
        shadowOAM[6].attr2 = ATTR2_TILEID(16, 14);
    }
}

void checkDeath() {
    if (player.hpCurr == 0) {
        for (int i = 0; i < INVSIZE; i++) {
            if (backpack[i].id == REVIVALORB) {
                player.hpCurr = player.hpMax;
                backpack[i].id = WEAPONOPTIONS + ARMOROPTIONS + COMMONOPTIONS + RAREOPTIONS;
                break;
            }
        }
        if (player.hpCurr <= 0) {
            stopSound();
            goToLose();
        }
    }
}


void initEnemies() {
    CHARACTER abomination =     {.enemyid = ABOMINATION,    .hpMax = 25, .hpCurr = 25, .dmg = 10, .intelligence = 8, .dexterity = 12, .strength = 16, .ac = 10};
    CHARACTER apprentice =      {.enemyid = APPRENTICE,     .hpMax = 15, .hpCurr = 15, .dmg = 6, .intelligence = 16, .dexterity = 12, .strength = 10, .ac = 8};
    CHARACTER chimera =         {.enemyid = CHIMERA,        .hpMax = 30, .hpCurr = 30, .dmg = 10, .intelligence = 10, .dexterity = 18, .strength = 14, .ac = 12};
    CHARACTER drow =            {.enemyid = DROW,           .hpMax = 18, .hpCurr = 18, .dmg = 6, .intelligence = 14, .dexterity = 16, .strength = 14, .ac = 6};
    CHARACTER elemental =       {.enemyid = ELEMENTAL,      .hpMax = 20, .hpCurr = 20, .dmg = 10, .intelligence = 14, .dexterity = 12, .strength = 12, .ac = 10};
    CHARACTER golem =           {.enemyid = GOLEM,          .hpMax = 25, .hpCurr = 25, .dmg = 10, .intelligence = 8, .dexterity = 10, .strength = 18, .ac = 12};
    CHARACTER goblin =          {.enemyid = GOBLIN,         .hpMax = 10, .hpCurr = 10, .dmg = 6, .intelligence = 8, .dexterity = 16, .strength = 12, .ac = 8};
    CHARACTER homunculus =      {.enemyid = HOMUNCULUS,     .hpMax = 8, .hpCurr = 8, .dmg = 8, .intelligence = 18, .dexterity = 18, .strength = 6, .ac = 14};
    CHARACTER kobold =          {.enemyid = KOBOLD,         .hpMax = 12, .hpCurr = 12, .dmg = 6, .intelligence = 10, .dexterity = 14, .strength = 14, .ac = 10};
    CHARACTER mimic =           {.enemyid = MIMIC,          .hpMax = 16, .hpCurr = 16, .dmg = 8, .intelligence = 14, .dexterity = 12, .strength = 14, .ac = 10};
    CHARACTER orc =             {.enemyid = ORC,            .hpMax = 18, .hpCurr = 18, .dmg = 10, .intelligence = 10, .dexterity = 16, .strength = 16, .ac = 10};
    CHARACTER slime =           {.enemyid = SLIME,          .hpMax = 40, .hpCurr = 40, .dmg = 4, .intelligence = 10, .dexterity = 8, .strength = 10, .ac = 12};
    CHARACTER skeleton =        {.enemyid = SKELETON,       .hpMax = 12, .hpCurr = 12, .dmg = 8, .intelligence = 8, .dexterity = 14, .strength = 10, .ac = 8};
    CHARACTER troll =           {.enemyid = TROLL,          .hpMax = 35, .hpCurr = 35, .dmg = 10, .intelligence = 8, .dexterity = 12, .strength = 16, .ac = 12};
    CHARACTER vampire =         {.enemyid = VAMPIRE,        .hpMax = 20, .hpCurr = 20, .dmg = 10, .intelligence = 16, .dexterity = 16, .strength = 16, .ac = 10};
    CHARACTER zombie =          {.enemyid = ZOMBIE,         .hpMax = 15, .hpCurr = 15, .dmg = 6, .intelligence = 8, .dexterity = 10, .strength = 14, .ac = 8};
    CHARACTER shapeshifter =    {.enemyid = SHAPESHIFTER,   .hpMax = 20, .hpCurr = 20, .dmg = 8, .intelligence = 14, .dexterity = 16, .strength = 14, .ac = 12};

    CHARACTER beholder =        {.enemyid = BEHOLDER,       .hpMax = 60, .hpCurr = 60, .dmg = 10, .intelligence = 20, .dexterity = 16, .strength = 18, .ac = 13};
    CHARACTER dragon =          {.enemyid = DRAGON,         .hpMax = 80, .hpCurr = 80, .dmg = 10, .intelligence = 20, .dexterity = 16, .strength = 20, .ac = 15};
    CHARACTER wizard =          {.enemyid = WIZARD,         .hpMax = 50, .hpCurr = 50, .dmg = 10, .intelligence = 20, .dexterity = 16, .strength = 14, .ac = 11};
    CHARACTER mindflayer =      {.enemyid = MINDFLAYER,     .hpMax = 60, .hpCurr = 60, .dmg = 10, .intelligence = 24, .dexterity = 14, .strength = 16, .ac = 11};
    CHARACTER goblinqueenmimi = {.enemyid = GOBLINQUEENMIMI, .hpMax = 100, .hpCurr = 100, .dmg = 12, .intelligence = 8, .dexterity = 18, .strength = 12, .ac = 11};
     
    // CHARACTER enemyList[] = {abomination, apprentice, chimera, drow, elemental, golem, goblin, homunculus, kobold, mimic, orc, slime, skeleton, troll, vampire, zombie, beholder, dragon, wizard, mindflayer, goblinqueenmimi};
    
    enemyList[0] = abomination;
    enemyList[1] = apprentice;
    enemyList[2] = chimera;
    enemyList[3] = drow;
    enemyList[4] = elemental;
    enemyList[5] = golem;
    enemyList[6] = goblin;
    enemyList[7] = homunculus;
    enemyList[8] = kobold;
    enemyList[9] = mimic;
    enemyList[10] = orc;
    enemyList[11] = slime;
    enemyList[12] = skeleton;
    enemyList[13] = troll;
    enemyList[14] = vampire;
    enemyList[15] = zombie;
    enemyList[16] = shapeshifter;
    enemyList[17] = beholder;
    enemyList[18] = dragon;
    enemyList[19] = wizard;
    enemyList[20] = mindflayer;
    enemyList[21] = goblinqueenmimi;
}

// to export spritesheets: make sure the spritesheet is 256x256 at 16 colors at per sprite
// tipe 4bpp, no map, pal checked -> 256
void drawEnemy(int enemyType, int col, int row) {
    shadowOAM[2].attr0 = row | ATTR0_SQUARE | ATTR0_4BPP;
    shadowOAM[2].attr1 = col | ATTR1_MEDIUM;
    switch (enemyType)
    {
    case ABOMINATION:
        shadowOAM[2].attr2 = ATTR2_TILEID(0, 0);
        break;
    case APPRENTICE:
        shadowOAM[2].attr2 = ATTR2_TILEID(4, 0);
        break;
    case CHIMERA:
        shadowOAM[2].attr2 = ATTR2_TILEID(8, 0);
        break;
    case DROW:
        shadowOAM[2].attr2 = ATTR2_TILEID(12, 0);
        break;
    case ELEMENTAL:
        shadowOAM[2].attr2 = ATTR2_TILEID(16, 0);
        break;
    case GOLEM:
        shadowOAM[2].attr2 = ATTR2_TILEID(20, 0);
        break;
    case GOBLIN:
        shadowOAM[2].attr2 = ATTR2_TILEID(24, 0);
        break;
    case HOMUNCULUS:
        shadowOAM[2].attr2 = ATTR2_TILEID(28, 0);
        break;
    case KOBOLD:
        shadowOAM[2].attr2 = ATTR2_TILEID(0, 4);
        break;
    case MIMIC:
        shadowOAM[2].attr2 = ATTR2_TILEID(4, 4);
        break;
    case ORC:
        shadowOAM[2].attr2 = ATTR2_TILEID(8, 4);
        break;
    case SLIME:
        shadowOAM[2].attr2 = ATTR2_TILEID(12, 4);
        break;
    case SKELETON:
        shadowOAM[2].attr2 = ATTR2_TILEID(16, 4);
        break;
    case TROLL:
        shadowOAM[2].attr2 = ATTR2_TILEID(20, 4);
        break;
    case VAMPIRE:
        shadowOAM[2].attr2 = ATTR2_TILEID(24, 4);
        break;
    case ZOMBIE:
        shadowOAM[2].attr2 = ATTR2_TILEID(28, 4);
        break;
    case SHAPESHIFTER:
        drawEnemy(anicounter, col, row);
        break;
    case BEHOLDER:
        shadowOAM[2].attr2 = ATTR2_TILEID(0, 8);
        break;
    case DRAGON:
        shadowOAM[2].attr2 = ATTR2_TILEID(4, 8);
        break;
    case WIZARD:
        shadowOAM[2].attr2 = ATTR2_TILEID(8, 8);
        break;
    case MINDFLAYER:
        shadowOAM[2].attr2 = ATTR2_TILEID(12, 8);
        break;
    case GOBLINQUEENMIMI:
        shadowOAM[2].attr2 = ATTR2_TILEID(16, 8);
    }
}

void drawEnemyHealthbar(int max, int curr, int col, int row) {
    shadowOAM[8].attr0 = row | ATTR0_WIDE | ATTR0_4BPP;
    shadowOAM[8].attr1 = col | ATTR1_SMALL;
    if (curr == max) {
        shadowOAM[8].attr2 = ATTR2_TILEID(0, 12);
    } else if (curr == (max / 10) * 9) {
        shadowOAM[8].attr2 = ATTR2_TILEID(4, 12);
    } else if (curr == (max / 10) * 8) {
        shadowOAM[8].attr2 = ATTR2_TILEID(8, 12);
    } else if (curr == (max / 10) * 7) {
        shadowOAM[8].attr2 = ATTR2_TILEID(12, 12);
    } else if (curr == (max / 10) * 6) {
        shadowOAM[8].attr2 = ATTR2_TILEID(16, 12);
    } else if (curr == (max / 10) * 5) {
        shadowOAM[8].attr2 = ATTR2_TILEID(0, 14);
    } else if (curr == (max / 10) * 4) {
        shadowOAM[8].attr2 = ATTR2_TILEID(4, 14);
    } else if (curr == (max / 10) * 3) {
        shadowOAM[8].attr2 = ATTR2_TILEID(8, 14);
    } else if (curr == (max / 10) * 2) {
        shadowOAM[8].attr2 = ATTR2_TILEID(12, 14);
    } else if (curr == (max / 10) * 1) {
        shadowOAM[8].attr2 = ATTR2_TILEID(16, 14);
    }
}

int damageChar(CHARACTER * target, int dice) {
    int damage = (rand() % dice) + 1;
    // Ensure players do not die by traps
    if (target->hpCurr - damage <= 1) {
        target->hpCurr = 1;
    } else {
        target->hpCurr -= damage;
    }
}

int healChar(CHARACTER * target, int dice) {
    int heal = (rand() % dice) + 1;
    if (target->hpCurr + heal >= target->hpMax) {
        target->hpCurr = target->hpMax;
    } else {
        target->hpCurr += heal;
    }
}

void buffChar(CHARACTER * target, int stat, int scale) {
    switch (stat)
    {
    case HP:
        target->hpMax += scale;
        break;
    case AC:
        target->ac += scale;
        break;
    case INTEL:
        target->intelligence += scale;
        break;
    case DEX:
        target->dexterity += scale;
        break;
    case STR:
        target->strength += scale;
        break;
    }
}

// void dropItem(ITEM object);

// Calculate stat total based on equipped items
int statEquipped(CHARACTER * target, int stat) {
        switch (stat)
    {
        case AC:
            return (target->ac + target->armor.acEff + statMod(target, DEX));
            break;
        case INTEL:
            return (target->intelligence + target->armor.intelligenceEff + target->weapon.intelligenceEff);
            break;
        case DEX:
            return (target->dexterity + target->armor.dexterityEff + target->weapon.dexterityEff);
            break;
        case STR:
            return (target->strength + target->armor.strengthEff + target->weapon.strengthEff);
            break;
    }
}

// Calculate stat modifier for rolls for player
int statMod(CHARACTER * target, int stat) {
    return (statEquipped(target, stat) / 2) - 5;
}

// Calculate stat modifier for rolls for mobs
int statModMob(CHARACTER * target, int stat) {
    switch (stat)
    {
        case INTEL:
            return (((target->intelligence) / 2) - 5);
            break;
        case DEX:
            return (((target->dexterity) / 2) - 5);
            break;
        case STR:
            return (((target->strength) / 2) - 5);
            break;
    }
}

// Dice Roll Functions for every stat
int intDiceRoll (CHARACTER * target) {
    int modifier = statMod(target, INTEL);
    int roll = (((rand() % 20) + 1) + modifier);
    if (roll <= 1) {
        return 1;
    }
    return roll;
}

int dexDiceRoll (CHARACTER * target) {
    int modifier = statMod(target, DEX);
    int roll = (((rand() % 20) + 1) + modifier);
    if (roll <= 1) {
        return 1;
    }
    return roll;
}

int strDiceRoll (CHARACTER * target) {
    int modifier = statMod(target, STR);
    int roll = (((rand() % 20) + 1) + modifier);
    if (roll <= 1) {
        return 1;
    }
    return roll;
}
