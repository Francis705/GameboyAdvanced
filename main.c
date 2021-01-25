// Press the B button to increase the speed of the character and allow them to pass through some gates
// Press the A button to deactivate this mode.


















#include <stdlib.h>
#include <stdio.h>
#include "Witch.h"
#include "myLib.h"
#include "snake.h"
#include "game.h"
#include "gameBackground.h"
#include "winBackGround.h"
#include "LoseScreen.h"
#include "Pumpkin.h"
#include "neigborhood.h"
#include "MoonSky.h"
#include "purpleHalloween.h"
#include "PumpkinLose.h"
#include "PumpkinWin.h"
#include "PumpkinInstruction.h"
#include "sound.h"
#include "ZombiesPanic.h"
#include "Ouch.h"
// TODO 3.4: Include space.h

OBJ_ATTR shadowOAM[128];
// Prototypes
void initialize();

// State Prototypes
void goToStart();
void start();
void goToGame();
void game();
void goToPause();
void pause();
void goToWin();
void win();
void goToLose();
void lose();
void hideSprites();
void goToInstructions();
void Instructions();

// States
enum {START, GAME, PAUSE, WIN, LOSE, INSTRUCT};
int state;
int snakeBodyCounter;
int loseFlag;

SOUND soundA;
SOUND soundB;


// Button Variables
unsigned short buttons;
unsigned short oldButtons;

// Random Seed
int seed;

// Text Buffer
char buffer[41];

int main() {

    initialize();

    while(1) {

        // Update button variables
        oldButtons = buttons;
        buttons = BUTTONS;

        // State Machine
        switch(state) {

            case START:
                start();
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
            case INSTRUCT:
                Instructions();
                break;
        }

    }
}

// Sets up GBA
// Setting up Backrounds
void initialize() {
    waitForVBlank();

    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE | BG1_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK(0)| BG_SCREENBLOCK(28) | BG_4BPP;

    setupSounds();
	setupInterrupts();

    
    

    // Set up the first state
    goToStart();
}

// Sets up the start state
void goToStart() {
    DMANow(3,shadowOAM,OAM,512);
    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK(1)| BG_SCREENBLOCK(5) | BG_4BPP;

    

    DMANow(3,PumpkinPal, PALETTE, PumpkinPalLen/2);
    DMANow(3,PumpkinTiles,&CHARBLOCK[1],PumpkinTilesLen / 2);
    DMANow(3,PumpkinMap,&SCREENBLOCK[5],PumpkinMapLen / 2);
        hideSprites();
        waitForVBlank();




    


    state = START;

    // Begin the seed randomization
    seed = 0;
}

// Runs every frame of the start state
void start() {

    
    REG_BG0HOFF =0;
    REG_BG0VOFF =0;
    

    // seed++;

    // Lock the framerate to 60 fps
    waitForVBlank();
  

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {

        // Seed the random generator
       // srand(seed);
		stopSound();
		playSoundA(zombiePanic,ZOMBIEPANICLEN,1);
		// playSoundB(navi,NAVILEN,0);

        goToInstructions();
        initGame();
    }
}

// Sets up the game state and hides all sprites
void goToGame() {

    REG_DISPCTL = MODE0 | BG0_ENABLE | BG1_ENABLE | SPRITE_ENABLE;
    DMANow(3,shadowOAM,OAM,512);
    REG_BG0CNT = BG_CHARBLOCK(0)| BG_SCREENBLOCK(17) | BG_8BPP | BG_SIZE_WIDE;
    REG_BG1CNT = BG_CHARBLOCK(3)| BG_SCREENBLOCK(31) | BG_4BPP | BG_SIZE_SMALL;
    if (heartCounter == 1){
        goToLose();
    }



    //moonSky
    DMANow(3,neigborhoodPal, PALETTE, neigborhoodPalLen/2);
    DMANow(3,MoonSkyTiles, &CHARBLOCK[3],MoonSkyTilesLen / 2);
    DMANow(3,MoonSkyMap, &SCREENBLOCK[31],MoonSkyMapLen/ 2);



    DMANow(3,neigborhoodPal, PALETTE,neigborhoodPalLen/2);
    DMANow(3,neigborhoodTiles, &CHARBLOCK[0],neigborhoodTilesLen / 2);
    DMANow(3,neigborhoodMap, &SCREENBLOCK[17],neigborhoodMapLen/ 2);



    

    //neighborhood

    hideSprites();
    waitForVBlank();

    

    REG_BG1VOFF = vOff;
    REG_BG1HOFF = hOff;
    

    // hideSprites();
    // waitForVBlank();
    DMANow(3,shadowOAM,OAM,512);

    state = GAME;
}

