#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"
#include "game.h"
#include "character.h"
#include "room.h"
#include "item.h"

ITEM itemlist [WEAPONOPTIONS + ARMOROPTIONS + COMMONOPTIONS + RAREOPTIONS];

// Init Item Stats
void initItems() {
    ITEM greatsword =   {.id = GREATSWORD,  .intelligenceEff = 0, .dexterityEff = 0, .strengthEff = 3, .acEff = 0, .specialEff = NONE, .type = WEAPON, .tilerow = 0, .tilecol = 0};
    ITEM longsword =    {.id = LONGSWORD,   .intelligenceEff = 0, .dexterityEff = 1, .strengthEff = 2, .acEff = 0, .specialEff = NONE, .type = WEAPON, .tilerow = 0, .tilecol = 0};
    ITEM spear =        {.id = SPEAR,       .intelligenceEff = 0, .dexterityEff = 2, .strengthEff = 1, .acEff = 0, .specialEff = NONE, .type = WEAPON, .tilerow = 0, .tilecol = 0};
    ITEM bow =          {.id = BOW,         .intelligenceEff = 0, .dexterityEff = 3, .strengthEff = 0, .acEff = 0, .specialEff = NONE, .type = WEAPON, .tilerow = 0, .tilecol = 0};
    ITEM dagger =       {.id = DAGGER,      .intelligenceEff = 1, .dexterityEff = 2, .strengthEff = 0, .acEff = 0, .specialEff = NONE, .type = WEAPON, .tilerow = 0, .tilecol = 0};
    ITEM magestaff =    {.id = MAGESTAFF,   .intelligenceEff = 2, .dexterityEff = 1, .strengthEff = 0, .acEff = 0, .specialEff = NONE, .type = WEAPON, .tilerow = 0, .tilecol = 0};
    ITEM spellbook =    {.id = SPELLBOOK,   .intelligenceEff = 3, .dexterityEff = 0, .strengthEff = 0, .acEff = 0, .specialEff = NONE, .type = WEAPON, .tilerow = 0, .tilecol = 0};
    ITEM trident =      {.id = TRIDENT,     .intelligenceEff = 1, .dexterityEff = 0, .strengthEff = 2, .acEff = 0, .specialEff = NONE, .type = WEAPON, .tilerow = 0, .tilecol = 0};
    ITEM sickle =       {.id = SICKLE,      .intelligenceEff = 2, .dexterityEff = 0, .strengthEff = 1, .acEff = 0, .specialEff = NONE, .type = WEAPON, .tilerow = 0, .tilecol = 0};
    ITEM fists =        {.id = FISTS,       .intelligenceEff = 1, .dexterityEff = 1, .strengthEff = 1, .acEff = 0, .specialEff = NONE, .type = WEAPON, .tilerow = 0, .tilecol = 0};

    ITEM chainmail =    {.id = CHAINMAIL,   .intelligenceEff = 0, .dexterityEff = 0, .strengthEff = 2, .acEff = 2, .specialEff = NONE, .type = ARMOR, .tilerow = 0, .tilecol = 0};
    ITEM leather =      {.id = LEATHER,     .intelligenceEff = 0, .dexterityEff = 2, .strengthEff = 0, .acEff = 2, .specialEff = NONE, .type = ARMOR, .tilerow = 0, .tilecol = 0};
    ITEM magearmor =    {.id = MAGEARMOR,   .intelligenceEff = 2, .dexterityEff = 0, .strengthEff = 0, .acEff = 2, .specialEff = NONE, .type = ARMOR, .tilerow = 0, .tilecol = 0};
    ITEM plate =        {.id = PLATE,       .intelligenceEff = 0, .dexterityEff = 0, .strengthEff = 0, .acEff = 4, .specialEff = NONE, .type = ARMOR, .tilerow = 0, .tilecol = 0};
    ITEM gladiators =   {.id = GLADIATORS,  .intelligenceEff = 0, .dexterityEff = 0, .strengthEff = 4, .acEff = 0, .specialEff = NONE, .type = ARMOR, .tilerow = 0, .tilecol = 0};
    ITEM thieves =      {.id = THIEVES,     .intelligenceEff = 0, .dexterityEff = 4, .strengthEff = 0, .acEff = 0, .specialEff = NONE, .type = ARMOR, .tilerow = 0, .tilecol = 0};
    ITEM magerobes =    {.id = MAGEROBES,   .intelligenceEff = 4, .dexterityEff = 0, .strengthEff = 0, .acEff = 0, .specialEff = NONE, .type = ARMOR, .tilerow = 0, .tilecol = 0};
    ITEM travelers =    {.id = TRAVELERS,   .intelligenceEff = 1, .dexterityEff = 1, .strengthEff = 1, .acEff = 1, .specialEff = NONE, .type = ARMOR, .tilerow = 0, .tilecol = 0};
    ITEM heros =        {.id = HEROS,       .intelligenceEff = 2, .dexterityEff = 2, .strengthEff = 2, .acEff = 2, .specialEff = NONE, .type = ARMOR, .tilerow = 0, .tilecol = 0};

    ITEM healthpotion = {.id = HEALTHPOTION,    .intelligenceEff = 0, .dexterityEff = 0, .strengthEff = 0, .acEff = 0, .specialEff = HEAL, .type = USABLE, .tilerow = 0, .tilecol = 0};
    ITEM stonescale =   {.id = STONESCALE,      .intelligenceEff = 0, .dexterityEff = 0, .strengthEff = 0, .acEff = 1, .specialEff = ACBUFF, .type = USABLE, .tilerow = 0, .tilecol = 0};
    ITEM mutagen =      {.id = MUTAGEN,         .intelligenceEff = 0, .dexterityEff = 0, .strengthEff = 1, .acEff = 0, .specialEff = STRBUFF, .type = USABLE, .tilerow = 0, .tilecol = 0};
    ITEM catseye =      {.id = CATSEYE,         .intelligenceEff = 0, .dexterityEff = 1, .strengthEff = 0, .acEff = 0, .specialEff = DEXBUFF, .type = USABLE, .tilerow = 0, .tilecol = 0};
    ITEM smokeleaf =    {.id = SMOKELEAF,       .intelligenceEff = 1, .dexterityEff = 0, .strengthEff = 0, .acEff = 0, .specialEff = INTBUFF, .type = USABLE, .tilerow = 0, .tilecol = 0};
    ITEM vitae =        {.id = VITAE,           .intelligenceEff = 0, .dexterityEff = 0, .strengthEff = 0, .acEff = 0, .specialEff = HPBUFF, .type = USABLE, .tilerow = 0, .tilecol = 0};

    ITEM revivalorb =       {.id = REVIVALORB,      .intelligenceEff = 0, .dexterityEff = 0, .strengthEff = 0, .acEff = 0, .specialEff = REVIVE, .type = USABLE, .tilerow = 0, .tilecol = 0, .framecount = 0};
    ITEM dragonheart =      {.id = DRAGONHEART,     .intelligenceEff = 1, .dexterityEff = 1, .strengthEff = 1, .acEff = 1, .specialEff = SUPERBUFF, .type = USABLE, .tilerow = 0, .tilecol = 0, .framecount = 0};
    ITEM vorpalblade =      {.id = VORPALBLADE,     .intelligenceEff = 3, .dexterityEff = 0, .strengthEff = 3, .acEff = 0, .specialEff = NONE, .type = WEAPON, .tilerow = 0, .tilecol = 0, .framecount = 0};
    ITEM artemisbow =       {.id = ARTEMISBOW,      .intelligenceEff = 0, .dexterityEff = 3, .strengthEff = 3, .acEff = 0, .specialEff = NONE, .type = WEAPON, .tilerow = 0, .tilecol = 0, .framecount = 0};
    ITEM archwizardstaff =  {.id = ARCHWIZARDSTAFF, .intelligenceEff = 3, .dexterityEff = 3, .strengthEff = 0, .acEff = 0, .specialEff = NONE, .type = WEAPON, .tilerow = 0, .tilecol = 0, .framecount = 0};
    ITEM royal =            {.id = ROYAL,           .intelligenceEff = 3, .dexterityEff = 3, .strengthEff = 3, .acEff = 3, .specialEff = NONE, .type = ARMOR, .tilerow = 0, .tilecol = 0, .framecount = 0};
    ITEM legendary =        {.id = LEGENDARY,       .intelligenceEff = 4, .dexterityEff = 4, .strengthEff = 4, .acEff = 4, .specialEff = NONE, .type = ARMOR, .tilerow = 0, .tilecol = 0, .framecount = 0};
}

