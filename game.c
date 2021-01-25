#include <stdlib.h>
#include "myLib.h"
#include "game.h"
#include "sound.h"
#include "ouch.h"
#include "spritesheet.h"
#include "spritesSheetFrankensteinCandy.h"
#include "neigborhoodCM.h"
#include "neigborhoodCMtwo.h"


// col 111 for door world rowı
// row 78 for door world row

// Variables
int starFlag = 0;
Candy candy[candyStartAmount];
Candy candyPiece;
Star star;
Candy skull;
Candy vine;
Candy vineLeft;
int hasBat = 0;
int vineFrame[] = {14,16,18,20,18,16,14};
int vineFrameIndex = 0;
int vineFrameIndexLeft = 3;
int vineFrameLeft[] = {22,24,26,28,26,24,22};
int starCycle = 0;
int starRow[] = {21,30,10};
int starCol[] = {23,20,50};
int candyPieceCounter = 3;
int count;
int frames = 0;
int direction;
Child child;
Child door;
Child doorOneCandy;
Candy doorTwo;
Candy doorThree;
Candy doorFour;
int childFrame[] = {0,2};
int childFrameIndex = 0;
Child monsterOne;
Child Ghost;
Child Eye;
Child Bat;
Candy gate;


int skullFramesIndex = 0;
int skullFrames[] = {2,4,6,8,10,12,10,8,6,4,2};
int starFrames[] = {0,2,4,6,8,10,8,6,4,2,0};
int starFrameIndex = 0;
int starPosition = 0;
int heartCounter = 3;
int ghostFrames[] = {18,20,22,24}; //real ghost
int eyeFrames[] = {8,10,12,14,8};
int batFrames[] = {12,14,16};
int monsterOneFrameLeft[] = {6,8,10};
int monsterOneFrameRight[] = {12,14,16};
int ghostFramesIndex = 0;
int eyeFrameIndex = 0;
int batFrameIndex = 0;
int monsterOneFrameindex = 0;
int worldHeigth = 256;
int worldWidth = 512;
int hitTimer = 80;

int appleCols[] = {12, 67, 135, 74, 196, 201};
int appleRows[] = {101, 67, 100, 10, 12, 13};
int appleIndex;
int loseFlag;
int hOffOne;
int vOffOne;
int vOff;
int hOff;
int moveFlag;
int winFlag;
int monsterKillCount = 0;
int haskey = 0;
int superSpeed;


int starRows[] = { 11,11,25};
int starCols[] = { 50,25,100};


// int monsterOneLeft;
// int monsterOneRight;

enum {UP,DOWN,LEFT,RIGHT};

// Initialize the game
void initGame() {
	hitTimer = 0;
	waitForVBlank();
	frames = 0;
	hOff = 97;
	vOff = 0;
	winFlag = 0;
	hasBat = 0;
	haskey = 0;
	superSpeed = 0;
	heartCounter = 3;

	
	DMANow(3,spritesSheetFrankensteinCandyPal,SPRITEPALETTE, spritesSheetFrankensteinCandyPalLen / 2);
	DMANow(3,spritesSheetFrankensteinCandyTiles, &CHARBLOCK[4],spritesSheetFrankensteinCandyTilesLen /2);
	



	initChild();
	initMonsterOne();
	initGhost();
	initEye();
	initBat();
	initCandy();
	initDoor();
	initSkull();
	initVine();
	initVineLeft();
	initDoorTwo();
	initGate();
	initDoorThree();
	initDoorFour();
	initdoorCandy();



    // Creating flags and counters

	appleIndex = 0;
	loseFlag = 0;

    // Initialize the colors
    // unsigned short colors[NUMCOLORS] = {BLACK, BLUE, GREEN, RED, WHITE, GRAY};

    // //TODO 4.2: Load the alien image's colors


    // // Load the custom game colors to the end
    // for (int i = 0; i < NUMCOLORS; i++) {
    //     PALETTE[256-NUMCOLORS+i] = colors[i];
    // }
}

// Updates the game each frame
void updateGame() {

	// updateSnake();
    frames++;
	updateChild();
	throwCandy();
	updateMonsterOne();
	updateGhost();
	updateEye();
	updateBat();
	updateCandy();
	updateDoor();
	// updateStars();
	updateSkull();
	updateVine();
	updateVineLeft();
	updateDoorTwo();
	updateGate();
	updateDoorThree();
	updateDoorFour();
	if(BUTTON_PRESSED(BUTTON_SELECT)){
		loseFlag = 1;


	}


	
	


}

