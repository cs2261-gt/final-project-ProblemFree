
//{{BLOCK(gardenbg)

//======================================================================
//
//	gardenbg, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 420 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 13440 + 2048 = 16000
//
//	Time-stamp: 2020-04-29, 01:44:41
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GARDENBG_H
#define GRIT_GARDENBG_H

#define gardenbgTilesLen 13440
extern const unsigned short gardenbgTiles[6720];

#define gardenbgMapLen 2048
extern const unsigned short gardenbgMap[1024];

#define gardenbgPalLen 512
extern const unsigned short gardenbgPal[256];

#endif // GRIT_GARDENBG_H

//}}BLOCK(gardenbg)
