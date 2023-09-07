
//{{BLOCK(loseScreen)

//======================================================================
//
//	loseScreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 85 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 2720 + 2048 = 5280
//
//	Time-stamp: 2022-04-24, 16:56:22
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

const unsigned short loseScreenTiles[1360] __attribute__((aligned(4)))=
{
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x2222,0x2222,0x2222,0x2222,0x2224,0x2224,0x2224,0x2224,
	0x2224,0x2224,0x4224,0x4224,0x4224,0x4224,0x4244,0x4244,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,

	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x4444,0x3344,0x4444,0x3344,0x4444,0x3344,0x4444,0x3333,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x4433,0x3344,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x4443,0x4444,0x4443,0x4444,0x4443,0x4444,0x4333,0x4444,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x4444,0x3334,0x4444,0x3334,0x4444,0x3334,0x3344,0x3333,

	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x3333,0x4333,0x3333,0x4333,0x3333,0x4333,0x4444,0x3333,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4433,0x4444,
	0x4444,0x3333,0x4444,0x3333,0x4444,0x3333,0x4444,0x3333,
	0x4444,0x3333,0x4444,0x3333,0x4444,0x3333,0x4444,0x3333,
	0x4433,0x3344,0x4433,0x3344,0x4433,0x3344,0x4433,0x3344,
	0x4433,0x4444,0x4433,0x4444,0x3433,0x3333,0x3433,0x3333,

	0x4333,0x4444,0x4333,0x4444,0x4333,0x4444,0x4333,0x4444,
	0x4344,0x4444,0x4344,0x4444,0x4443,0x3444,0x4443,0x3444,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x4444,0x4444,0x4444,0x4444,0x3333,0x3333,0x3333,0x3333,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x4444,0x4444,0x4444,0x4444,0x4433,0x4444,0x4433,0x4444,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x4444,0x4444,0x4444,0x4444,0x3333,0x4443,0x3333,0x4443,

	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x4444,0x4444,0x4444,0x4444,0x3333,0x4433,0x3333,0x4433,
	0x3344,0x3333,0x3344,0x3333,0x3344,0x3333,0x3344,0x3333,
	0x3344,0x3333,0x3344,0x3333,0x3344,0x3333,0x3344,0x3333,
	0x4433,0x4444,0x4433,0x4444,0x4433,0x4444,0x4433,0x4444,
	0x4433,0x4444,0x4433,0x4444,0x4433,0x3344,0x4433,0x3344,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x4444,0x4444,0x4444,0x4444,0x4443,0x3334,0x4443,0x3334,

	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x4444,0x4444,0x4444,0x4444,0x4443,0x3444,0x4443,0x3444,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x4444,0x4444,0x4444,0x4444,0x3333,0x4444,0x3333,0x4444,
	0x4444,0x3333,0x4444,0x3333,0x4444,0x3333,0x4444,0x3333,
	0x4444,0x3333,0x4444,0x3333,0x4444,0x3333,0x4444,0x3300,
	0x3433,0x3333,0x3433,0x3344,0x3433,0x3344,0x4433,0x3344,
	0x4433,0x3344,0x4433,0x3344,0x4433,0x3344,0x3333,0x3333,

	0x4333,0x3334,0x4333,0x3334,0x4333,0x3334,0x4333,0x3334,
	0x4333,0x3334,0x4333,0x3334,0x4333,0x3334,0x4333,0x3334,
	0x3333,0x3333,0x4433,0x3344,0x4433,0x3344,0x4433,0x3344,
	0x4433,0x3344,0x4433,0x3344,0x4433,0x3344,0x3333,0x0333,
	0x3333,0x3344,0x3333,0x3344,0x3333,0x3344,0x3333,0x3344,
	0x3333,0x3344,0x3333,0x3344,0x3333,0x3344,0x3330,0x0044,
	0x3333,0x3333,0x4333,0x3334,0x4333,0x3334,0x4333,0x3334,
	0x4333,0x3334,0x4333,0x4344,0x4333,0x4344,0x4333,0x4344,

	0x3333,0x4333,0x3344,0x4333,0x3344,0x4333,0x3344,0x4333,
	0x3344,0x4333,0x3344,0x4333,0x3344,0x4333,0x3344,0x4003,
	0x3334,0x3333,0x3334,0x4433,0x3334,0x4433,0x3334,0x3333,
	0x3334,0x3333,0x3334,0x3333,0x3334,0x4433,0x3004,0x3333,
	0x3333,0x3333,0x3344,0x3333,0x3344,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x4444,0x4444,0x3333,0x3333,
	0x3344,0x3333,0x3344,0x3333,0x3344,0x3333,0x3344,0x3333,
	0x3344,0x3333,0x3344,0x3333,0x3344,0x3333,0x3044,0x3333,

	0x4444,0x3333,0x4444,0x3333,0x4444,0x3333,0x4444,0x3333,
	0x4444,0x3333,0x4444,0x3333,0x4444,0x3333,0x3333,0x3333,
	0x3433,0x3333,0x3433,0x3333,0x3433,0x3333,0x3433,0x3333,
	0x3433,0x3333,0x4433,0x3344,0x4433,0x3344,0x4433,0x3344,
	0x4443,0x3334,0x4443,0x3334,0x4443,0x3334,0x4443,0x3334,
	0x4443,0x3334,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x4433,0x3333,0x4433,0x3333,0x4433,0x3333,0x4433,0x3333,
	0x4433,0x3333,0x4444,0x3333,0x4444,0x3333,0x4444,0x3335,

	0x3333,0x3333,0x4433,0x3344,0x4433,0x3344,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x4433,0x4444,0x3333,0x3333,
	0x4333,0x3334,0x4333,0x3334,0x4333,0x3334,0x4333,0x3334,
	0x4333,0x3334,0x4333,0x3334,0x4444,0x3334,0x4333,0x3304,
	0x3333,0x3333,0x4433,0x4444,0x4433,0x4444,0x4433,0x4444,
	0x4433,0x4444,0x4433,0x4444,0x4433,0x4444,0x4433,0x4444,
	0x3333,0x4444,0x3344,0x4444,0x3444,0x4444,0x3444,0x4444,
	0x3444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,

	0x4444,0x3344,0x4444,0x3344,0x4444,0x3344,0x4444,0x3344,
	0x4444,0x3344,0x4444,0x4344,0x4444,0x4444,0x4444,0x4444,
	0x3333,0x3333,0x3333,0x3333,0x4444,0x3444,0x4444,0x3444,
	0x4444,0x3444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x4443,0x3444,0x4443,0x3444,0x4443,0x3444,0x4443,0x3444,
	0x4443,0x3444,0x4444,0x3444,0x4444,0x3444,0x4444,0x4444,
	0x3333,0x4333,0x3333,0x4333,0x4443,0x4444,0x4443,0x4444,
	0x4443,0x4444,0x4443,0x4444,0x4443,0x4444,0x4444,0x4444,

	0x3334,0x4444,0x3334,0x4444,0x3344,0x4444,0x3444,0x4444,
	0x3444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x4333,0x4444,0x4333,0x4444,0x4334,0x4444,0x4344,0x4444,
	0x4344,0x4444,0x4344,0x4444,0x4344,0x4444,0x4444,0x4444,
	0x3344,0x4443,0x3344,0x4443,0x3344,0x4444,0x4344,0x4444,
	0x4344,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x3444,0x3333,0x3444,0x3333,0x3444,0x4443,0x3444,0x4443,
	0x3444,0x4444,0x3444,0x4444,0x4444,0x4444,0x4444,0x4444,

	0x3333,0x3333,0x3333,0x3333,0x4444,0x3344,0x4444,0x3344,
	0x4444,0x3344,0x4444,0x3444,0x4444,0x3444,0x4444,0x3444,
	0x4444,0x3334,0x4444,0x3334,0x4444,0x3334,0x4444,0x3334,
	0x4444,0x4334,0x4444,0x4334,0x4444,0x4334,0x4444,0x4434,
	0x3333,0x4333,0x3333,0x4333,0x4444,0x4444,0x4444,0x4444,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x4433,0x4444,0x4433,0x4444,0x4434,0x4444,0x4434,0x4444,
	0x4434,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,

	0x3333,0x4433,0x3333,0x4433,0x3344,0x4444,0x3344,0x4444,
	0x3344,0x4444,0x3344,0x4444,0x4344,0x4444,0x4344,0x4444,
	0x4444,0x3344,0x4444,0x3344,0x4444,0x3344,0x4444,0x3344,
	0x4444,0x3344,0x4444,0x3344,0x4444,0x4344,0x4444,0x4344,
	0x4333,0x3444,0x4333,0x3444,0x4334,0x4444,0x4344,0x4444,
	0x4344,0x4444,0x4344,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x4433,0x4444,0x4433,0x4444,0x4433,0x4444,0x4434,0x4444,
	0x4434,0x4444,0x4434,0x4444,0x4444,0x4444,0x4444,0x4444,

	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x3334,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4443,0x4444,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x3333,0x4444,
	0x4444,0x4434,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,

	0x4444,0x4344,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4344,0x4344,
	0x4444,0x4433,0x4444,0x4433,0x4444,0x4433,0x4444,0x3333,
	0x4444,0x4433,0x4444,0x4433,0x4444,0x4433,0x4444,0x4434,
	0x4433,0x4444,0x4433,0x4444,0x4433,0x4444,0x4443,0x3333,
	0x3444,0x4443,0x3444,0x4443,0x3444,0x4443,0x4444,0x4443,

	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x3443,0x4333,
	0x3344,0x3344,0x3344,0x3333,0x3344,0x4444,0x3444,0x3333,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x3344,0x4333,
	0x4334,0x4444,0x3344,0x4433,0x4444,0x4334,0x3334,0x4433,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x3334,0x4433,
	0x4433,0x4444,0x3334,0x4443,0x4444,0x4433,0x3333,0x4443,
	0x4444,0x3344,0x4444,0x3344,0x4444,0x3344,0x4444,0x3444,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x3344,

	0x4444,0x4444,0x4444,0x4444,0x4444,0x3444,0x4333,0x3334,
	0x3344,0x3344,0x3344,0x3344,0x3344,0x3344,0x4333,0x3444,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4433,0x3334,
	0x4444,0x4433,0x4444,0x4433,0x4444,0x4433,0x4333,0x3334,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4443,0x3333,
	0x3433,0x4443,0x3433,0x4443,0x3433,0x4443,0x4434,0x4443,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4443,0x3343,0x4333,
	0x3444,0x4443,0x3444,0x4443,0x3444,0x4443,0x4444,0x3333,

	0x4444,0x4444,0x4444,0x4444,0x4344,0x4444,0x3333,0x4443,
	0x4334,0x3444,0x4334,0x3444,0x4334,0x3444,0x3344,0x4433,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x3333,0x4444,
	0x3443,0x4443,0x3443,0x4443,0x3443,0x4443,0x3333,0x4444,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x4444,0x3444,0x4444,0x3444,0x4444,0x3444,0x4444,0x4444,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x3333,0x3444,
	0x3443,0x3343,0x3443,0x3343,0x3443,0x3343,0x3333,0x3443,

	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4333,0x4444,
	0x3344,0x4444,0x3344,0x4444,0x3344,0x4444,0x4333,0x4444,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4344,0x4444,0x3333,
	0x4444,0x4334,0x4444,0x4334,0x4444,0x4334,0x4444,0x3344,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4443,0x3333,
	0x3444,0x3443,0x3444,0x3443,0x3444,0x3443,0x4433,0x3333,
	0x4334,0x3344,0x3334,0x3334,0x3334,0x3333,0x4334,0x3343,
	0x4334,0x3344,0x4334,0x3344,0x4334,0x3344,0x4344,0x4344,

	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x3344,0x4433,
	0x4334,0x4334,0x3334,0x4333,0x4334,0x4444,0x3344,0x4333,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x3334,0x4443,
	0x4433,0x3433,0x4433,0x3433,0x4433,0x3433,0x4434,0x4443,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x3443,0x4444,
	0x3443,0x4443,0x3443,0x4443,0x3443,0x4443,0x3333,0x4444,
	0x4444,0x4444,0x4444,0x3444,0x4444,0x4444,0x4444,0x4444,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,

	0x3444,0x4443,0x3333,0x4444,0x4444,0x4444,0x4444,0x4444,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
};