// Draws the game each frame
void drawGame() {
	REG_BG0HOFF = hOff;
    REG_BG0VOFF = vOff;
	REG_BG1VOFF = vOffOne;
	REG_BG1HOFF = hOffOne;

//  drawSnake();

 drawChild();
 drawMonsterOne();
 drawGhost();
 //drawEye();
 //drawBat();
 drawHearts();
 drawCandy();
 drawDoor();
//  drawStars();
 drawSkull();
 drawVine();
 drawVineLeft();
 drawDoorTwo();
 drawGate();
 drawBat();
 drawDoorThree();
 drawDoorFour();
 drawCandyCounter();


}





void initChild(){
	child.worldRow = 120;
	child.worldCol = 256;
	child.height = 16;
	child.width = 16;
	child.tileRow = 0;
	child.tileCol = 16;
	child.direction = RIGHT;
	child.cdel = 1;
	child.rdel = 1;

}
void initMonsterOne(){
	monsterOne.worldCol = 50;
	monsterOne.worldRow = 80;
	monsterOne.height = 16;
	monsterOne.width = 16;
	monsterOne.cdel = 1;
	monsterOne.active = 1;
	monsterOne.direction = RIGHT;

}




void updateMonsterOne(){
	if (monsterOne.active){

	monsterOne.worldCol += monsterOne.cdel;
		if (monsterOne.worldCol < 17 ){
			monsterOne.direction = RIGHT;
			monsterOne.cdel *= -1;
			
		}
		if (monsterOne.worldCol > 490){
			monsterOne.direction = LEFT;
			monsterOne.cdel *= -1;
			
		}
	}  else {
		monsterOne.worldRow = 0;
		monsterOne.worldCol = 0;

	}




	// if (monsterOne.worldCol < 0 || monsterOne.worldCol > 512) {
	// 	monsterOne.cdel *= -1;
	// }

	monsterOne.screenRow = monsterOne.worldRow - vOff;
    monsterOne.screenCol = monsterOne.worldCol - hOff;
}
void drawMonsterOne(){
	if(monsterOne.active){
	shadowOAM[119].attr0 = (ROWMASK & monsterOne.screenRow) | ATTR0_SQUARE;
	shadowOAM[119].attr1 = (COLMASK & monsterOne.screenCol) | ATTR1_SMALL;
		if (frames % 20 == 0){
			monsterOneFrameindex = (monsterOneFrameindex + 1) % 3;
			if(monsterOne.direction == LEFT){
				shadowOAM[119].attr2  = ATTR2_PALROW(0) | ATTR2_TILEID(monsterOneFrameLeft[monsterOneFrameindex], 0);

			}
			if(monsterOne.direction == RIGHT){
				shadowOAM[119].attr2  = ATTR2_PALROW(0) | ATTR2_TILEID(monsterOneFrameRight[monsterOneFrameindex], 0);
			}


		}

	}


}

void initGhost(){
	Ghost.worldCol = 400;
	Ghost.worldRow = 120;
	Ghost.height = 16;
	Ghost.width = 16;
	Ghost.cdel = 1;
	Ghost.rdel = 1;
	Ghost.active = 1;
	Ghost.direction = RIGHT;

}


void updateGhost(){
	if(Ghost.active){
		Ghost.worldCol = Ghost.worldCol + Ghost.cdel;
		Ghost.worldRow = Ghost.worldRow + Ghost.rdel;
		if ((frames % 60) == 0){
			Ghost.rdel *= -1;
		}
		if (Ghost.worldCol <= 17 ){
			Ghost.direction = RIGHT;
			Ghost.cdel *= -1;
		
		}
		if (Ghost.worldCol >= 490){
	    	Ghost.direction = LEFT;
			Ghost.cdel *= -1;
		
		}

	} else {
		Ghost.worldRow = 0;
		Ghost.worldCol = 0;
	}





	// if (monsterOne.worldCol < 0 || monsterOne.worldCol > 512) {
	// 	monsterOne.cdel *= -1;
	// }

	Ghost.screenRow = Ghost.worldRow - vOff;
    Ghost.screenCol = Ghost.worldCol - hOff;
    // Ghost.screenCol = (Ghost.worldCol>>3) - hOff;
}
void drawGhost(){
	if(Ghost.active){
	shadowOAM[118].attr0 = (ROWMASK & Ghost.screenRow) | ATTR0_SQUARE;
	shadowOAM[118].attr1 = (COLMASK & Ghost.screenCol)  | ATTR1_SMALL;
		if (frames % 20 == 0){
			ghostFramesIndex = (ghostFramesIndex + 1) % 4;
			if(Ghost.direction == LEFT){
				shadowOAM[118].attr2  = ATTR2_PALROW(0) | ATTR2_TILEID(ghostFrames[ghostFramesIndex], 2);

			}
			if(Ghost.direction == RIGHT){
				shadowOAM[118].attr2  = ATTR2_PALROW(0) | ATTR2_TILEID(ghostFrames[ghostFramesIndex], 0);
			}


		}

	}


}

