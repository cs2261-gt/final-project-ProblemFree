
//{{BLOCK(gardenbg)

//======================================================================
//
//	gardenbg, 240x160@8, 
//	+ palette 256 entries, not compressed
//	+ 15 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 30x20 
//	Total size: 512 + 960 + 1200 = 2672
//
//	Time-stamp: 2020-04-08, 19:20:49
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GARDENBG_H
#define GRIT_GARDENBG_H

#define gardenbgTilesLen 960
extern const unsigned short gardenbgTiles[480];

#define gardenbgMapLen 1200
extern const unsigned short gardenbgMap[600];

#define gardenbgPalLen 512
extern const unsigned short gardenbgPal[256];

#endif // GRIT_GARDENBG_H

//}}BLOCK(gardenbg)
