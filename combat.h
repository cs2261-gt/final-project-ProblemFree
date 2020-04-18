// Variables
extern CHARACTER enemyChar;
extern int turn;

// Constants
#define TIMERWAIT 1000

// Prototypes
void initCombat(CHARACTER * enemy);
void updateCombat();
void drawCombat();

void attack(CHARACTER * source, CHARACTER * target);
int rollDmg(int dice, int bonus);


    
