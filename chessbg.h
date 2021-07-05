
//{{BLOCK(chessbg)

//======================================================================
//
//	chessbg, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 189 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 6048 + 2048 = 8608
//
//	Time-stamp: 2020-04-29, 03:33:33
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_CHESSBG_H
#define GRIT_CHESSBG_H

#define chessbgTilesLen 6048
extern const unsigned short chessbgTiles[3024];

#define chessbgMapLen 2048
extern const unsigned short chessbgMap[1024];

#define chessbgPalLen 512
extern const unsigned short chessbgPal[256];

#endif // GRIT_CHESSBG_H

//}}BLOCK(chessbg)
