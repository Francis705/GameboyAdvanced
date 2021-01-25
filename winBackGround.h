
//{{BLOCK(winBackGround)

//======================================================================
//
//	winBackGround, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 87 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 2784 + 2048 = 5344
//
//	Time-stamp: 2020-03-12, 13:22:46
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_WINBACKGROUND_H
#define GRIT_WINBACKGROUND_H

#define winBackGroundTilesLen 2784
extern const unsigned short winBackGroundTiles[1392];

#define winBackGroundMapLen 2048
extern const unsigned short winBackGroundMap[1024];

#define winBackGroundPalLen 512
extern const unsigned short winBackGroundPal[256];

#endif // GRIT_WINBACKGROUND_H

//}}BLOCK(winBackGround)
