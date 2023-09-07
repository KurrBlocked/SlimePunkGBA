/**
 * Controls
 * atStartScreen:
 *      Start - Start game
 *      Select - go to Instructions Screen
 * atInstructionsScreen:
 *      Start - Start game
 *      Select - go to Start Screen
 * atGameScreen:
 *      Left - Player go Left
 *      Right - Player go Right
 *      Up - Player Jumps
 *      A - Player enters/leaves bounce state
 * atPauseScreen:
 *      Start - resume game
 * atWinScreen:
 *      Start - go to Start Screen
 * atLoseScreen:
 *      Start - go to Start Screen
 * 
 * 
 * Instructions
 * Bounce through the level and reach the end of the stage.
 * Bounce state gives you 3 bounces and makes you immune to
 * most enemies and gives you an additional bounce when you
 * bounce off of them. Spikes and spiked enemies will hurt you
 * regardless. If you lose all 2 lives the game is over.
 * Touch Goo balls to make them explode and kill nearby enemies.
 * 
 * 
 * Current Status
 * I fixed the instruction screen bug and added a foreground to that
 * screen. I tried to implement the trail of goo but
 * I couldn't so I made the player change color when losing a life. For my
 * cheat, I made it so that you have infinite bounces when you enable cheat
 * mode. And if you die to an enemy in cheat mode, you blow up, killing the enemy.
 * To enable cheat mode you press select to toggle it. I did not implement a timer.
 * 
 * Bugs
 * Sometimes with the constant bouncing, you may get stuck into the floor. It was
 * never an issue until a large amount of bounces was possible by cheat mode.
 * 
 */


#include <stdlib.h>
#include <stdio.h>
#include "mylib.h"
#include "game.h"
#include "sound.h"

//Screens
#include "levelBackground.h"
#include "startScreen.h"
#include "instructionsScreen.h"
#include "instructionsScreenForeground.h"
#include "pauseScreen.h"
#include "winScreen.h"
#include "loseScreen.h"
#include "spriteSheet.h"

//Sounds
#include "gameBGM.h"


// Prototypes.
void initialize();

// State Prototypes.
void goToMenu();
void menu();
void goToInstructions();
void instructions();
void goToGame();
void game();
void goToPause();
void pause();
void goToWin();
void win();
void goToLose();
void lose();

// States.
enum {
    MENU,
    INSTRUCTIONS,
    GAME,
    PAUSE,
    WIN,
    LOSE
};
int state;
int currentScreenblock;

// Button Variables.
unsigned short buttons;
unsigned short oldButtons;

//Misc Variable.
int livesRemaining;

// Shadow OAM.
OBJ_ATTR shadowOAM[128];

int main() {
    initialize();

    while (1) {
        // Update button variables.
        oldButtons = buttons;
        buttons = BUTTONS;

        // State Machine.
        switch (state) {
        case MENU:
            menu();
            break;
        case INSTRUCTIONS:
            instructions();
            break;
        case GAME:
            game();
            break;
        case PAUSE:
            pause();
            break;
        case WIN:
            win();
            break;
        case LOSE:
            lose();
            break;
        }
    }
}

// Sets up GBA.
void initialize() {
    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;
    
    buttons = BUTTONS;
    oldButtons = 0;

    setupSounds();
    setupInterrupts();
    
    goToMenu();
}

// Sets up the Menu state.
void goToMenu() {
    waitForVBlank();
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_SIZE_SMALL | BG_4BPP;
    DMANow(3, startScreenPal, PALETTE, 256);
    DMANow(3, startScreenTiles, &CHARBLOCK[0], startScreenTilesLen / 2);
    DMANow(3, startScreenMap, &SCREENBLOCK[31], startScreenMapLen / 2);
    state = MENU;
}

// Runs every frame of the Menu state.
void menu() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToGame();
        initGame();
    }
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        REG_DISPCTL = MODE0 | BG0_ENABLE | BG1_ENABLE | SPRITE_ENABLE;
        REG_BG1CNT = BG_CHARBLOCK(2) | BG_SCREENBLOCK(27) | BG_SIZE_SMALL | BG_4BPP;
        goToInstructions();
    }
}
// Sets up the Instructions state.
void goToInstructions() {
    state = INSTRUCTIONS;
    currentScreenblock = 28;
    waitForVBlank();
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_TALL | BG_4BPP;
    DMANow(3, instructionsScreenPal, PALETTE, 256);
    DMANow(3, instructionsScreenTiles, &CHARBLOCK[0], instructionsScreenTilesLen / 2);
    DMANow(3, instructionsScreenMap, &SCREENBLOCK[28], instructionsScreenMapLen / 2);

    //DMANow(3, instructionsScreenForegroundPal, PALETTE, 256);
    DMANow(3, instructionsScreenForegroundTiles, &CHARBLOCK[2], instructionsScreenForegroundTilesLen / 2);
    DMANow(3, instructionsScreenForegroundMap, &SCREENBLOCK[27], instructionsScreenForegroundMapLen / 2);
}

