
//{{BLOCK(diningbg)

//======================================================================
//
//	diningbg, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 20 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 640 + 2048 = 3200
//
//	Time-stamp: 2020-04-08, 21:35:11
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_DININGBG_H
#define GRIT_DININGBG_H

#define diningbgTilesLen 640
extern const unsigned short diningbgTiles[320];

#define diningbgMapLen 2048
extern const unsigned short diningbgMap[1024];

#define diningbgPalLen 512
extern const unsigned short diningbgPal[256];

#endif // GRIT_DININGBG_H

//}}BLOCK(diningbg)
