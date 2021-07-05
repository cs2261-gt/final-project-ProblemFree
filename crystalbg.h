
//{{BLOCK(crystalbg)

//======================================================================
//
//	crystalbg, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 129 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 4128 + 2048 = 6688
//
//	Time-stamp: 2020-04-28, 15:31:41
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_CRYSTALBG_H
#define GRIT_CRYSTALBG_H

#define crystalbgTilesLen 4128
extern const unsigned short crystalbgTiles[2064];

#define crystalbgMapLen 2048
extern const unsigned short crystalbgMap[1024];

#define crystalbgPalLen 512
extern const unsigned short crystalbgPal[256];

#endif // GRIT_CRYSTALBG_H

//}}BLOCK(crystalbg)
