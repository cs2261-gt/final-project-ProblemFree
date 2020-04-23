// Constants
#define INVSIZE 15

typedef struct character {
    int playerclass;
    int sex;
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

    int active;
    int tilerow;
    int tilecol;
} CHARACTER;

// PLAYER

// Class Options
enum {FIGHTER = 1, MAGE = 2, ROGUE = 3};

// Sex Options
enum {MALE, FEMALE};

// Stat types
enum {HP, STR, DEX, INTEL, AC};

// Combat move options
enum {OFFENSE, DEFENSE = 4};


extern CHARACTER player;
extern ITEM backpack [INVSIZE];
extern int weaponSlider;


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
void updatePlayer();
void drawPlayer(int col, int row);
void drawPlayerHealthbar(int max, int curr, int col, int row);

void initEnemies();
void drawEnemy(int enemyType, int col, int row);
void drawEnemyHealthbar(int max, int curr, int col, int row);

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


