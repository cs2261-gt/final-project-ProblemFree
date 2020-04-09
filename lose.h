
//{{BLOCK(lose)

//======================================================================
//
//	lose, 240x160@8, 
//	+ palette 256 entries, not compressed
//	+ 43 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 30x20 
//	Total size: 512 + 2752 + 1200 = 4464
//
//	Time-stamp: 2020-04-08, 19:00:36
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LOSE_H
#define GRIT_LOSE_H

#define loseTilesLen 2752
extern const unsigned short loseTiles[1376];

#define loseMapLen 1200
extern const unsigned short loseMap[600];

#define losePalLen 512
extern const unsigned short losePal[256];

#endif // GRIT_LOSE_H

//}}BLOCK(lose)
