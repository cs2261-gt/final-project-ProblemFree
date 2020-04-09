
//{{BLOCK(crystalbg)

//======================================================================
//
//	crystalbg, 240x160@8, 
//	+ palette 256 entries, not compressed
//	+ 16 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 30x20 
//	Total size: 512 + 1024 + 1200 = 2736
//
//	Time-stamp: 2020-04-08, 19:36:02
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_CRYSTALBG_H
#define GRIT_CRYSTALBG_H

#define crystalbgTilesLen 1024
extern const unsigned short crystalbgTiles[512];

#define crystalbgMapLen 1200
extern const unsigned short crystalbgMap[600];

#define crystalbgPalLen 512
extern const unsigned short crystalbgPal[256];

#endif // GRIT_CRYSTALBG_H

//}}BLOCK(crystalbg)
