#include "mylib.h"

// The start of the video memory.
unsigned volatile short *videoBuffer = (unsigned short *)0x6000000;

// The start of DMA registers.
DMA *dma = (DMA *)0x40000B0;

// Pause code execution until vertical blank begins.
void waitForVBlank() {
    while (SCANLINECOUNTER > 160);
    while (SCANLINECOUNTER < 160);
}

// Set up and begin a DMA transfer.
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt) {
    // Turn DMA off.
    dma[channel].cnt = 0;

    // Set source and destination.
    dma[channel].src = src;
    dma[channel].dst = dst;

    // Set control and begin.
    dma[channel].cnt = cnt | DMA_ON;
}

// Return true if the two rectangular areas are overlapping.
int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB) {
    return rowA < rowB + heightB - 1 
    && rowA + heightA - 1 > rowB 
    && colA < colB + widthB - 1 
    && colA + widthA - 1 > colB;
}

// Hides all sprites in the shadowOAM; Must DMA the shadowOAM into the OAM after calling this function.
void hideSprites() {
    for (int i = 0; i < 128; i++) {
        shadowOAM[i].attr0 = ATTR0_HIDE;
    }
}

// Returns the smallest collision map entry found at the four corners and midpoints of corners of a shape using the specified col and row shift.
int collisionCheck(unsigned char *collisionMap, int mapWidth, int col, int row, int width, int height, int colShift, int rowShift) {
    int smallestSoFar = 256;
    int current;

    // Top Left
    current = collisionMap[OFFSET(col + colShift, row + rowShift, mapWidth)];
    if (current < smallestSoFar) {
        smallestSoFar = current;
    }

    // Top Middle
    current = collisionMap[OFFSET(col + colShift + (width / 2), row + rowShift, mapWidth)];
    if (current < smallestSoFar) {
        smallestSoFar = current;
    }

    // Top Right
    current = collisionMap[OFFSET(col + colShift + width - 1, row + rowShift, mapWidth)];
    if (current < smallestSoFar) {
        smallestSoFar = current;
    }

    // Right Middle
    current = collisionMap[OFFSET(col + colShift + width - 1, row + rowShift + (height / 2), mapWidth)];
    if (current < smallestSoFar) {
        smallestSoFar = current;
    }

    // Bottom Right
    current = collisionMap[OFFSET(col + colShift + width - 1, row + rowShift + height - 1, mapWidth)];
    if (current < smallestSoFar) {
        smallestSoFar = current;
    }

    // Bottom Middle
    current = collisionMap[OFFSET(col + colShift + (width / 2), row + rowShift + height - 1, mapWidth)];
    if (current < smallestSoFar) {
        smallestSoFar = current;
    }

    // Bottom Left
    current = collisionMap[OFFSET(col + colShift, row + rowShift + (height / 2), mapWidth)];
    if (current < smallestSoFar) {
        smallestSoFar = current;
    }

    // Left Middle
    current = collisionMap[OFFSET(col + colShift, row + rowShift + height - 1, mapWidth)];
    if (current < smallestSoFar) {
        smallestSoFar = current;
    }

    return smallestSoFar;
}