// Runs every frame of the Instructions State.
void instructions() {
    
    if (BUTTON_HELD(BUTTON_UP) && vOff > 0) {
        vOff--;
    }
    if (BUTTON_HELD(BUTTON_DOWN) && vOff < 320) {
        vOff++;
    
    }
    if (vOff == 256 && currentScreenblock == 28) {
        REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(29) | BG_SIZE_TALL | BG_4BPP;
        vOff = 1;
        currentScreenblock = 29;
    }
    if (vOff == 0 && currentScreenblock == 29) {
        REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_TALL | BG_4BPP;
        vOff = 256;
        currentScreenblock = 28;
    }
    
    REG_BG0VOFF = vOff;
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;
        goToGame();
        initGame();
    }
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;
        REG_BG0VOFF = 0;
        goToMenu();
    }
}

// Sets up the game state.
void goToGame() {
    playSoundA(gameBGM_data, gameBGM_length, 1);
    waitForVBlank();
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_SIZE_SMALL | BG_4BPP;
    DMANow(3, levelBackgroundPal, PALETTE, 256);
    DMANow(3, levelBackgroundTiles, &CHARBLOCK[0], levelBackgroundTilesLen / 2);
    DMANow(3, levelBackgroundMap, &SCREENBLOCK[31], levelBackgroundMapLen / 2);
    
    REG_BG0VOFF = 0;
    REG_BG0HOFF = 0;

    //Set up sprites
    DMANow(3, spriteSheetTiles, &CHARBLOCK[4], spriteSheetTilesLen / 2);
    DMANow(3, spriteSheetPal, SPRITEPALETTE, spriteSheetPalLen / 2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128 * 4);
    state = GAME;
    if (livesRemaining == 1) {
        SPRITEPALETTE[4] -= 60;
    }
}

// Runs every frame of the game state.
void game() {

    updateGame();
    drawGame();
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToPause();
        pauseSound();
    }
    if (slime.col > 218 && slime.row > 112) {
        goToWin();
    }
    if (!livesRemaining) {
        goToLose();
    }
}

// Sets up the pause state.
void goToPause() {
    waitForVBlank();
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_SIZE_SMALL | BG_4BPP;
    DMANow(3, pauseScreenPal, PALETTE, 256);
    DMANow(3, pauseScreenTiles, &CHARBLOCK[0], pauseScreenTilesLen / 2);
    DMANow(3, pauseScreenMap, &SCREENBLOCK[31], pauseScreenMapLen / 2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128 * 4);
    state = PAUSE;
}

// Runs every frame of the pause state.
void pause() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToGame();
        initSpikes();
        unpauseSound();
    }
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToMenu();
    }
}

// Sets up the win state.
void goToWin() {
    waitForVBlank();
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_SIZE_SMALL | BG_4BPP;
    DMANow(3, winScreenPal, PALETTE, 256);
    DMANow(3, winScreenTiles, &CHARBLOCK[0], winScreenTilesLen / 2);
    DMANow(3, winScreenMap, &SCREENBLOCK[31], winScreenMapLen / 2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128 * 4);
    stopSound();
    state = WIN;
}

// Runs every frame of the win state.
void win() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToMenu();
    }
}

// Sets up the lose state.
void goToLose() {
    waitForVBlank();
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_SIZE_SMALL | BG_4BPP;
    DMANow(3, loseScreenPal, PALETTE, 256);
    DMANow(3, loseScreenTiles, &CHARBLOCK[0], loseScreenTilesLen / 2);
    DMANow(3, loseScreenMap, &SCREENBLOCK[31], loseScreenMapLen / 2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128 * 4);
    stopSound();
    state = LOSE;
}

// Runs every frame of the lose state.
void lose() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToMenu();
    }
}