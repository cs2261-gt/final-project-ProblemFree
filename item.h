typedef struct item {
    int id;
    int type;

    int intelligenceEff;
    int dexterityEff;
    int strengthEff;
    int acEff;

    int specialEff;

    int tilecol;
    int tilerow;
    int framecount;
} ITEM;

// Item Types
enum {WEAPON, ARMOR, USABLE};

// Item Special Effects
enum {NONE, HEAL, REVIVE, HPBUFF, ACBUFF, STRBUFF, DEXBUFF, INTBUFF, SUPERBUFF};

// Master Item List
enum  {GREATSWORD, LONGSWORD, SPEAR, BOW, DAGGER, MAGESTAFF, SPELLBOOK, TRIDENT, SICKLE, FISTS, // Weapons
        CHAINMAIL, LEATHER, MAGEARMOR, PLATE, GLADIATORS, THIEVES, MAGEROBES, TRAVELERS, HEROS, // Armors
        HEALTHPOTION, STONESCALE, MUTAGEN, CATSEYE, SMOKELEAF, VITAE,                           // Commons
        REVIVALORB, DRAGONHEART, VORPALBLADE, ARTEMISBOW, ARCHWIZARDSTAFF, ROYAL, LEGENDARY};   // Rares

// Weapons
extern ITEM greatsword;
extern ITEM longsword;
extern ITEM spear;
extern ITEM bow;
extern ITEM dagger;
extern ITEM magestaff;
extern ITEM spellbook;
extern ITEM trident;
extern ITEM sickle;
extern ITEM fists;

#define WEAPONOPTIONS 10
// int weapons [WEAPONOPTIONS] = {GREATSWORD, LONGSWORD, SPEAR, BOW, DAGGER, MAGESTAFF, SPELLBOOK, TRIDENT, SICKLE, FISTS};

// Armors
extern ITEM chainmail;
extern ITEM leather;
extern ITEM magearmor;
extern ITEM plate;
extern ITEM gladiators;
extern ITEM thieves;
extern ITEM magerobes;
extern ITEM travelers;
extern ITEM heros;

#define ARMOROPTIONS 9
// int armors [ARMOROPTIONS] = {CHAINMAIL, LEATHER, MAGEARMOR, PLATE, GLADIATORS, THIEVES, MAGEROBES, TRAVELERS, HEROS};

// Commons
extern ITEM healthpotion;
extern ITEM stonescale;
extern ITEM mutagen;
extern ITEM catseye;
extern ITEM smokeleaf;
extern ITEM vitae;

#define COMMONOPTIONS 6
// int commons [COMMONOPTIONS] = {HEALTHPOTION, STONESCALE, MUTAGEN, CATSEYE, SMOKELEAF, VITAE};

// Rares
extern ITEM revivalorb;
extern ITEM dragonheart;
extern ITEM vorpalblade;
extern ITEM artemisbow;
extern ITEM archwizardstaff;
extern ITEM royal;
extern ITEM legendary;

#define RAREOPTIONS 7
// int rares [RAREOPTIONS] = {REVIVALORB, DRAGONHEART, VORPALBLADE, ARTEMISBOW, ARCHWIZARDSTAFF, ROYAL, LEGENDARY};

// Master array of instantiated items
extern ITEM itemlist [WEAPONOPTIONS + ARMOROPTIONS + COMMONOPTIONS + RAREOPTIONS];

// PROTOTYPES
void initItems();
void drawItem(ITEM object);
void drawInventory();

// Randomizers
int randomNormal();
int randomAll();

int randomWeapon();
int randomArmor();
int randomCommon();
int randomRare();