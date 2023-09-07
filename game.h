// Constants
#define MAPHEIGHT 160
#define MAPWIDTH 240
#define ENEMYCOUNT 5
#define SPIKECOUNT 4
#define GOOCOUNT 3

// Variables

typedef struct {
    int col;
    int row;
    int cdel;
    int size;
    int active;
    int hide;
    int isSpiked;
    int movepointOne;
    int movepointTwo;
    int facingDirection;
    int jumpHeight;
    int jumpCounter;
    int jumpCooldown;
    int curFrame;
    int numFrames;
    int aniCounter;
} ENEMY;

typedef struct {
    int col;
    int row;
    int height;
    int width;
} SPIKE;

typedef struct {
    int col;
    int row;
    int cdel;
    int rdel;
    int size;
    int bouncesRemaining;
    int maxBounces;
    int offGround;
    int directionFacing;
    int anistate;
    int livesRemaining;
    int aniCounter;
    int curFrame;
    int numFrames;
    int isWalking;
} PLAYER;

typedef struct {
    int col;
    int row;
    int size;
    int remainingFrames;
    int totalFrames;
    int aniCounter;
    int active;
    int hide;
    int activated;
} GOO;

extern int hOff;
extern int vOff;
extern int livesRemaining;
extern OBJ_ATTR shadowOAM[128];
extern PLAYER slime;
extern ENEMY enemies[ENEMYCOUNT];
extern SPIKE spikes[SPIKECOUNT];
extern GOO goos[GOOCOUNT];



// Prototypes
void initGame();
void updateGame();
void drawGame();

void initPlayer();
void updatePlayer();
void animatePlayer();
void drawPlayer();

void initSpikes();
void updateSpikes();

void initEnemies();
void updateEnemy(ENEMY* );
void animateEnemy(ENEMY* );
void drawEnemy(int index, ENEMY* );

void initGoos();
void updateGoo(GOO*);
void drawGoo(int index, GOO*);



// Collision function prototypes
int collisionCheck(unsigned char *collisionMap, int mapWidth, int col, int row, int width, int height, 
        int colShift, int rowShift);
int collisionCheckAllPixels(unsigned char *collisionMap, int mapWidth, int col, int row, int width, 
        int height, int colShift, int rowShift);
int collisionCheckReturnLargest(unsigned char *collisionMap, int mapWidth, int col, int row, int width, 
    int height, int colShift, int rowShift);
int collisionCheckReturnLargestAllPixels(unsigned char *collisionMap, int mapWidth, int col, int row, 
        int width, int height, int colShift, int rowShift);