
//{{BLOCK(LoseScreen)

//======================================================================
//
//	LoseScreen, 512x256@4, 
//	+ palette 16 entries, not compressed
//	+ 224 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 32 + 7168 + 4096 = 11296
//
//	Time-stamp: 2020-04-15, 20:51:41
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LOSESCREEN_H
#define GRIT_LOSESCREEN_H

#define LoseScreenTilesLen 7168
extern const unsigned short LoseScreenTiles[3584];

#define LoseScreenMapLen 4096
extern const unsigned short LoseScreenMap[2048];

#define LoseScreenPalLen 32
extern const unsigned short LoseScreenPal[16];

#endif // GRIT_LOSESCREEN_H

//}}BLOCK(LoseScreen)
