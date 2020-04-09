
//{{BLOCK(pause)

//======================================================================
//
//	pause, 240x160@8, 
//	+ palette 256 entries, not compressed
//	+ 47 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 30x20 
//	Total size: 512 + 3008 + 1200 = 4720
//
//	Time-stamp: 2020-04-08, 19:01:19
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_PAUSE_H
#define GRIT_PAUSE_H

#define pauseTilesLen 3008
extern const unsigned short pauseTiles[1504];

#define pauseMapLen 1200
extern const unsigned short pauseMap[600];

#define pausePalLen 512
extern const unsigned short pausePal[256];

#endif // GRIT_PAUSE_H

//}}BLOCK(pause)
