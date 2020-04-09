
//{{BLOCK(librarybg)

//======================================================================
//
//	librarybg, 240x160@8, 
//	+ palette 256 entries, not compressed
//	+ 15 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 30x20 
//	Total size: 512 + 960 + 1200 = 2672
//
//	Time-stamp: 2020-04-08, 19:12:12
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LIBRARYBG_H
#define GRIT_LIBRARYBG_H

#define librarybgTilesLen 960
extern const unsigned short librarybgTiles[480];

#define librarybgMapLen 1200
extern const unsigned short librarybgMap[600];

#define librarybgPalLen 512
extern const unsigned short librarybgPal[256];

#endif // GRIT_LIBRARYBG_H

//}}BLOCK(librarybg)
