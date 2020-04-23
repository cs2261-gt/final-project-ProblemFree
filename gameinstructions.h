
//{{BLOCK(gameinstructions)

//======================================================================
//
//	gameinstructions, 256x256@8, 
//	+ palette 256 entries, not compressed
//	+ 42 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 2688 + 2048 = 5248
//
//	Time-stamp: 2020-04-21, 12:57:41
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GAMEINSTRUCTIONS_H
#define GRIT_GAMEINSTRUCTIONS_H

#define gameinstructionsTilesLen 2688
extern const unsigned short gameinstructionsTiles[1344];

#define gameinstructionsMapLen 2048
extern const unsigned short gameinstructionsMap[1024];

#define gameinstructionsPalLen 512
extern const unsigned short gameinstructionsPal[256];

#endif // GRIT_GAMEINSTRUCTIONS_H

//}}BLOCK(gameinstructions)