void initEye(){
	Eye.worldCol = 180;
	Eye.worldRow = 200;
	Eye.height = 16;
	Eye.width = 16;
	Eye.cdel = 1;
	Eye.active = 1;
	Eye.direction = RIGHT;

}


void updateEye(){
	Eye.worldCol += Eye.cdel;
	if (Eye.worldCol < 17 ){
		Eye.direction = RIGHT;
		Eye.cdel *= -1;
		
	}
	if (Eye.worldCol > 490){
		Eye.direction = LEFT;
		Eye.cdel *= -1;
		
	}



	// if (monsterOne.worldCol < 0 || monsterOne.worldCol > 512) {
	// 	monsterOne.cdel *= -1;
	// }

	Eye.screenRow = Eye.worldRow - vOff;
    Eye.screenCol = Eye.worldCol - hOff;
}
void drawEye(){
	if(Eye.active){
	shadowOAM[122].attr0 = (ROWMASK & Eye.screenRow) | ATTR0_SQUARE;
	shadowOAM[122].attr1 = (COLMASK & Eye.screenCol) | ATTR1_SMALL;
		if (frames % 20 == 0){
			eyeFrameIndex= (eyeFrameIndex + 1) % 4;
			if(Eye.direction == LEFT){
				shadowOAM[122].attr2  = ATTR2_PALROW(0) | ATTR2_TILEID(eyeFrames[eyeFrameIndex], 2);

			}
			if(Eye.direction == RIGHT){
				shadowOAM[122].attr2  = ATTR2_PALROW(0) | ATTR2_TILEID(eyeFrames[eyeFrameIndex], 2);
			}


		}

	}


}



void initBat(){
	Bat.worldCol = 180;
	Bat.worldRow = 170;
	Bat.height = 16;
	Bat.width = 16;
	Bat.cdel = 1;
	Bat.rdel = 1;
	Bat.active = 1;
	Bat.direction = RIGHT;

}

void updateBat(){
	Bat.worldCol += Bat.cdel;
	Bat.worldRow += Bat.rdel;
	if (Bat.worldCol < 17 ){
		//Bat.direction = RIGHT;
		Bat.cdel *= -1;
		
	}
	if (Bat.worldCol > 490){
		// Bat.direction = LEFT;
		Bat.cdel *= -1;
		
	}
	if (Bat.worldRow < 5){
		Bat.rdel *=-1;
	}
	if (Bat.worldRow > 245){
		Bat.rdel *=-1;
	}
	if (Bat.worldCol > child.worldCol){
		if ((Bat.worldCol - child.worldCol) == 17){
			Bat.cdel *= -1;
		}
	}
	if (Bat.worldCol < child.worldCol){
		if ((child.worldCol - Bat.worldCol) == 30){
			Bat.rdel *= -1;
		}
	}
	





	// if (monsterOne.worldCol < 0 || monsterOne.worldCol > 512) {
	// 	monsterOne.cdel *= -1;
	// }

	Bat.screenRow = Bat.worldRow - vOff;
    Bat.screenCol = Bat.worldCol - hOff;
}
void drawBat(){
	if(Bat.active){
	shadowOAM[123].attr0 = (ROWMASK & Bat.screenRow) | ATTR0_SQUARE;
	shadowOAM[123].attr1 = (COLMASK & Bat.screenCol) | ATTR1_SMALL;
		if (frames % 4 == 0){
			batFrameIndex = (batFrameIndex + 1) % 3;
			if(Bat.direction == LEFT){
				shadowOAM[123].attr2  = ATTR2_PALROW(0) | ATTR2_TILEID(batFrames[batFrameIndex], 6);

			}
			if(Bat.direction == RIGHT){
				shadowOAM[123].attr2  = ATTR2_PALROW(0) | ATTR2_TILEID(batFrames[batFrameIndex], 6);
			}


		}
 
	} else {
		shadowOAM[17].attr0 = 0 | ATTR0_SQUARE;
		shadowOAM[17].attr1 = 150 | ATTR1_SMALL;
		shadowOAM[17].attr2  = ATTR2_PALROW(0) | ATTR2_TILEID(12, 6);
		
	}


}





