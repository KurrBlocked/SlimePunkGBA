#include <stdlib.h>
#include "mylib.h"
#include "game.h"
#include "sound.h"
#include "alphaLevelCollisionMap.h"
#include "bounceSFX.h"

// Variables
int hOff;
int vOff;

OBJ_ATTR shadowOAM[128];
unsigned char * collisionMap;
PLAYER slime;
ENEMY enemies[ENEMYCOUNT];
SPIKE spikes[SPIKECOUNT];
GOO goos[GOOCOUNT];
int livesRemaining;
int cheatsEnabled;



// Initialize the game
void initGame() {

    collisionMap = (unsigned char *) alphaLevelCollisionMapBitmap;

	// Place screen on map
    vOff = 0;
    hOff = 0;
    cheatsEnabled = 0;
    initPlayer();
    initSpikes();
    initEnemies();
    initGoos();


}


void updateGame() {
    for (int i = 0; i < ENEMYCOUNT; i++) {
        updateEnemy(&enemies[i]);
    }
    for (int i = 0; i < GOOCOUNT; i++) {
        updateGoo(&goos[i]);
    }
    updatePlayer();
    updateSpikes();
    
}

void drawGame() {
    drawPlayer();
    for (int i = 0; i < ENEMYCOUNT; i++) {
        drawEnemy(i, &enemies[i]);
    }
    for (int i = 0; i < GOOCOUNT; i++) {
        drawGoo(i, &goos[i]);
    }

    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);
}

void initPlayer() {
    slime.col = 1;
    slime.row = 130;
    slime.cdel = 1;
    slime.rdel = 1;
    slime.size = 16;
    slime.bouncesRemaining = 0;
    slime.maxBounces = 4;
    slime.offGround = 0;
    slime.directionFacing = 0;
    livesRemaining = 2;
    slime.curFrame = 0;
    slime.numFrames = 8;
    slime.isWalking = 0;
    slime.aniCounter = 0;
}

void updatePlayer() {
    //Checks if player is off the ground
    if (slime.isWalking) {
        slime.isWalking = 0;
    }
    
    if (collisionCheck(collisionMap, MAPWIDTH, slime.col, slime.row, slime.size, slime.size, 0, slime.rdel)) {
        slime.offGround = 1;
    }
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        cheatsEnabled = (!cheatsEnabled);
    }
    //Jump if the player is not off the ground
    if (BUTTON_PRESSED(BUTTON_UP ) && !slime.bouncesRemaining) { 
        if (!slime.offGround) {
            if (collisionCheck(collisionMap, MAPWIDTH, slime.col, slime.row, slime.size, slime.size, 0, -10 * slime.rdel)) {
                slime.row -= (10 * slime.rdel);
            }
        }
    }


    if (BUTTON_PRESSED(BUTTON_A)) {
        if (slime.bouncesRemaining) {
            slime.bouncesRemaining = 0;
            slime.rdel = 1;
            slime.cdel = 1;
        } else if (!slime.offGround) {
            slime.bouncesRemaining = slime.maxBounces;
            slime.rdel = 2;
            slime.cdel = 2;
            slime.cdel += (slime.directionFacing * -4);
        }
    }
    
    //Go left when player isn't in bounce state
    if (BUTTON_HELD(BUTTON_LEFT) && !slime.bouncesRemaining) {
        if (collisionCheck(collisionMap, MAPWIDTH, slime.col, slime.row, slime.size, slime.size, -(slime.cdel + slime.offGround), 0)) {
            if ((slime.col - slime.cdel) > 0) {
                slime.col -= (slime.cdel + slime.offGround);
            }
            slime.directionFacing = 1;
            if (!slime.offGround) {
                slime.isWalking = 1;
            }
        }
    }

    //Go right when player isn't in bounce state
    if (BUTTON_HELD(BUTTON_RIGHT) && !slime.bouncesRemaining) {
        if (collisionCheck(collisionMap, MAPWIDTH, slime.col, slime.row, slime.size, slime.size, (slime.cdel + slime.offGround), 0)) {
            if ((slime.col + slime.cdel) < (MAPWIDTH - slime.size)) {
                slime.col += (slime.cdel + slime.offGround);
            }
            slime.directionFacing = 0;
            if (!slime.offGround) {
                slime.isWalking = 1;
            }
        }
    }
    

    //Checks if player is off ground and applies "gravity" to the player
    if (slime.offGround && !slime.bouncesRemaining) {
        slime.row += slime.rdel;
        if (!collisionCheck(collisionMap, MAPWIDTH, slime.col, slime.row, slime.size, slime.size, 0, slime.rdel)) {
            slime.offGround = 0;
        }
    }
    
    //Moves the player if they are in bounce state
    if (slime.bouncesRemaining) {
        
        //Bounces the player if they hit a wall
        if  (!collisionCheck(collisionMap, MAPWIDTH, slime.col, slime.row, slime.size, slime.size, slime.cdel, slime.rdel)) {
            if (!cheatsEnabled) {
                slime.bouncesRemaining--;
            }
            playSoundB(bounceSFX_data, bounceSFX_length, 0);
            if (!collisionCheck(collisionMap, MAPWIDTH, slime.col, slime.row, slime.size, slime.size, 0, slime.rdel)) {
                slime.rdel *= -1;
            }
            if (!collisionCheck(collisionMap, MAPWIDTH, slime.col, slime.row, slime.size, slime.size, slime.cdel, 0)) {
                slime.cdel *= -1;
            }
        }

        slime.row += slime.rdel;
        slime.col += slime.cdel;
        
        if (!slime.bouncesRemaining) {
            slime.rdel = 1;
            slime.cdel = 1;
        }
    }

    animatePlayer();
}

