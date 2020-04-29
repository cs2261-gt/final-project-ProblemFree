
//{{BLOCK(guideScreen)

//======================================================================
//
//	guideScreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 272 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 8704 + 2048 = 11264
//
//	Time-stamp: 2020-04-29, 06:22:16
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GUIDESCREEN_H
#define GRIT_GUIDESCREEN_H

#define guideScreenTilesLen 8704
extern const unsigned short guideScreenTiles[4352];

#define guideScreenMapLen 2048
extern const unsigned short guideScreenMap[1024];

#define guideScreenPalLen 512
extern const unsigned short guideScreenPal[256];

#endif // GRIT_GUIDESCREEN_H

//}}BLOCK(guideScreen)
