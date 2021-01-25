
// Fuit struct
typedef struct {
	int width;
    int height;
    int tileRow;
	int tileCol;
	int active;
	int rdel;
	int cdel;
    int screenRow;
    int screenCol;
    int worldRow;
    int worldCol;
	int direction;

} Child;

typedef struct {
	int screenRow;
	int screenCol;
	int worldRow;
	int worldCol;
} Star;

typedef struct{
	int row;
	int col;
	int width;
    int height;
    int tileRow;
	int tileCol;
	int active;
	int rdel;
	int cdel;
    int screenRow;
    int screenCol;
    int worldRow;
    int worldCol;
	int direction;
	int erased;
	int place;
} Candy;
extern int monsterKillCount;
extern int winFlag;
extern Child child;
extern int hOff;
extern int vOff;
extern int vOffOne;
extern int hOffOne;
extern int heartCounter;
// Constants
#define candyStartAmount 5
#define snakeSections 30



extern int pass;

extern int superSpeed;


extern Candy candy[candyStartAmount];

// Custom Game Colors
#define NUMCOLORS 6
// This does an enum trick to make them the last indeces of the palette
enum {BLACKID=(256-NUMCOLORS), BLUEID, GREENID, REDID, WHITEID, GRAYID};
extern unsigned short colors[NUMCOLORS];

// Prototypes
void initGame();
void updateGame();
void drawGame();
void initChild();
void drawChild();
void updateChild();
void throwCandy();
void initCandy();
void drawCandy();
void updateCandy();
void updateMonsterOne();
void drawMonsterOne();
void initMonsterOne();
void updateGhost();
void drawGhost();
void initGhost();
void initEye();
void updateEye();
void drawEye();
void drawBat();
void updateBat();
void initBat();
void drawHearts();
void updateDoor();
void initDoor();
void drawDoor();
void initStars();
void updateStars();
void drawStars();
void initSkull();
void updateSkull();
void drawSkull();
void initVine();
void updateVine();
void drawVine();
void initVineLeft();
void updateVineLeft();
void drawVineLeft();
void updateDoorTwo();
void initDoorTwo();
void drawDoorTwo();
void initGate();
void updateGate();
void drawGate();
void initDoorThree();
void drawDoorThree();
void updateDoorThree();
void initDoorFour();
void drawDoorFour();
void updateDoorFour();
void drawCandyCounter();
void initdoorCandy();
