
//{{BLOCK(librarybg)

//======================================================================
//
//	librarybg, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 288 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 9216 + 2048 = 11776
//
//	Time-stamp: 2020-04-29, 05:07:02
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LIBRARYBG_H
#define GRIT_LIBRARYBG_H

#define librarybgTilesLen 9216
extern const unsigned short librarybgTiles[4608];

#define librarybgMapLen 2048
extern const unsigned short librarybgMap[1024];

#define librarybgPalLen 512
extern const unsigned short librarybgPal[256];

#endif // GRIT_LIBRARYBG_H

//}}BLOCK(librarybg)
