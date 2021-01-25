
//{{BLOCK(MoonSky)

//======================================================================
//
//	MoonSky, 256x256@4, 
//	+ palette 32 entries, not compressed
//	+ 48 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 64 + 1536 + 2048 = 3648
//
//	Time-stamp: 2020-04-15, 19:56:40
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_MOONSKY_H
#define GRIT_MOONSKY_H

#define MoonSkyTilesLen 1536
extern const unsigned short MoonSkyTiles[768];

#define MoonSkyMapLen 2048
extern const unsigned short MoonSkyMap[1024];

#define MoonSkyPalLen 64
extern const unsigned short MoonSkyPal[32];

#endif // GRIT_MOONSKY_H

//}}BLOCK(MoonSky)
