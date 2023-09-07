
//{{BLOCK(instructionsScreen)

//======================================================================
//
//	instructionsScreen, 256x768@4, 
//	+ palette 256 entries, not compressed
//	+ 632 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x96 
//	Total size: 512 + 20224 + 6144 = 26880
//
//	Time-stamp: 2022-04-24, 17:05:33
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_INSTRUCTIONSSCREEN_H
#define GRIT_INSTRUCTIONSSCREEN_H

#define instructionsScreenTilesLen 20224
extern const unsigned short instructionsScreenTiles[10112];

#define instructionsScreenMapLen 6144
extern const unsigned short instructionsScreenMap[3072];

#define instructionsScreenPalLen 512
extern const unsigned short instructionsScreenPal[256];

#endif // GRIT_INSTRUCTIONSSCREEN_H

//}}BLOCK(instructionsScreen)
