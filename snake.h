
//{{BLOCK(snake)

//======================================================================
//
//	snake, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 122 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 32x32 
//	Total size: 512 + 3904 + 2048 = 6464
//
//	Time-stamp: 2020-03-11, 10:27:07
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_SNAKE_H
#define GRIT_SNAKE_H

#define snakeTilesLen 3904
extern const unsigned short snakeTiles[1952];

#define snakeMapLen 2048
extern const unsigned short snakeMap[1024];

#define snakePalLen 512
extern const unsigned short snakePal[256];

#endif // GRIT_SNAKE_H

//}}BLOCK(snake)
