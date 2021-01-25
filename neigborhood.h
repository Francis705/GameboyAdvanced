
//{{BLOCK(neigborhood)

//======================================================================
//
//	neigborhood, 512x256@8, 
//	+ palette 32 entries, not compressed
//	+ 528 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 64 + 33792 + 4096 = 37952
//
//	Time-stamp: 2020-04-27, 15:33:28
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_NEIGBORHOOD_H
#define GRIT_NEIGBORHOOD_H

#define neigborhoodTilesLen 33792
extern const unsigned short neigborhoodTiles[16896];

#define neigborhoodMapLen 4096
extern const unsigned short neigborhoodMap[2048];

#define neigborhoodPalLen 64
extern const unsigned short neigborhoodPal[32];

#endif // GRIT_NEIGBORHOOD_H

//}}BLOCK(neigborhood)
