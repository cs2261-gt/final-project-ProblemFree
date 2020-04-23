
//{{BLOCK(gameinstructions)

//======================================================================
//
//	gameinstructions, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 42 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 1344 + 2048 = 3904
//
//	Time-stamp: 2020-04-23, 01:13:03
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GAMEINSTRUCTIONS_H
#define GRIT_GAMEINSTRUCTIONS_H

#define gameinstructionsTilesLen 1344
extern const unsigned short gameinstructionsTiles[672];

#define gameinstructionsMapLen 2048
extern const unsigned short gameinstructionsMap[1024];

#define gameinstructionsPalLen 512
extern const unsigned short gameinstructionsPal[256];

#endif // GRIT_GAMEINSTRUCTIONS_H

//}}BLOCK(gameinstructions)
