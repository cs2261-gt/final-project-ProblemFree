
//{{BLOCK(prisonbg)

//======================================================================
//
//	prisonbg, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 14 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 448 + 2048 = 3008
//
//	Time-stamp: 2020-04-08, 21:37:00
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_PRISONBG_H
#define GRIT_PRISONBG_H

#define prisonbgTilesLen 448
extern const unsigned short prisonbgTiles[224];

#define prisonbgMapLen 2048
extern const unsigned short prisonbgMap[1024];

#define prisonbgPalLen 512
extern const unsigned short prisonbgPal[256];

#endif // GRIT_PRISONBG_H

//}}BLOCK(prisonbg)