// Draw child walking
void drawChild(){
	shadowOAM[70].attr0 = (ROWMASK & child.screenRow) | ATTR0_SQUARE;
	shadowOAM[70].attr1 = (COLMASK & child.screenCol) | ATTR1_SMALL;
	if (frames % 10 == 0) {
		if (moveFlag){
			childFrameIndex = (childFrameIndex + 1) % 2;
		}
	shadowOAM[70].attr2  = ATTR2_PALROW(0) | ATTR2_TILEID(childFrame[childFrameIndex], 0);
	}
	moveFlag = 0;

}

void updateChild(){
	if(frames % 1 == 0){
		if BUTTON_HELD(BUTTON_RIGHT){
			if ((child.worldCol + child.width) < 512){


	

				if (neigborhoodCMtwoBitmap[OFFSET(child.worldCol + child.width,child.worldRow + 15 , 512)] && 
    				neigborhoodCMtwoBitmap[OFFSET(child.worldCol + child.width,child.worldRow + child.height - 1, 512)]) {
    				child.worldCol += child.cdel;
					moveFlag = 1;
    			}

			
				if ((child.worldCol + SCREENWIDTH - child.screenCol < 512) && (child.screenCol + child.width) >= SCREENWIDTH / 2 ){
					hOff += child.cdel;
					// hOffOne += 1;
				}
			}

			child.direction = RIGHT;
		} 
		if BUTTON_HELD(BUTTON_LEFT){
			if(child.worldCol > 0){

				moveFlag = 1;

			if (neigborhoodCMtwoBitmap[OFFSET(child.worldCol - 1 ,child.worldRow +15, 512)] && 
    				neigborhoodCMtwoBitmap[OFFSET(child.worldCol - 1,child.worldRow + child.height , 512)]) {
    			child.worldCol -= child.cdel;
				}
    		
			
				if(hOff+10 > 0 && child.screenCol <= SCREENWIDTH/2){
				hOff -= child.cdel;
				// hOffOne -= 1;

				}
			
			child.direction = LEFT;
			}	
		}


		    // 		if (collisionmapBitmap[OFFSET(pikachu.worldCol, pikachu.worldRow - 1, MAPWIDTH)] && 
    		// 		collisionmapBitmap[OFFSET(pikachu.worldCol + pikachu.width - 1, pikachu.worldRow - 1, MAPWIDTH)]) {

    		// 	pikachu.worldRow -= 1; 
    		// }
		if BUTTON_HELD(BUTTON_UP){
			if (child.worldRow > 75){

						
		
				
				if (neigborhoodCMtwoBitmap[OFFSET(child.worldCol, child.worldRow +7, 512)] && 
    				neigborhoodCMtwoBitmap[OFFSET(child.worldCol + child.width - 1, child.worldRow +10, 512)]) {
						
				moveFlag = 1;
    			child.worldRow -= child.rdel; 
    			}

				if (vOff > 0 && child.screenRow <= SCREENHEIGHT / 2){
					vOff-=child.cdel;
				
					vOffOne -= child.cdel;
				}
				
			
		
	
				child.direction = UP;

			}
			
		
				
			
		}
		if BUTTON_HELD(BUTTON_DOWN){
			if (child.worldRow + child.height < worldHeigth){
				child.worldRow +=child.rdel;
			    moveFlag = 1;
				if (!(neigborhoodCMtwoBitmap[OFFSET(child.worldCol, child.worldRow + child.height, 512)] && 
    				neigborhoodCMtwoBitmap[OFFSET(child.worldCol + child.width - 1, child.worldRow + child.height, 512)])) {
    				child.worldRow -= child.rdel;
    			}
			
				if ((child.worldRow + SCREENHEIGHT - child.screenRow < 256) && ((child.screenRow + child.height - 1) >= SCREENHEIGHT / 2 )){
					vOff+=child.cdel;
					vOffOne+=child.cdel;
					star.worldRow--;
					
		
					
				}
			
			
			}
		
			child.direction = DOWN;
		}
		if (collision(child.worldCol,child.worldRow,child.width,child.height,Ghost.worldCol,Ghost.worldRow,Ghost.width,Ghost.height) && Ghost.active && (frames - hitTimer) > 80){
			heartCounter--;
			playSoundB(ouch,OUCHLEN,0);
			hitTimer = frames;
			// play ouch sound
			// make player blink
			hideSprites();
			
		} if (collision(child.worldCol,child.worldRow,child.width,child.height,monsterOne.worldCol,monsterOne.worldRow,monsterOne.width,monsterOne.height) && monsterOne.active && (frames - hitTimer) > 80){
			heartCounter--;
			playSoundB(ouch,OUCHLEN,0);
			hitTimer = frames;
			// play ouch sound
			hideSprites();
		}

		if (collision(child.worldCol,child.worldRow,child.width,child.height,skull.worldCol,skull.worldRow,skull.width,skull.height)){
			skull.active = 0;
			haskey = 1;
		}
		if (collision(child.worldCol-11,child.worldRow +7,child.width,child.height,vine.worldCol,vine.worldRow + 7,vine.width,vine.height) && vineFrameIndex == 4 && (frames - hitTimer) > 80){
			heartCounter--;
			playSoundB(ouch,OUCHLEN,0);
			hitTimer = frames;
			hideSprites();
		}
		if (collision(child.worldCol-11,child.worldRow +7,child.width,child.height,vineLeft.worldCol,vineLeft.worldRow + 7,vineLeft.width,vineLeft.height) && vineFrameIndexLeft == 4 && (frames - hitTimer) > 80){
			heartCounter--;
			playSoundB(ouch,OUCHLEN,0);
			hitTimer = frames;
			hideSprites();
		}
		if(collision(gate.worldCol,gate.worldRow,gate.width,gate.height,child.worldCol,child.worldRow,child.width,child.height)){
			gate.active = 1;
			if (!haskey){
				child.worldCol--;
			}
		}else {
			gate.active = 0;
		}
		if(collision(child.worldCol, child.worldRow, child.width, child.height, Bat.worldCol, Bat.worldRow, Bat.width,Bat.height)){
			hasBat = 1;
			Bat.active = 0;
			shadowOAM[123].attr0 = ATTR0_HIDE;
		}
		if (child.worldCol> 450){
			if ((child.worldRow > 160) && (child.worldRow < 170)){
				child.worldRow-=1;
			}

		}
		if((child.worldCol > 450) && (child.worldRow > 180) && (hasBat)){
			winFlag=1;
		}

		if (BUTTON_PRESSED(BUTTON_R)){
			door.active = 1;
			hideSprites();
		}


		
		

	}
	child.screenRow = child.worldRow - vOff;
    child.screenCol = child.worldCol - hOff;

}