void animatePlayer() {
    if (slime.aniCounter % 5 == 0) {
        slime.curFrame = (slime.curFrame + 1 ) % (slime.numFrames);
    }
    if (slime.isWalking) {
        slime.aniCounter++;

    } else {
        slime.curFrame = 0;
    }
}
    
void drawPlayer() {
    shadowOAM[0].attr0 = slime.row | (ROWMASK & 0) | ATTR0_4BPP| ATTR0_SQUARE;
    shadowOAM[0].attr1 = slime.col | (COLMASK & 0) | ATTR1_SMALL;
    shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((slime.bouncesRemaining > 0) * 2, slime.curFrame * 2);
}

void initSpikes() {
    for (int i = 0; i < SPIKECOUNT; i++) {
        spikes[i].height = 8;
        spikes[i].width = 16;
    }

    spikes[0].col = 64;
    spikes[0].row = 152;
    spikes[1].col = 80;
    spikes[1].row = 152;

    spikes[2].col = 160;
    spikes[2].row = 152;
    spikes[3].col = 184;
    spikes[3].row = 152;

    for (int i = 0; i < SPIKECOUNT; i++) {
        shadowOAM[1 + i].attr0 = spikes[i].row | (ROWMASK & 0) | ATTR0_4BPP| ATTR0_WIDE;
        shadowOAM[1 + i].attr1 = spikes[i].col | (COLMASK & 0) | ATTR1_TINY;
        shadowOAM[1 + i].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(8, 0);
    }
}
void updateSpikes() {
    for (int i = 0; i < SPIKECOUNT; i++) {
        if (collision(spikes[i].col, spikes[i].row, spikes[i].width,spikes[i].height, slime.col, slime.row, slime.size, slime.size)) {
            slime.col = 1;
            slime.row = 130;
            slime.rdel = 1;
            slime.cdel = 1;
            slime.bouncesRemaining = 0;
            livesRemaining--;
            SPRITEPALETTE[4] -= 60;
        }
    }
}

void initEnemies() {
    for (int i = 0; i < ENEMYCOUNT; i++) {
        enemies[i].size = 16;
        enemies[i].cdel = 1;
        enemies[i].active = 1;
        enemies[i].hide = 0;
        enemies[i].curFrame = 0;
        enemies[i].numFrames = 9;
        enemies[i].aniCounter = 0;
    }
    // For enemies that jump, facingDirection 0, 1 == up, down; for walk facingDirection 0, 1 == right, left
    enemies[0].col = 24;
    enemies[0].row = 88;
    enemies[0].isSpiked = 0;
    enemies[0].movepointOne = enemies[0].col;
    enemies[0].movepointTwo = 48;
    enemies[0].facingDirection = 0;
    enemies[0].jumpHeight = 0;
    enemies[0].active = 0;//Removed first enemy to make the first jump easier
    enemies[0].hide = 1;

    enemies[1].col = 80;
    enemies[1].row = 40;
    enemies[1].isSpiked = 0;
    enemies[1].movepointOne = 48;
    enemies[1].movepointTwo = enemies[1].col;
    enemies[1].facingDirection = 1;
    enemies[1].jumpHeight = 0;

    enemies[2].col = 112;
    enemies[2].row = 24;
    enemies[2].isSpiked = 1;
    enemies[2].movepointOne = enemies[2].col;
    enemies[2].movepointTwo = 192;
    enemies[2].facingDirection = 0;
    enemies[2].jumpHeight = 0;

    enemies[3].col = 208;
    enemies[3].row = 89; 
    enemies[3].isSpiked = 0;
    enemies[3].movepointOne = 0;
    enemies[3].jumpHeight = 20;
    enemies[3].jumpCounter = 0;
    enemies[3].facingDirection = 0;
    enemies[3].jumpCooldown = 0;
    enemies[3].numFrames = 9;

    enemies[4].col = 120;
    enemies[4].row = 137;
    enemies[4].isSpiked = 1;
    enemies[4].movepointOne = 0;
    enemies[4].jumpHeight = 20;
    enemies[4].jumpCounter = 0;
    enemies[4].facingDirection = 0;
    enemies[4].jumpCooldown = 0;
    enemies[4].numFrames = 9;
}
void updateEnemy(ENEMY* e) {
    if (e -> active) {
        if (e -> movepointOne) {
            if (!e-> facingDirection) {
                if (e -> col != e-> movepointTwo) {
                    e -> col += e -> cdel;
                } else {
                    e -> facingDirection = 1;
                }
            } else {
                if (e -> col != e-> movepointOne) {
                    e -> col -= e -> cdel;
                } else {
                    e -> facingDirection = 0;
                }
            }  
        } else if (e -> jumpHeight && !e -> jumpCooldown) {
            if ((e -> jumpCounter) <= (e -> jumpHeight)) {
                e -> row--;
            } else {
                e -> row++;
                if (e -> jumpCounter == (e -> jumpHeight * 2)) {
                    e -> jumpCounter = 0;
                    e -> jumpCooldown = 9 * 10;
                }
            }
            e -> jumpCounter++;
        } else {
            e -> jumpCooldown--;
        }

        if (collision(e -> col, e -> row, e -> size, e -> size, slime.col, slime.row, slime.size, slime.size)) {
            if (slime.bouncesRemaining && !e -> isSpiked) {
                playSoundB(bounceSFX_data, bounceSFX_length, 0);
                e -> active = 0;
                e -> hide = 1;
                slime.rdel *= -1;
            } else {
                if (cheatsEnabled) {
                    goos[2].col = slime.col;
                    goos[2].row = slime.row;
                    goos[2].hide = 0;
                    goos[2].active = 1;
                    goos[2].activated = 1;
                    goos[2].remainingFrames = (goos[2].totalFrames + 1);
                }
                slime.col = 1;
                slime.row = 130;
                slime.rdel = 1;
                slime.cdel = 1;
                slime.bouncesRemaining = 0;
                livesRemaining--;
                SPRITEPALETTE[4] -= 60;   
            }
		}
    }
    if (e -> jumpHeight) {
        animateEnemy(e);
    }
}
void animateEnemy(ENEMY* e) {
    if (e -> jumpCooldown) {
        if (e -> aniCounter % 10 == 0) {
            e -> curFrame = (e -> curFrame + 1 ) % (e -> numFrames);
        }
        e -> aniCounter++;
    }
}