// Runs every frame of the game state
void game() {
    updateGame();
    drawGame();
    

    // Update the score


    waitForVBlank();
    DMANow(3,shadowOAM,OAM,512);
    // Win once the snake gets a certain length
    if (winFlag){
        goToWin();
    }
    if (heartCounter == 0){
        goToLose();
    }
    else if (BUTTON_PRESSED(BUTTON_START))
        goToPause();
    else if (BUTTON_PRESSED(BUTTON_B)){
        superSpeed = 1;
        child.cdel = 2;
        child.rdel = 2;

    }


    else if (BUTTON_PRESSED(BUTTON_A)){
        child.cdel = 1;
        child.rdel = 1;       
    }

    else if (loseFlag){
        goToLose();
    }
}

// Sets up the pause state
void goToPause() {




    //TODO 2.2: Wait for vertical blank and flip the page
    waitForVBlank();




    state = PAUSE;
}

// Runs every frame of the pause state
void pause() {


    // Lock the framerate to 60 fps
    waitForVBlank();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START))
        goToGame();
    else if (BUTTON_PRESSED(BUTTON_SELECT))

        goToStart();

}

// Sets up the win state
void goToWin() {
    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK(0)| BG_SCREENBLOCK(11) | BG_4BPP | BG_SIZE_SMALL;
    DMANow(3,shadowOAM,OAM,512);
    hideSprites();
    DMANow(3,WitchPal,PALETTE,WitchPalLen/2);
    DMANow(3,WitchTiles,&CHARBLOCK[0],WitchTilesLen / 2);
    DMANow(3,WitchMap,&SCREENBLOCK[11],WitchMapLen / 2);
    hideSprites();
    waitForVBlank();
    DMANow(3,shadowOAM,OAM,512);


    REG_BG0HOFF =0;
    REG_BG0VOFF =0;
    monsterKillCount = 0;


 

    // //TODO 2.3: Wait for vertical blank and flip the page





    state = WIN;
}

// Runs every frame of the win state
void win() {
    winFlag = 0;
    // Lock the framerate to 60 fps
    waitForVBlank();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START))
        goToStart();
}

// Sets up the lose state
void goToLose() {
    REG_BG0CNT = BG_CHARBLOCK(0)| BG_SCREENBLOCK(20) | BG_4BPP | BG_SIZE_SMALL;
    REG_BG0HOFF =40;
    REG_BG0VOFF =0;
    DMANow(3,LoseScreenPal,PALETTE,LoseScreenPalLen/2);
    DMANow(3,LoseScreenTiles,&CHARBLOCK[0],LoseScreenTilesLen / 2);
    DMANow(3,LoseScreenMap,&SCREENBLOCK[20],LoseScreenMapLen / 2);
    hideSprites();
    waitForVBlank();

    DMANow(3,shadowOAM,OAM,512);
    heartCounter = 3;


   

    //TODO 2.4: Wait for vertical blank and flip the page
    waitForVBlank();



    state = LOSE;
}

// Runs every frame of the lose state
void lose() {

    // Lock the framerate to 60 fps



    // State transitions
    if (BUTTON_PRESSED(BUTTON_START))
        goToStart();
}


void goToInstructions(){
    REG_BG0CNT = BG_CHARBLOCK(0)| BG_SCREENBLOCK(11) | BG_4BPP | BG_SIZE_SMALL;
    REG_BG0HOFF =0;
    REG_BG0VOFF =45;
    // DMANow(3,PumpkinInstructionPal,PALETTE,PumpkinInstructionPalLen/2);
    // DMANow(3,PumpkinInstructionTiles,&CHARBLOCK[0],PumpkinInstructionTilesLen / 2);
    // DMANow(3,PumpkinInstructionMap,&SCREENBLOCK[11],PumpkinInstructionMapLen / 2);
    DMANow(3,PumpkinWinPal,PALETTE,PumpkinWinPalLen/2);
    DMANow(3,PumpkinWinTiles,&CHARBLOCK[0],PumpkinWinTilesLen / 2);
    DMANow(3,PumpkinWinMap,&SCREENBLOCK[11],PumpkinWinMapLen / 2);

    hideSprites();
    waitForVBlank();
    DMANow(3,shadowOAM,OAM,512);
    state = INSTRUCT;


}
void Instructions(){
    if BUTTON_PRESSED(BUTTON_START){
        goToGame();
    }

}