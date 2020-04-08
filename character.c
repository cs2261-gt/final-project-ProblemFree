#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"
#include "game.h"
#include "character.h"
#include "item.h"
#include "room.h"

CHARACTER player;

CHARACTER enemyList [MOBSOPTIONS + BOSSOPTIONS];

void initPlayer() {
    player.playerclass = WIZARD;

    player.weapon = fists;
    player.armor = travelers;

    player.ac = 10;
    player.intelligence = 12;
    player.dexterity = 10;
    player.strength = 8;

    player.hpMax = 50;
    player.hpCurr = player.hpMax;

}

void updatePlayer() {

}

// {ABOMINATION, APPRENTICE, CHIMERA, DROW, ELEMENTAL, GOLEM, GOBLIN, HOMUNCULUS, KOBOLD, MIMIC, ORC, SLIME, SKELETON, TROLL, VAMPIRE, ZOMBIE, 
// BEHOLDER, DRAGON, WIZARD, MINDFLAYER}

void initEnemies() {
    CHARACTER abomination =     {.enemyid = ABOMINATION, .hpMax = 25, .hpCurr = .hpMax, .dmg = 10, .dmgtype = PHYSICAL, .intelligence = 8, .dexterity = 12, .strength = 16, .ac = 12, .tilerow = 0, .tilecol = 0};
    CHARACTER apprentice =      {.enemyid = APPRENTICE, .hpMax = 15, .hpCurr = .hpMax, .dmg = 6, .dmgtype = MAGICAL, .intelligence = 16, .dexterity = 12, .strength = 10, .ac = 10, .tilerow = 0, .tilecol = 0};
    CHARACTER chimera =         {.enemyid = CHIMERA, .hpMax = 30, .hpCurr = .hpMax, .dmg = 10, .dmgtype = PHYSICAL, .intelligence = 10, .dexterity = 18, .strength = 14, .ac = 14, .tilerow = 0, .tilecol = 0};
    CHARACTER drow =            {.enemyid = DROW, .hpMax = 18, .hpCurr = .hpMax, .dmg = 6, .dmgtype = PHYSICAL, .intelligence = 14, .dexterity = 16, .strength = 14, .ac = 8, .tilerow = 0, .tilecol = 0};
    CHARACTER elemental =       {.enemyid = ELEMENTAL, .hpMax = 20, .hpCurr = .hpMax, .dmg = 10, .dmgtype = MAGICAL, .intelligence = 14, .dexterity = 12, .strength = 12, .ac = 12, .tilerow = 0, .tilecol = 0};
    CHARACTER golem =           {.enemyid = GOLEM, .hpMax = 25, .hpCurr = .hpMax, .dmg = 10, .dmgtype = PHYSICAL, .intelligence = 8, .dexterity = 10, .strength = 18, .ac = 14, .tilerow = 0, .tilecol = 0};
    CHARACTER goblin =          {.enemyid = GOBLIN, .hpMax = 10, .hpCurr = .hpMax, .dmg = 6, .dmgtype = PHYSICAL, .intelligence = 8, .dexterity = 16, .strength = 12, .ac = 10, .tilerow = 0, .tilecol = 0};
    CHARACTER homunculus =      {.enemyid = HOMUNCULUS, .hpMax = 8, .hpCurr = .hpMax, .dmg = 8, .dmgtype = MAGICAL, .intelligence = 18, .dexterity = 18, .strength = 6, .ac = 16, .tilerow = 0, .tilecol = 0};
    CHARACTER kobold =          {.enemyid = KOBOLD, .hpMax = 12, .hpCurr = .hpMax, .dmg = 6, .dmgtype = PHYSICAL, .intelligence = 10, .dexterity = 14, .strength = 14, .ac = 12, .tilerow = 0, .tilecol = 0};
    CHARACTER mimic =           {.enemyid = MIMIC, .hpMax = 16, .hpCurr = .hpMax, .dmg = 8, .dmgtype = PHYSICAL, .intelligence = 14, .dexterity = 12, .strength = 14, .ac = 12, .tilerow = 0, .tilecol = 0};
    CHARACTER orc =             {.enemyid = ORC, .hpMax = 18, .hpCurr = .hpMax, .dmg = 10, .dmgtype = PHYSICAL, .intelligence = 10, .dexterity = 16, .strength = 16, .ac = 12, .tilerow = 0, .tilecol = 0};
    CHARACTER slime =           {.enemyid = SLIME, .hpMax = 40, .hpCurr = .hpMax, .dmg = 4, .dmgtype = MAGICAL, .intelligence = 10, .dexterity = 8, .strength = 10, .ac = 14, .tilerow = 0, .tilecol = 0};
    CHARACTER skeleton =        {.enemyid = SKELETON, .hpMax = 12, .hpCurr = .hpMax, .dmg = 8, .dmgtype = PHYSICAL, .intelligence = 8, .dexterity = 14, .strength = 10, .ac = 10, .tilerow = 0, .tilecol = 0};
    CHARACTER troll =           {.enemyid = TROLL, .hpMax = 35, .hpCurr = .hpMax, .dmg = 12, .dmgtype = PHYSICAL, .intelligence = 8, .dexterity = 12, .strength = 18, .ac = 14, .tilerow = 0, .tilecol = 0};
    CHARACTER vampire =         {.enemyid = VAMPIRE, .hpMax = 20, .hpCurr = .hpMax, .dmg = 10, .dmgtype = MAGICAL, .intelligence = 16, .dexterity = 16, .strength = 16, .ac = 12, .tilerow = 0, .tilecol = 0};
    CHARACTER zombie =          {.enemyid = ZOMBIE, .hpMax = 15, .hpCurr = .hpMax, .dmg = 6, .dmgtype = PHYSICAL, .intelligence = 8, .dexterity = 10, .strength = 14, .ac = 10, .tilerow = 0, .tilecol = 0};

    CHARACTER beholder =        {.enemyid = BEHOLDER, .hpMax = 60, .hpCurr = .hpMax, .dmg = 12, .dmgtype = MAGICAL, .intelligence = 20, .dexterity = 18, .strength = 18, .ac = 15, .tilerow = 0, .tilecol = 0};
    CHARACTER dragon =          {.enemyid = DRAGON, .hpMax = 80, .hpCurr = .hpMax, .dmg = 20, .dmgtype = MAGICAL, .intelligence = 20, .dexterity = 20, .strength = 20, .ac = 20, .tilerow = 0, .tilecol = 0};
    CHARACTER wizard =          {.enemyid = WIZARD, .hpMax = 50, .hpCurr = .hpMax, .dmg = 12, .dmgtype = MAGICAL, .intelligence = 20, .dexterity = 16, .strength = 14, .ac = 15, .tilerow = 0, .tilecol = 0};
    CHARACTER mindflayer =      {.enemyid = MINDFLAYER, .hpMax = 60, .hpCurr = .hpMax, .dmg = 12, .dmgtype = MAGICAL, .intelligence = 24, .dexterity = 14, .strength = 16, .ac = 13, .tilerow = 0, .tilecol = 0};

    enemyList = {abomination, apprentice, chimera, drow, elemental, golem, goblin, homunculus, kobold, mimic, orc, slime, skeleton, troll, vampire, zombie, beholder, dragon, wizard, mindflayer};
}

int damageChar(CHARACTER target);
int healChar (CHARACTER target);
void buffChar (CHARACTER target, int stat, int scale);

void pickupItem(ITEM object);
void dropItem(ITEM object);
