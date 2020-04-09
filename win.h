
//{{BLOCK(win)

//======================================================================
//
//	win, 240x160@8, 
//	+ palette 256 entries, not compressed
//	+ 42 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 30x20 
//	Total size: 512 + 2688 + 1200 = 4400
//
//	Time-stamp: 2020-04-08, 19:01:37
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_WIN_H
#define GRIT_WIN_H

#define winTilesLen 2688
extern const unsigned short winTiles[1344];

#define winMapLen 1200
extern const unsigned short winMap[600];

#define winPalLen 512
extern const unsigned short winPal[256];

#endif // GRIT_WIN_H

//}}BLOCK(win)
