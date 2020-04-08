typedef struct room {
    int roomType;
    int adjective;

    ITEM items [10];
    CHARACTER enemy;
    int trap;

    int searchSuccess;
    int trapSuccess;
} ROOM;

// Possible Rooms
enum{ALCHEMYLAB, ATRIUM, BEDROOM, BREWERY, CIRCLES, CHESS, TELEPORTER, CRYSTAL, LIBRARY, MENAGERIE, TREASURY, GOLEMFAB, DINING, OBSERBVATORY, PRISON, GARDEN, ENTRANCE, BOSSROOM};

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

void loadRoomData(int currentRoom);

void updateRoom();
void drawRoom();

void nextRoom();
void prevRoom();

int checkSearch();
int checkTrap();