
//{{BLOCK(guideScreen)

//======================================================================
//
//	guideScreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 273 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 8736 + 2048 = 11296
//
//	Time-stamp: 2020-04-29, 10:06:59
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GUIDESCREEN_H
#define GRIT_GUIDESCREEN_H

#define guideScreenTilesLen 8736
extern const unsigned short guideScreenTiles[4368];

#define guideScreenMapLen 2048
extern const unsigned short guideScreenMap[1024];

#define guideScreenPalLen 512
extern const unsigned short guideScreenPal[256];

#endif // GRIT_GUIDESCREEN_H

//}}BLOCK(guideScreen)
