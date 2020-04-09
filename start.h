
//{{BLOCK(start)

//======================================================================
//
//	start, 240x160@8, 
//	+ palette 256 entries, not compressed
//	+ 601 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 30x20 
//	Total size: 512 + 38464 + 1200 = 40176
//
//	Time-stamp: 2020-04-08, 19:00:57
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_START_H
#define GRIT_START_H

#define startTilesLen 38464
extern const unsigned short startTiles[19232];

#define startMapLen 1200
extern const unsigned short startMap[600];

#define startPalLen 512
extern const unsigned short startPal[256];

#endif // GRIT_START_H

//}}BLOCK(start)