const unsigned short loseScreenMap[1024] __attribute__((aligned(4)))=
{
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,

	0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,
	0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,
	0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,
	0x0002,0x0002,0x0002,0x0002,0x0002,0x0002,0x0000,0x0000,
	0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,
	0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,
	0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,
	0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,0x0000,0x0000,

	0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,
	0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,
	0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,
	0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,0x0000,0x0000,
	0x0003,0x0003,0x0003,0x0003,0x0003,0x0004,0x0005,0x0006,
	0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,
	0x0007,0x0008,0x0009,0x0003,0x0003,0x0003,0x0003,0x0003,
	0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,0x0000,0x0000,

	0x0003,0x0003,0x0003,0x0003,0x0003,0x000A,0x000B,0x000C,
	0x000D,0x000E,0x000D,0x000F,0x040F,0x0010,0x0003,0x0003,
	0x0011,0x000A,0x0012,0x0013,0x040E,0x000D,0x0014,0x000D,
	0x0015,0x0003,0x0003,0x0003,0x0003,0x0003,0x0000,0x0000,
	0x0003,0x0003,0x0003,0x0003,0x0003,0x0016,0x0017,0x0018,
	0x0019,0x001A,0x001B,0x001C,0x001D,0x001E,0x0003,0x0003,
	0x001F,0x0020,0x0021,0x0022,0x0023,0x0024,0x0025,0x0026,
	0x0027,0x0003,0x0003,0x0003,0x0003,0x0003,0x0000,0x0000,

	0x0003,0x0003,0x0003,0x0003,0x0003,0x0028,0x0029,0x002A,
	0x002B,0x002C,0x002D,0x002E,0x002F,0x0030,0x0003,0x0003,
	0x0031,0x0032,0x0033,0x0034,0x0035,0x080D,0x0036,0x0037,
	0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,0x0000,0x0000,
	0x0003,0x0003,0x0003,0x0003,0x0003,0x0038,0x0039,0x0003,
	0x0003,0x0003,0x0439,0x003A,0x0003,0x0003,0x0003,0x0003,
	0x003B,0x0003,0x0003,0x043B,0x003C,0x0003,0x0003,0x0003,
	0x003D,0x0003,0x0003,0x0003,0x0003,0x0003,0x0000,0x0000,

	0x0003,0x0003,0x0003,0x0003,0x0003,0x003E,0x003F,0x0040,
	0x0041,0x0042,0x0043,0x0044,0x0045,0x0046,0x0047,0x0003,
	0x0048,0x0049,0x004A,0x004B,0x004C,0x004D,0x004E,0x044A,
	0x004F,0x0050,0x0051,0x0052,0x0003,0x0003,0x0000,0x0000,
	0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,
	0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,
	0x0003,0x0003,0x0053,0x0054,0x0003,0x0003,0x0003,0x0003,
	0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,0x0000,0x0000,

	0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,
	0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,
	0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,
	0x0003,0x0003,0x0003,0x0003,0x0003,0x0003,0x0000,0x0000,
	0x0C02,0x0C02,0x0C02,0x0C02,0x0C02,0x0C02,0x0C02,0x0C02,
	0x0C02,0x0C02,0x0C02,0x0C02,0x0C02,0x0C02,0x0C02,0x0C02,
	0x0C02,0x0C02,0x0C02,0x0C02,0x0C02,0x0C02,0x0C02,0x0C02,
	0x0C02,0x0C02,0x0C02,0x0C02,0x0C02,0x0C02,0x0000,0x0000,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,

	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,
	0x0001,0x0001,0x0001,0x0001,0x0001,0x0001,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

const unsigned short loseScreenPal[256] __attribute__((aligned(4)))=
{
	0x39AC,0x5AB3,0x7FFF,0x2B93,0x35AD,0x39AD,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

//}}BLOCK(loseScreen)