void initCandy(){
	
		candyPieceCounter = 3;
		candyPiece.screenRow = child.screenRow;
		candyPiece.screenCol = child.screenCol;
		candyPiece.direction = child.direction;
		candyPiece.width = 8;
		candyPiece.height = 8;
		candyPiece.cdel = 1;
		candyPiece.rdel = 1;
		candyPiece.active = 0;
		candyPiece.erased = 0;


}

void throwCandy(){
	
	if (BUTTON_PRESSED(BUTTON_L) && (!(candyPiece.active)) && (candyPieceCounter)) {
		candyPieceCounter--;
		count = frames;
		candyPiece.active = 1;
		candyPiece.worldCol = child.worldCol;
		candyPiece.worldRow = child.worldRow+3;
		candyPiece.direction = child.direction;

	}

}
		
	

	






void updateCandy(){

	if((frames - count) == 50){
		shadowOAM[80].attr0 = ATTR0_HIDE;
		candyPiece.active = 0;
	}
	//  c->worldCol = child.screenCol;
	//  c->worldRow = child.screenRow;

	if (candyPiece.active){
		if(candyPiece.direction == UP){
				candyPiece.worldRow -= 2;
			}
		if (candyPiece.direction== DOWN){
				candyPiece.worldRow += 2;
			}
		if (candyPiece.direction == LEFT){
				candyPiece.worldCol -= 2;
			}
		if (candyPiece.direction == RIGHT){
				candyPiece.worldCol += 2;
			}

		if(collision(candyPiece.worldCol,candyPiece.worldRow+10,candyPiece.width,candyPiece.height,monsterOne.worldCol,monsterOne.worldRow,monsterOne.width,monsterOne.height)){
			candyPiece.active = 0;
			monsterOne.active = 0;
			shadowOAM[119].attr0 = ATTR0_HIDE;
			monsterKillCount ++;
		}
		if(collision(candyPiece.worldCol,candyPiece.worldRow,candyPiece.width,candyPiece.height,Ghost.worldCol,Ghost.worldRow,Ghost.width,Ghost.height)){
			candyPiece.active = 0;
			Ghost.active = 0;
			shadowOAM[118].attr0 = ATTR0_HIDE;
			monsterKillCount++;
		}

		

	}
	candyPiece.screenRow = candyPiece.worldRow - vOff;
	candyPiece.screenCol = candyPiece.worldCol - hOff;
}

void drawCandy(){
	if (candyPiece.active){
		shadowOAM[80].attr0 = (ROWMASK & candyPiece.screenRow) | ATTR0_SQUARE;
		shadowOAM[80].attr1 = (COLMASK & candyPiece.screenCol) | ATTR1_SMALL;
		shadowOAM[80].attr2  = ATTR2_PALROW(0) | ATTR2_TILEID(4, 0);
	} 



}
 

