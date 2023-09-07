
//{{BLOCK(levelBackground)

//======================================================================
//
//	levelBackground, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 3 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 96 + 2048 = 2656
//
//	Time-stamp: 2022-04-28, 23:45:08
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LEVELBACKGROUND_H
#define GRIT_LEVELBACKGROUND_H

#define levelBackgroundTilesLen 96
extern const unsigned short levelBackgroundTiles[48];

#define levelBackgroundMapLen 2048
extern const unsigned short levelBackgroundMap[1024];

#define levelBackgroundPalLen 512
extern const unsigned short levelBackgroundPal[256];

#endif // GRIT_LEVELBACKGROUND_H

//}}BLOCK(levelBackground)
