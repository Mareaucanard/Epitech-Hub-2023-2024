#ifndef _GENERICOBJECTMGR_H
#define _GENERICOBJECTMGR_H

#include "types.h"

struct Graphics;
struct Viewport;

struct GenericObject {
	virtual void doAnimation()                 = 0; // _08
	virtual void doEntry()                     = 0; // _0C
	virtual void doSetView(int viewportNumber) = 0; // _10
	virtual void doViewCalc()                  = 0; // _14
	virtual void doSimulation(f32 rate)        = 0; // _18
	virtual void doDirectDraw(Graphics& gfx)   = 0; // _1C
};

struct GenericObjectMgr {
	virtual void doAnimation() = 0;                 // _08
	virtual void doEntry() { }                      // _0C (weak)
	virtual void doSetView(int viewportNumber) = 0; // _10
	virtual void doViewCalc()                  = 0; // _14
	virtual void doSimulation(f32 rate)        = 0; // _18
	virtual void doDirectDraw(Graphics& gfx)   = 0; // _1C
	virtual void doSimpleDraw(Viewport*) { }        // _20 (weak)
	virtual void loadResources() { }                // _24 (weak)
	virtual void resetMgr() { }                     // _28 (weak)
	virtual bool pausable() { return true; }        // _2C (weak)
	virtual bool frozenable() { return true; }      // _30 (weak)
	virtual u32 getMatrixLoadType() { return 0x0; } // _34 (weak)

	// VTBL _00
};

#endif