void drawEnemy(int index, ENEMY* e) {
    if (e -> hide) {
        shadowOAM[1 + index + SPIKECOUNT].attr0 |= ATTR0_HIDE;
    } 
    if (e -> active) {
        shadowOAM[1 + index + SPIKECOUNT].attr0 = e -> row | (ROWMASK & 0) | ATTR0_4BPP| ATTR0_SQUARE;
        shadowOAM[1 + index + SPIKECOUNT].attr1 = e -> col | (COLMASK & 0) | ATTR1_SMALL;
        shadowOAM[1 + index + SPIKECOUNT].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(4 + (2 * e -> isSpiked), 2 * e -> curFrame);
	}
}


void initGoos() {
    for (int i = 0; i < GOOCOUNT; i++) {
        goos[i].size = 32;
        goos[i].active = 1;
        goos[i].hide = 0;
        goos[i].remainingFrames = 0;
        goos[i].totalFrames = 4;
        goos[i].aniCounter = 0;
        goos[i].activated = 0;
    }
    goos[0].col = 144;
    goos[0].row = 8;

    goos[1].col = 108;
    goos[1].row = 108;

    goos[2].col = 0;
    goos[2].row = 0;
    goos[2].hide = 1;
    goos[2].active = 0;
}
void updateGoo(GOO* g) {
    if (g -> active) {
        if (g -> activated) {
            for (int i = 0; i < ENEMYCOUNT; i++) {
                if (g -> remainingFrames == 1) {
                    if (collision(g -> col, g -> row, g -> size, g -> size, enemies[i].col, enemies[i].row, enemies[i].size, enemies[i].size)) {
                        enemies[i].active = 0;
                        enemies[i].hide = 1;
		            }
                }
            }
        }
        if (collision(g -> col + 8, g -> row + 8, g -> size / 2, g -> size / 2, slime.col, slime.row, slime.size, slime.size) && !(g -> activated) ) {
            g -> remainingFrames = (g -> totalFrames + 1);
            g -> activated = 1;
		}
        if ((g -> aniCounter % 2) == 0 && g -> remainingFrames) {
            g -> remainingFrames--;
        }
        g -> aniCounter++;
        if (!(g -> remainingFrames) && g -> activated) {
            g -> active = 0;
            g -> hide = 1;
        }
    }
}

void drawGoo(int index, GOO* g) {
    if (g -> hide) {
        shadowOAM[1 + index + SPIKECOUNT + ENEMYCOUNT].attr0 |= ATTR0_HIDE;
    } 
    if (g -> active) {
        shadowOAM[1 + index + SPIKECOUNT + ENEMYCOUNT].attr0 = g -> row | (ROWMASK & 0) | ATTR0_4BPP| ATTR0_SQUARE;
        shadowOAM[1 + index + SPIKECOUNT + ENEMYCOUNT].attr1 = g -> col | (COLMASK & 0) | ATTR1_MEDIUM;
        shadowOAM[1 + index + SPIKECOUNT + ENEMYCOUNT].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(12, ((g -> totalFrames - g -> remainingFrames) * g -> activated) * 4);
	}
}