void drawHearts(){
	if (heartCounter == 3){
	shadowOAM[90].attr0 = 0 | ATTR0_SQUARE;
	shadowOAM[90].attr1 = 205 | ATTR1_SMALL;
	shadowOAM[90].attr2  = ATTR2_PALROW(0) | ATTR2_TILEID(26, 0);

	shadowOAM[91].attr0 = 0 | ATTR0_SQUARE;
	shadowOAM[91].attr1 = 215 | ATTR1_SMALL;
	shadowOAM[91].attr2  = ATTR2_PALROW(0) | ATTR2_TILEID(26, 0);

	shadowOAM[92].attr0 = 0 | ATTR0_SQUARE;
	shadowOAM[92].attr1 = 225 | ATTR1_SMALL;
	shadowOAM[92].attr2  = ATTR2_PALROW(0) | ATTR2_TILEID(26, 0);
	

	}
	if (heartCounter == 2){
	shadowOAM[91].attr0 = 0 | ATTR0_SQUARE;
	shadowOAM[91].attr1 = 215 | ATTR1_SMALL;
	shadowOAM[91].attr2  = ATTR2_PALROW(0) | ATTR2_TILEID(26, 0);

	shadowOAM[92].attr0 = 0 | ATTR0_SQUARE;
	shadowOAM[92].attr1 = 225 | ATTR1_SMALL;
	shadowOAM[92].attr2  = ATTR2_PALROW(0) | ATTR2_TILEID(26, 0);

	}
	if (heartCounter == 1){
	shadowOAM[92].attr0 = 0 | ATTR0_SQUARE;
	shadowOAM[92].attr1 = 225 | ATTR1_SMALL;
	shadowOAM[92].attr2  = ATTR2_PALROW(0) | ATTR2_TILEID(26, 0);

	}
}

void drawCandyCounter(){
	if (candyPieceCounter == 3){
		shadowOAM[55].attr0 = 0 | ATTR0_SQUARE;
		shadowOAM[55].attr1 = 0 | ATTR1_SMALL;
		shadowOAM[55].attr2  = ATTR2_PALROW(0) | ATTR2_TILEID(10, 8);

		shadowOAM[56].attr0 = 0 | ATTR0_SQUARE;
		shadowOAM[56].attr1 = 15 | ATTR1_SMALL;
		shadowOAM[56].attr2  = ATTR2_PALROW(0) | ATTR2_TILEID(12, 8);

		shadowOAM[57].attr0 = 0 | ATTR0_SQUARE;
		shadowOAM[57].attr1 = 30 | ATTR1_SMALL;
		shadowOAM[57].attr2  = ATTR2_PALROW(0) | ATTR2_TILEID(8, 8);
	} else if(candyPieceCounter == 2) {
		shadowOAM[57].attr0 = ATTR0_HIDE;
		shadowOAM[55].attr0 = 0 | ATTR0_SQUARE;
		shadowOAM[55].attr1 = 0 | ATTR1_SMALL;
		shadowOAM[55].attr2  = ATTR2_PALROW(0) | ATTR2_TILEID(10, 8);

		shadowOAM[56].attr0 = 0 | ATTR0_SQUARE;
		shadowOAM[56].attr1 = 15 | ATTR1_SMALL;
		shadowOAM[56].attr2  = ATTR2_PALROW(0) | ATTR2_TILEID(12, 8);

	} else if(candyPieceCounter == 1) {
		shadowOAM[56].attr0 = ATTR0_HIDE;
		shadowOAM[55].attr0 = 0 | ATTR0_SQUARE;
		shadowOAM[55].attr1 = 0 | ATTR1_SMALL;
		shadowOAM[55].attr2  = ATTR2_PALROW(0) | ATTR2_TILEID(10, 8);
	} else {
		shadowOAM[55].attr0 = ATTR0_HIDE;
	}
}
void initDoor(){
	door.worldCol = 115;
	door.worldRow = 78;
	door.height = 16;
	door.width = 16;
	door.cdel = 1;
	door.active = 0;

}


void initdoorCandy(){
	doorOneCandy.worldCol = 120;
	doorOneCandy.worldRow = 68;
	doorOneCandy.height = 16;
	doorOneCandy.width = 16;
	doorOneCandy.cdel = 1;
	doorOneCandy.active = 0;

}

