
//{{BLOCK(gardenbg)

//======================================================================
//
//	gardenbg, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 15 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 480 + 2048 = 3040
//
//	Time-stamp: 2020-04-08, 21:35:29
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GARDENBG_H
#define GRIT_GARDENBG_H

#define gardenbgTilesLen 480
extern const unsigned short gardenbgTiles[240];

#define gardenbgMapLen 2048
extern const unsigned short gardenbgMap[1024];

#define gardenbgPalLen 512
extern const unsigned short gardenbgPal[256];

#endif // GRIT_GARDENBG_H

//}}BLOCK(gardenbg)
