typedef struct room {
    int roomType;
    int adjective;

    ITEM object;
    CHARACTER enemy;
    int trap;

    int searchSuccess;
    int trapSuccess;

    int searched;
    
} ROOM;

// Constants
#define DUNGEONSIZE 12

extern ROOM dungeon[DUNGEONSIZE];

// Cheat Mode
extern int goblinMode;


// Possible Rooms
enum{ALCHEMYLAB, ATRIUM, BEDROOM, BREWERY, CIRCLES, CHESS, TELEPORTER, CRYSTAL, LIBRARY, MENAGERIE, TREASURY, GOLEMFAB, DINING, OBSERVATORY, PRISON, GARDEN, ENTRANCE, BOSSROOM};

// Possible Room Adjectives
enum {EMPTY, MONSTER, TRAP, GUARDED, TREASURE, RARETREASURE, BOSS};

// Master List of Possible Rooms

// Prototypes'
void initDungeon();

void placeCommon(int i);
void placeRare(int i);
void placeAny(int i);
void placeTrap(int i);
void placeEnemy(int i);
void placeGoblinoid(int i);

void loadRoomData(int currentRoom);

// void updateRoom();
void drawRoom();


int checkSearch();
int checkTrap();