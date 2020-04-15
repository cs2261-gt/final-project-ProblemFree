// Constants
#define INVSIZE 15

typedef struct character {
    int playerclass;
    int enemyid;

    int hpMax;
    int hpCurr;

    int intelligence;
    int dexterity;
    int strength;
    int ac;

    int dmg;
    int stance;

    ITEM weapon;
    ITEM armor;
    ITEM backpack [INVSIZE];

    int tilerow;
    int tilecol;
} CHARACTER;

// PLAYER

// Class Options
enum {FIGHTER, MAGE, ROGUE};

// Stat types
enum {HP, STR, DEX, INTEL, AC};

// Combat move options
enum {OFFENSE, DEFENSE = 4};


extern CHARACTER player;


// ENEMIES 

enum {ABOMINATION, APPRENTICE, CHIMERA, DROW, ELEMENTAL, GOLEM, GOBLIN, HOMUNCULUS, KOBOLD, MIMIC, ORC, SLIME, SKELETON, TROLL, VAMPIRE, ZOMBIE, 
        BEHOLDER, DRAGON, WIZARD, MINDFLAYER};

// Common Mobs
extern CHARACTER abomination;
extern CHARACTER apprentice;
extern CHARACTER chimera;
extern CHARACTER drow;
extern CHARACTER elemental;
extern CHARACTER golem;
extern CHARACTER goblin;
extern CHARACTER homunculus;
extern CHARACTER kobold;
extern CHARACTER mimic;
extern CHARACTER orc;
extern CHARACTER slime;
extern CHARACTER skeleton;
extern CHARACTER troll;
extern CHARACTER vampire;
extern CHARACTER zombie;

#define MOBOPTIONS 16
// int mobs [MOBOPTIONS] = {ABOMINATION, APPRENTICE, CHIMERA, DROW, ELEMENTAL, GOLEM, GOBLIN, HOMUNCULUS, KOBOLD, MIMIC, ORC, SLIME, SKELETON, TROLL, VAMPIRE, ZOMBIE};

// Possible Bosses
extern CHARACTER beholder;
extern CHARACTER dragon;
extern CHARACTER wizard;
extern CHARACTER mindflayer;

#define BOSSOPTIONS 4
// int bosses [BOSSOPTIONS] = {BEHOLDER, DRAGON, WIZARD, MINDFLAYER};

// Master Monster List
extern CHARACTER enemyList [MOBOPTIONS + BOSSOPTIONS];


// MISC
// Damage Types
enum {PHYSICAL, MAGICAL};


// Prototypes
void initPlayer();
// void updatePlayer();
void drawPlayer();

int damageChar(CHARACTER * target, int dice);
int healChar (CHARACTER * target, int dice);
void buffChar (CHARACTER * target, int stat, int scale);
void checkDeath();

// void dropItem(ITEM object);

// Stat Modifier Calculator
int statEquipped(CHARACTER * target, int stat);
int statMod(CHARACTER * target, int stat);
int statModMob(CHARACTER * target, int stat);

// Dice rolls for characters
int intDiceRoll(CHARACTER * target);
int dexDiceRoll(CHARACTER * target);
int strDiceRoll(CHARACTER * target);


