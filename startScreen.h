
//{{BLOCK(startScreen)

//======================================================================
//
//	startScreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 114 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 3648 + 2048 = 6208
//
//	Time-stamp: 2022-04-24, 17:04:40
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_STARTSCREEN_H
#define GRIT_STARTSCREEN_H

#define startScreenTilesLen 3648
extern const unsigned short startScreenTiles[1824];

#define startScreenMapLen 2048
extern const unsigned short startScreenMap[1024];

#define startScreenPalLen 512
extern const unsigned short startScreenPal[256];

#endif // GRIT_STARTSCREEN_H

//}}BLOCK(startScreen)