void updateDoor(){

	if (child.worldCol <= 115 && child.worldCol >= 105 && child.worldRow <= 84){
		candyPieceCounter = 3;

		door.active = 1;
		doorOneCandy.active = 1;



	} else {
		door.active = 0;
		doorOneCandy.active = 0;


	}

	door.screenRow = door.worldRow - vOff;
    door.screenCol = door.worldCol - hOff;
	doorOneCandy.screenRow = doorOneCandy.worldRow - vOff;
	doorOneCandy.screenCol = doorOneCandy.worldCol - hOff;



}

void drawDoor(){
	if (door.active){

		shadowOAM[79].attr0 = door.screenRow | ATTR0_SQUARE;
		shadowOAM[79].attr1 = door.screenCol | ATTR1_SMALL;
		shadowOAM[79].attr2  = ATTR2_PALROW(0) | ATTR2_TILEID(0, 2);

		shadowOAM[34].attr0 = doorOneCandy.screenRow | ATTR0_WIDE;
		shadowOAM[34].attr1 = doorOneCandy.screenCol | ATTR1_MEDIUM;
		shadowOAM[34].attr2  = ATTR2_PALROW(0) | ATTR2_TILEID(8, 24);
		

	} else if (!(door.active)){
		shadowOAM[79].attr0 = ATTR0_HIDE;
		shadowOAM[34].attr0 = ATTR0_HIDE;

		

	}


}


void initDoorTwo(){
	doorTwo.worldCol = 260;
	doorTwo.worldRow = 20;
	doorTwo.height = 64;
	doorTwo.width = 64;
	doorTwo.cdel = 1;
	doorTwo.active = 0;

}

void updateDoorTwo(){

	if (child.worldCol <= 250 && child.worldCol >= 240 && child.worldRow <= 104){
	

		doorTwo.active = 1;



	} else {
		doorTwo.active = 0;


	}

	doorTwo.screenRow = doorTwo.worldRow - vOff;
    doorTwo.screenCol = doorTwo.worldCol - hOff;



}

void drawDoorTwo(){

		shadowOAM[81].attr0 = (ROWMASK & doorTwo.screenRow) | ATTR0_SQUARE;
		shadowOAM[81].attr1 = (COLMASK & doorTwo.screenCol) | ATTR1_LARGE;
	if (doorTwo.active){
		shadowOAM[81].attr2  = ATTR2_PALROW(0) | ATTR2_TILEID(0, 6);



	} else if (!(doorTwo.active)){

		shadowOAM[81].attr0 = ATTR0_HIDE;

	}


}

// void initStars(){
// 	star.worldCol = starCol[1];
// 	star.worldRow = starRow[1];

// }

// void updateStars(){
	
// 		if(starCycle){
// 			starPosition = (starPosition + 1) % 3;
// 			star.worldCol = starCol[starPosition];
// 			star.worldRow = starRow[starPosition];
			
// 		}

// 	star.screenRow = star.worldRow;
//     star.screenCol = star.worldCol;
	
// }

// void drawStars(){
// 	if(frames % 16 == 0){
// 	starFrameIndex = (starFrameIndex + 1) % 11;
// 	shadowOAM[1].attr0 = (ROWMASK & star.screenRow) | ATTR0_SQUARE;
// 	shadowOAM[1].attr1 = (COLMASK & star.screenCol) | ATTR1_SMALL;
// 	shadowOAM[1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(starFrames[starFrameIndex],4);
// 	}
				
// 	if (!starFrameIndex){
// 	starCycle = 1;
			
// 	} else{
// 		starCycle = 0;
// 	}

// }

void initSkull(){
		// skull.screenRow = 200;
		// skull.screenCol = 200;
		skull.worldCol = 10;
		skull.worldRow = 200;
		skull.width = 8;
		skull.height = 8;
		skull.active = 1;
		skull.erased = 0;
}

void updateSkull(){
	skull.screenCol = skull.worldCol - hOff;
	skull.screenRow = skull.worldRow - vOff;

}

void drawSkull(){
	if (skull.active && child.worldCol < 115){
	shadowOAM[2].attr0 = skull.screenRow | ATTR0_SQUARE;
	shadowOAM[2].attr1 = skull.screenCol | ATTR1_SMALL;
	shadowOAM[2].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(12,4);

	} else if(haskey){

	// shadowOAM[2].attr0 = ATTR0_HIDE;		
	shadowOAM[2].attr0 = 0 | ATTR0_SQUARE;
	shadowOAM[2].attr1 = 170 | ATTR1_SMALL;
	shadowOAM[2].attr2  = ATTR2_PALROW(0) | ATTR2_TILEID(12, 4);
	}


}

