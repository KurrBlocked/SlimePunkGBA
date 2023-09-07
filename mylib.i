# 1 "mylib.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "mylib.c"
# 1 "mylib.h" 1




typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
# 64 "mylib.h"
extern volatile unsigned short *videoBuffer;
# 85 "mylib.h"
typedef struct {
 u16 tileimg[8192];
} charblock;


typedef struct {
 u16 tilemap[1024];
} screenblock;



void setPixel3(int col, int row, unsigned short color);
void drawRect3(int col, int row, int width, int height, volatile unsigned short color);
void fillScreen3(volatile unsigned short color);
void drawImage3(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage3(const unsigned short *image);


void setPixel4(int col, int row, unsigned char colorIndex);
void drawRect4(int col, int row, int width, int height, volatile unsigned char colorIndex);
void fillScreen4(volatile unsigned char colorIndex);
void drawImage4(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage4(const unsigned short *image);


void waitForVBlank();
void flipPage();





typedef struct {
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[];
# 157 "mylib.h"
void hideSprites();






typedef struct {
    int worldRow;
    int worldCol;
    int rdel;
    int cdel;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    int hide;
} ANISPRITE;
# 198 "mylib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 209 "mylib.h"
typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 249 "mylib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);
# 285 "mylib.h"
typedef void (*ihp)(void);
# 305 "mylib.h"
int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);
int collisionCheck(unsigned char *collisionMap, int mapWidth, int col, int row, int width, int height, int colShift, int rowShift);
# 2 "mylib.c" 2


unsigned volatile short *videoBuffer = (unsigned short *)0x6000000;


DMA *dma = (DMA *)0x40000B0;


void waitForVBlank() {
    while ((*(volatile unsigned short *)0x4000006) > 160);
    while ((*(volatile unsigned short *)0x4000006) < 160);
}


void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt) {

    dma[channel].cnt = 0;


    dma[channel].src = src;
    dma[channel].dst = dst;


    dma[channel].cnt = cnt | (1 << 31);
}


int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB) {
    return rowA < rowB + heightB - 1
    && rowA + heightA - 1 > rowB
    && colA < colB + widthB - 1
    && colA + widthA - 1 > colB;
}


void hideSprites() {
    for (int i = 0; i < 128; i++) {
        shadowOAM[i].attr0 = (2<<8);
    }
}


int collisionCheck(unsigned char *collisionMap, int mapWidth, int col, int row, int width, int height, int colShift, int rowShift) {
    int smallestSoFar = 256;
    int current;


    current = collisionMap[((row + rowShift)*(mapWidth)+(col + colShift))];
    if (current < smallestSoFar) {
        smallestSoFar = current;
    }


    current = collisionMap[((row + rowShift)*(mapWidth)+(col + colShift + (width / 2)))];
    if (current < smallestSoFar) {
        smallestSoFar = current;
    }


    current = collisionMap[((row + rowShift)*(mapWidth)+(col + colShift + width - 1))];
    if (current < smallestSoFar) {
        smallestSoFar = current;
    }


    current = collisionMap[((row + rowShift + (height / 2))*(mapWidth)+(col + colShift + width - 1))];
    if (current < smallestSoFar) {
        smallestSoFar = current;
    }


    current = collisionMap[((row + rowShift + height - 1)*(mapWidth)+(col + colShift + width - 1))];
    if (current < smallestSoFar) {
        smallestSoFar = current;
    }


    current = collisionMap[((row + rowShift + height - 1)*(mapWidth)+(col + colShift + (width / 2)))];
    if (current < smallestSoFar) {
        smallestSoFar = current;
    }


    current = collisionMap[((row + rowShift + (height / 2))*(mapWidth)+(col + colShift))];
    if (current < smallestSoFar) {
        smallestSoFar = current;
    }


    current = collisionMap[((row + rowShift + height - 1)*(mapWidth)+(col + colShift))];
    if (current < smallestSoFar) {
        smallestSoFar = current;
    }

    return smallestSoFar;
}