// Randomizers
int randomNormal() {
    int decider = rand() % 100;

    if (decider < 50) {
        return randomCommon();
    } else if (decider < 75) {
        return randomArmor();
    } else {
        return randomWeapon();
    }
}

int randomAll() {
    int decider = rand() % 100;

    if (decider < 50) {
        return randomCommon();
    } else if (decider < 70) {
        return randomArmor();
    } else if (decider < 90) {
        return randomWeapon();
    } else {
        return randomRare();
    }
}



int randomWeapon() {
    int decider = rand() % 100;

    if (decider < 11) {
        return GREATSWORD;
    } else if (decider < 22) {
        return LONGSWORD;
    } else if (decider < 33) {
        return SPEAR;
    } else if (decider < 44) {
        return BOW;
    } else if (decider < 55) {
        return DAGGER;
    } else if (decider < 66) {
        return MAGESTAFF;
    } else if (decider < 77) {
        return SPELLBOOK;
    } else if (decider < 88) {
        return TRIDENT;
    } else {
        return SICKLE;
    }
}

int randomArmor() {
    int decider = rand() % 100;

    if (decider < 15) {
        return CHAINMAIL;
    } else if (decider < 30) {
        return LEATHER;
    } else if (decider < 45) {
        return MAGEARMOR;
    } else if (decider < 55) {
        return PLATE;
    } else if (decider < 65) {
        return GLADIATORS;
    } else if (decider < 75) {
        return THIEVES;
    } else if (decider < 85) {
        return MAGEROBES;
    } else if (decider < 95) {
        return TRAVELERS;
    } else {
        return HEROS;
    }
}

int randomCommon() {
    int decider = rand() % 100;

    if (decider < 50) {
        return HEALTHPOTION;
    } else if (decider < 60) {
        return STONESCALE;
    } else if (decider < 70) {
        return MUTAGEN;
    } else if (decider < 80) {
        return CATSEYE;
    } else if (decider < 90) {
        return SMOKELEAF;
    } else {
        return VITAE;
    }
}

int randomRare() {
    int decider = rand() % 100;

    if (decider < 25) {
        return REVIVALORB;
    } else if (decider < 50) {
        return DRAGONHEART;
    } else if (decider < 60) {
        return VORPALBLADE;
    } else if (decider < 70) {
        return ARTEMISBOW;
    } else if (decider < 80) {
        return ARCHWIZARDSTAFF;
    } else if (decider < 90) {
        return ROYAL;
    } else {
        return LEGENDARY;
    }
}