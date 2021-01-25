
//{{BLOCK(Pumpkin)

//======================================================================
//
//	Pumpkin, 256x256@4, 
//	+ palette 16 entries, not compressed
//	+ 139 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 32 + 4448 + 2048 = 6528
//
//	Time-stamp: 2020-04-28, 16:06:14
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_PUMPKIN_H
#define GRIT_PUMPKIN_H

#define PumpkinTilesLen 4448
extern const unsigned short PumpkinTiles[2224];

#define PumpkinMapLen 2048
extern const unsigned short PumpkinMap[1024];

#define PumpkinPalLen 32
extern const unsigned short PumpkinPal[16];

#endif // GRIT_PUMPKIN_H

//}}BLOCK(Pumpkin)