void initVine(){
		vine.worldCol = 300;
		vine.worldRow = 200;
		vine.width = 8;
		vine.height = 8;
		vine.active = 1;
		vine.erased = 0;

}

void updateVine(){
	vine.screenCol = vine.worldCol - hOff;
	vine.screenRow = vine.worldRow - vOff;
}

void drawVine(){
		shadowOAM[3].attr0 = vine.screenRow | ATTR0_SQUARE;
		shadowOAM[3].attr1 = vine.screenCol | ATTR1_SMALL;
	if (frames % 20 == 0){

		if (vine.active){
		vineFrameIndex = (vineFrameIndex + 1) % 6;
		shadowOAM[3].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(vineFrame[vineFrameIndex],4);
		}

	}

}

void initVineLeft(){
		vineLeft.worldCol = 390;
		vineLeft.worldRow = 215;
		vineLeft.width = 8;
		vineLeft.height = 8;
		vineLeft.active = 1;
		vineLeft.erased = 0;

}

void updateVineLeft(){
	vineLeft.screenCol = vineLeft.worldCol - hOff;
	vineLeft.screenRow = vineLeft.worldRow - vOff;
}

void drawVineLeft(){
		shadowOAM[4].attr0 = vineLeft.screenRow | ATTR0_SQUARE;
		shadowOAM[4].attr1 = vineLeft.screenCol | ATTR1_SMALL;
	if (frames % 20 == 0){

		if (vineLeft.active){
		vineFrameIndexLeft = (vineFrameIndexLeft + 1) % 7;
		shadowOAM[4].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(vineFrameLeft[vineFrameIndexLeft],4);
		}

	}

}


void initGate(){
		gate.worldCol = 200;
		gate.worldRow = 200;
		gate.width = 8;
		gate.height = 8;
		gate.active = 0;
		gate.erased = 0;

}

void updateGate(){
	gate.screenCol = gate.worldCol - hOff;
	gate.screenRow = gate.worldRow - vOff;
}

void drawGate(){
		if(child.worldCol < 300){
			shadowOAM[7].attr0 = gate.screenRow | ATTR0_SQUARE;
			shadowOAM[7].attr1 = gate.screenCol | ATTR1_SMALL;

			if (haskey && gate.active){
			shadowOAM[7].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(10,6);
			} else if (!(gate.active)){

			shadowOAM[7].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(8,6);
			}
		} else{
			shadowOAM[7].attr0 = ATTR0_HIDE;
		}
}

void initDoorThree(){
	doorThree.worldCol = 355;
	doorThree.worldRow = 20;
	doorThree.height = 64;
	doorThree.width = 64;
	doorThree.cdel = 1;
	doorThree.active = 0;

}

void updateDoorThree(){

	if (child.worldCol <= 355 && child.worldCol >= 340 && child.worldRow <= 86){
	

		doorThree.active = 1;



	} else {
		doorThree.active = 0;


	}

	doorThree.screenRow = doorThree.worldRow - vOff;
    doorThree.screenCol = doorThree.worldCol - hOff;



}

void drawDoorThree(){

		shadowOAM[82].attr0 = (ROWMASK & doorThree.screenRow) | ATTR0_SQUARE;
		shadowOAM[82].attr1 = (COLMASK & doorThree.screenCol) | ATTR1_LARGE;
	if (doorThree.active){
		shadowOAM[82].attr2  = ATTR2_PALROW(0) | ATTR2_TILEID(0, 14);



	} else if (!(doorThree.active)){

		shadowOAM[82].attr0 = ATTR0_HIDE;

	}


}

void initDoorFour(){
	doorFour.worldCol = 440;
	doorFour.worldRow = 20;
	doorFour.height = 64;
	doorFour.width = 64;
	doorFour.cdel = 1;
	doorFour.active = 0;

}

void updateDoorFour(){

	if (child.worldCol <= 440 && child.worldCol >= 425 && child.worldRow <= 86){
	

		doorFour.active = 1;



	} else {
		doorFour.active = 0;


	}

	doorFour.screenRow = doorFour.worldRow - vOff;
    doorFour.screenCol = doorFour.worldCol - hOff;



}

void drawDoorFour(){

		shadowOAM[83].attr0 = (ROWMASK & doorFour.screenRow) | ATTR0_SQUARE;
		shadowOAM[83].attr1 = (COLMASK & doorFour.screenCol) | ATTR1_LARGE;
	if (doorFour.active){
		shadowOAM[83].attr2  = ATTR2_PALROW(0) | ATTR2_TILEID(0, 22);



	} else if (!(doorFour.active)){

		shadowOAM[83].attr0 = ATTR0_HIDE;

	}


}



