
//{{BLOCK(chessbg)

//======================================================================
//
//	chessbg, 240x160@8, 
//	+ palette 256 entries, not compressed
//	+ 30 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 30x20 
//	Total size: 512 + 1920 + 1200 = 3632
//
//	Time-stamp: 2020-04-08, 19:09:25
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_CHESSBG_H
#define GRIT_CHESSBG_H

#define chessbgTilesLen 1920
extern const unsigned short chessbgTiles[960];

#define chessbgMapLen 1200
extern const unsigned short chessbgMap[600];

#define chessbgPalLen 512
extern const unsigned short chessbgPal[256];

#endif // GRIT_CHESSBG_H

//}}BLOCK(chessbg)
