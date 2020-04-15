// Variables
extern int seed;
extern int currRoom;
extern int turnCount;


// Custom Game Colors
#define NUMCOLORS 7
// This does an enum trick to make them the last indeces of the palette
enum {BLACKID=(256-NUMCOLORS), BLUEID, GREENID, YELLOWID, REDID, WHITEID, GRAYID};
extern unsigned short colors[NUMCOLORS];

// Prototypes
void initGame();
void updateGame();
void drawGame();

