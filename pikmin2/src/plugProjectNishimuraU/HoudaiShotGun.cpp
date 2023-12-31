#include "Game/Entities/Houdai.h"

namespace Game {
namespace Houdai {

static HoudaiShotGunMgr* sHoudaiShotGunMgr = nullptr;

/*
 * --INFO--
 * Address:	802C394C
 * Size:	00003C
 */
static bool levelRotationCallBack(J3DJoint* joint, int idx)
{
	if (idx == 0 && sHoudaiShotGunMgr) {
		sHoudaiShotGunMgr->rotateLevel(joint);
	}

	return false;
}

/*
 * --INFO--
 * Address:	802C3988
 * Size:	00003C
 */
static bool verticalRotationCallBack(J3DJoint* joint, int idx)
{
	if (idx == 0 && sHoudaiShotGunMgr) {
		sHoudaiShotGunMgr->rotateVertical(joint);
	}

	return false;
}

/*
 * --INFO--
 * Address:	802C39C4
 * Size:	000B10
 */
bool HoudaiShotGunNode::update()
{
	/*
	stwu     r1, -0x380(r1)
	mflr     r0
	stw      r0, 0x384(r1)
	stfd     f31, 0x370(r1)
	psq_st   f31, 888(r1), 0, qr0
	stfd     f30, 0x360(r1)
	psq_st   f30, 872(r1), 0, qr0
	stfd     f29, 0x350(r1)
	psq_st   f29, 856(r1), 0, qr0
	stfd     f28, 0x340(r1)
	psq_st   f28, 840(r1), 0, qr0
	stfd     f27, 0x330(r1)
	psq_st   f27, 824(r1), 0, qr0
	stfd     f26, 0x320(r1)
	psq_st   f26, 808(r1), 0, qr0
	stfd     f25, 0x310(r1)
	psq_st   f25, 792(r1), 0, qr0
	stfd     f24, 0x300(r1)
	psq_st   f24, 776(r1), 0, qr0
	stfd     f23, 0x2f0(r1)
	psq_st   f23, 760(r1), 0, qr0
	stfd     f22, 0x2e0(r1)
	psq_st   f22, 744(r1), 0, qr0
	stfd     f21, 0x2d0(r1)
	psq_st   f21, 728(r1), 0, qr0
	stfd     f20, 0x2c0(r1)
	psq_st   f20, 712(r1), 0, qr0
	stfd     f19, 0x2b0(r1)
	psq_st   f19, 696(r1), 0, qr0
	stfd     f18, 0x2a0(r1)
	psq_st   f18, 680(r1), 0, qr0
	stfd     f17, 0x290(r1)
	psq_st   f17, 664(r1), 0, qr0
	stfd     f16, 0x280(r1)
	psq_st   f16, 648(r1), 0, qr0
	stfd     f15, 0x270(r1)
	psq_st   f15, 632(r1), 0, qr0
	stfd     f14, 0x260(r1)
	psq_st   f14, 616(r1), 0, qr0
	stw      r31, 0x25c(r1)
	stw      r30, 0x258(r1)
	stw      r29, 0x254(r1)
	stw      r28, 0x250(r1)
	lis      r4, sincosTable___5JMath@ha
	mr       r28, r3
	addi     r3, r4, sincosTable___5JMath@l
	lfs      f16, 0x20(r28)
	lfs      f24, 0x24(r28)
	addi     r8, r1, 0x78
	lfs      f15, 0x28(r28)
	li       r6, 0
	lfs      f2, lbl_8051C588@sda21(r2)
	addi     r7, r28, 0x2c
	lfs      f3, lbl_8051C590@sda21(r2)
	li       r0, -1
	lfs      f1, 0x800(r3)
	addi     r29, r1, 0x240
	lfs      f0, lbl_8051C594@sda21(r2)
	addi     r4, r1, 0x1b0
	stfs     f16, 0x78(r1)
	li       r30, 0
	lwz      r3, mapMgr__4Game@sda21(r13)
	stfs     f24, 0x7c(r1)
	lwz      r5, sys@sda21(r13)
	stfs     f15, 0x80(r1)
	stfs     f3, 0x84(r1)
	stw      r8, 0x1b0(r1)
	stw      r7, 0x1b4(r1)
	stfs     f2, 0x1b8(r1)
	stfs     f2, 0x1bc(r1)
	stw      r6, 0x1c0(r1)
	stw      r6, 0x1f4(r1)
	stb      r6, 0x224(r1)
	stb      r6, 0x1c9(r1)
	stb      r6, 0x1c8(r1)
	stw      r6, 0x1f8(r1)
	stw      r6, 0x1c4(r1)
	stb      r6, 0x240(r1)
	stw      r6, 0x244(r1)
	stfs     f1, 0x1dc(r1)
	stfs     f0, 0x1e0(r1)
	stw      r0, 0x248(r1)
	stw      r6, 0x1fc(r1)
	stb      r6, 0x1ca(r1)
	lwz      r0, 0x18(r28)
	stw      r0, 0x1c4(r1)
	lwz      r12, 4(r3)
	lfs      f1, 0x54(r5)
	lwz      r12, 0x24(r12)
	mtctr    r12
	bctrl
	lfs      f0, 0x78(r1)
	stfs     f0, 0x20(r28)
	lfs      f0, 0x7c(r1)
	stfs     f0, 0x24(r28)
	lfs      f0, 0x80(r1)
	stfs     f0, 0x28(r28)
	lwz      r0, 0x1f4(r1)
	cmplwi   r0, 0
	bne      lbl_802C3B60
	lwz      r0, 0x1f8(r1)
	cmplwi   r0, 0
	beq      lbl_802C3ED0

lbl_802C3B60:
	lfs      f0, 0x20(r28)
	addi     r4, r1, 0x6c
	lwz      r3, mapMgr__4Game@sda21(r13)
	stfs     f0, 0x6c(r1)
	lfs      f0, 0x24(r28)
	stfs     f0, 0x70(r1)
	lfs      f0, 0x28(r28)
	stfs     f0, 0x74(r1)
	lwz      r12, 4(r3)
	lwz      r12, 0x28(r12)
	mtctr    r12
	bctrl
	stfs     f1, 0x70(r1)
	frsp     f2, f1
	lfs      f0, lbl_8051C598@sda21(r2)
	lfs      f1, 0x24(r28)
	fsubs    f1, f1, f2
	fcmpo    cr0, f1, f0
	bge      lbl_802C3BB8
	lfs      f0, lbl_8051C590@sda21(r2)
	fadds    f0, f0, f2
	stfs     f0, 0x24(r28)

lbl_802C3BB8:
	lfs      f1, 0x20(r28)
	addi     r4, r1, 0x78
	lfs      f0, lbl_8051C590@sda21(r2)
	stfs     f1, 0x60(r1)
	lwz      r3, mapMgr__4Game@sda21(r13)
	lfs      f1, 0x24(r28)
	stfs     f1, 0x64(r1)
	fsubs    f0, f1, f0
	lfs      f1, 0x28(r28)
	stfs     f1, 0x68(r1)
	stfs     f0, 0x64(r1)
	bl       findWater__Q24Game6MapMgrFRQ23Sys6Sphere
	or.      r31, r3, r3
	beq      lbl_802C3C90
	lwz      r12, 0(r3)
	lwz      r12, 0x14(r12)
	mtctr    r12
	bctrl
	lfs      f2, 0(r3)
	lis      r3, __vt__Q23efx5TBase@ha
	addi     r0, r3, __vt__Q23efx5TBase@l
	li       r5, 0
	lis      r3, __vt__Q23efx8TSimple4@ha
	stw      r0, 0x128(r1)
	addi     r0, r3, __vt__Q23efx8TSimple4@l
	lfs      f1, 0x60(r1)
	lfs      f0, 0x68(r1)
	lis      r4, __vt__Q23efx3Arg@ha
	lis      r3, __vt__Q23efx10THdamaHit3@ha
	li       r9, 0x97
	addi     r10, r4, __vt__Q23efx3Arg@l
	li       r8, 0x98
	li       r7, 0x99
	li       r6, 0x9a
	stw      r0, 0x128(r1)
	addi     r0, r3, __vt__Q23efx10THdamaHit3@l
	addi     r3, r1, 0x128
	addi     r4, r1, 0x50
	stfs     f2, 0x64(r1)
	stw      r10, 0x50(r1)
	stfs     f1, 0x54(r1)
	stfs     f2, 0x58(r1)
	stfs     f0, 0x5c(r1)
	sth      r9, 0x12c(r1)
	sth      r8, 0x12e(r1)
	sth      r7, 0x130(r1)
	sth      r6, 0x132(r1)
	stw      r5, 0x134(r1)
	stw      r5, 0x138(r1)
	stw      r5, 0x13c(r1)
	stw      r5, 0x140(r1)
	stw      r0, 0x128(r1)
	bl       create__Q23efx8TSimple4FPQ23efx3Arg
	b        lbl_802C3E7C

lbl_802C3C90:
	lwz      r0, 0x1f4(r1)
	cmplwi   r0, 0
	beq      lbl_802C3DD0
	mr       r3, r29
	bl       getAttribute__Q27MapCode4CodeFv
	cmpwi    r3, 6
	bne      lbl_802C3D38
	lis      r3, __vt__Q23efx5TBase@ha
	li       r5, 0
	addi     r0, r3, __vt__Q23efx5TBase@l
	lis      r3, __vt__Q23efx8TSimple4@ha
	stw      r0, 0x10c(r1)
	addi     r0, r3, __vt__Q23efx8TSimple4@l
	lfs      f2, 0x60(r1)
	lis      r4, __vt__Q23efx3Arg@ha
	lfs      f1, 0x64(r1)
	lis      r3, __vt__Q23efx10THdamaHit2@ha
	lfs      f0, 0x68(r1)
	addi     r10, r4, __vt__Q23efx3Arg@l
	li       r9, 0x94
	li       r8, 0x95
	li       r7, 0x96
	li       r6, 0x9c
	stw      r0, 0x10c(r1)
	addi     r0, r3, __vt__Q23efx10THdamaHit2@l
	addi     r3, r1, 0x10c
	addi     r4, r1, 0x40
	stw      r10, 0x40(r1)
	stfs     f2, 0x44(r1)
	stfs     f1, 0x48(r1)
	stfs     f0, 0x4c(r1)
	sth      r9, 0x110(r1)
	sth      r8, 0x112(r1)
	sth      r7, 0x114(r1)
	sth      r6, 0x116(r1)
	stw      r5, 0x118(r1)
	stw      r5, 0x11c(r1)
	stw      r5, 0x120(r1)
	stw      r5, 0x124(r1)
	stw      r0, 0x10c(r1)
	bl       create__Q23efx8TSimple4FPQ23efx3Arg
	b        lbl_802C3E7C

lbl_802C3D38:
	lis      r3, __vt__Q23efx5TBase@ha
	li       r5, 0
	addi     r0, r3, __vt__Q23efx5TBase@l
	lis      r3, __vt__Q23efx8TSimple5@ha
	stw      r0, 0x144(r1)
	addi     r0, r3, __vt__Q23efx8TSimple5@l
	lfs      f2, 0x60(r1)
	lis      r4, __vt__Q23efx3Arg@ha
	lfs      f1, 0x64(r1)
	lis      r3, __vt__Q23efx10THdamaHit1@ha
	lfs      f0, 0x68(r1)
	addi     r4, r4, __vt__Q23efx3Arg@l
	li       r10, 0x8d
	li       r9, 0x8e
	li       r8, 0x8f
	li       r7, 0x90
	li       r6, 0x9c
	stw      r0, 0x144(r1)
	addi     r0, r3, __vt__Q23efx10THdamaHit1@l
	addi     r3, r1, 0x144
	stw      r4, 0x30(r1)
	addi     r4, r1, 0x30
	stfs     f2, 0x34(r1)
	stfs     f1, 0x38(r1)
	stfs     f0, 0x3c(r1)
	sth      r10, 0x148(r1)
	sth      r9, 0x14a(r1)
	sth      r8, 0x14c(r1)
	sth      r7, 0x14e(r1)
	sth      r6, 0x150(r1)
	stw      r5, 0x154(r1)
	stw      r5, 0x158(r1)
	stw      r5, 0x15c(r1)
	stw      r5, 0x160(r1)
	stw      r5, 0x164(r1)
	stw      r0, 0x144(r1)
	bl       create__Q23efx8TSimple5FPQ23efx3Arg
	b        lbl_802C3E7C

lbl_802C3DD0:
	lwz      r0, 0x1f8(r1)
	cmplwi   r0, 0
	beq      lbl_802C3E7C
	lis      r3, __vt__Q23efx5TBase@ha
	li       r5, 0
	addi     r0, r3, __vt__Q23efx5TBase@l
	lis      r4, __vt__Q23efx3Arg@ha
	lis      r3, __vt__Q23efx8TSimple3@ha
	stw      r0, 0xd8(r1)
	addi     r0, r4, __vt__Q23efx3Arg@l
	lfs      f5, 0x60(r1)
	addi     r4, r3, __vt__Q23efx8TSimple3@l
	lfs      f4, 0x64(r1)
	lfs      f3, 0x68(r1)
	lis      r9, __vt__Q23efx6ArgDir@ha
	lfs      f2, 0x20c(r1)
	lis      r3, __vt__Q23efx11THdamaHit2W@ha
	lfs      f1, 0x210(r1)
	li       r8, 0x91
	lfs      f0, 0x214(r1)
	li       r7, 0x92
	li       r6, 0x93
	stw      r0, 0xf0(r1)
	addi     r9, r9, __vt__Q23efx6ArgDir@l
	addi     r0, r3, __vt__Q23efx11THdamaHit2W@l
	stw      r4, 0xd8(r1)
	addi     r3, r1, 0xd8
	addi     r4, r1, 0xf0
	stfs     f5, 0xf4(r1)
	stfs     f4, 0xf8(r1)
	stfs     f3, 0xfc(r1)
	stw      r9, 0xf0(r1)
	stfs     f2, 0x100(r1)
	stfs     f1, 0x104(r1)
	stfs     f0, 0x108(r1)
	sth      r8, 0xdc(r1)
	sth      r7, 0xde(r1)
	sth      r6, 0xe0(r1)
	stw      r5, 0xe4(r1)
	stw      r5, 0xe8(r1)
	stw      r5, 0xec(r1)
	stw      r0, 0xd8(r1)
	bl       create__Q23efx11THdamaHit2WFPQ23efx3Arg

lbl_802C3E7C:
	lwz      r3, 0x1c(r28)
	lwz      r12, 0(r3)
	lwz      r12, 0x10(r12)
	mtctr    r12
	bctrl
	cmplwi   r31, 0
	li       r30, 1
	beq      lbl_802C3EAC
	addi     r4, r28, 0x20
	li       r3, 0x5805
	bl       PSStartSoundVec__FUlP3Vec
	b        lbl_802C3EB8

lbl_802C3EAC:
	addi     r4, r28, 0x20
	li       r3, 0x5935
	bl       PSStartSoundVec__FUlP3Vec

lbl_802C3EB8:
	lwz      r3, rumbleMgr__4Game@sda21(r13)
	addi     r5, r1, 0x60
	li       r4, 0xb
	li       r6, 2
	bl       "startRumble__Q24Game9RumbleMgrFiR10Vector3<f>i"
	b        lbl_802C3F84

lbl_802C3ED0:
	lwz      r4, 0x18(r28)
	addi     r3, r1, 0x14
	lwz      r12, 0(r4)
	lwz      r12, 8(r12)
	mtctr    r12
	bctrl
	lfs      f2, 0x14(r1)
	lfs      f1, 0x20(r28)
	lfs      f0, lbl_8051C588@sda21(r2)
	fsubs    f1, f2, f1
	lfs      f2, 0x18(r1)
	lfs      f3, 0x1c(r1)
	fcmpo    cr0, f1, f0
	ble      lbl_802C3F0C
	b        lbl_802C3F10

lbl_802C3F0C:
	fneg     f1, f1

lbl_802C3F10:
	lfs      f0, lbl_8051C59C@sda21(r2)
	fcmpo    cr0, f1, f0
	bgt      lbl_802C3F6C
	lfs      f1, 0x24(r28)
	lfs      f0, lbl_8051C588@sda21(r2)
	fsubs    f1, f2, f1
	fcmpo    cr0, f1, f0
	ble      lbl_802C3F34
	b        lbl_802C3F38

lbl_802C3F34:
	fneg     f1, f1

lbl_802C3F38:
	lfs      f0, lbl_8051C5A0@sda21(r2)
	fcmpo    cr0, f1, f0
	bgt      lbl_802C3F6C
	lfs      f1, 0x28(r28)
	lfs      f0, lbl_8051C588@sda21(r2)
	fsubs    f1, f3, f1
	fcmpo    cr0, f1, f0
	ble      lbl_802C3F5C
	b        lbl_802C3F60

lbl_802C3F5C:
	fneg     f1, f1

lbl_802C3F60:
	lfs      f0, lbl_8051C59C@sda21(r2)
	fcmpo    cr0, f1, f0
	ble      lbl_802C3F84

lbl_802C3F6C:
	lwz      r3, 0x1c(r28)
	lwz      r12, 0(r3)
	lwz      r12, 0x10(r12)
	mtctr    r12
	bctrl
	li       r30, 1

lbl_802C3F84:
	lfs      f0, lbl_8051C590@sda21(r2)
	lfs      f8, 0x24(r28)
	fsubs    f24, f24, f0
	lfs      f7, 0x20(r28)
	fsubs    f8, f8, f0
	lfs      f9, 0x28(r28)
	fsubs    f3, f16, f7
	lfs      f0, lbl_8051C588@sda21(r2)
	fsubs    f2, f24, f8
	fsubs    f1, f15, f9
	fmuls    f2, f2, f2
	fmuls    f4, f1, f1
	fmadds   f1, f3, f3, f2
	fadds    f6, f4, f1
	fcmpo    cr0, f6, f0
	ble      lbl_802C3FD4
	ble      lbl_802C3FD8
	frsqrte  f0, f6
	fmuls    f6, f0, f6
	b        lbl_802C3FD8

lbl_802C3FD4:
	fmr      f6, f0

lbl_802C3FD8:
	lwz      r3, 0x18(r28)
	lfs      f5, lbl_8051C588@sda21(r2)
	lwz      r3, 0xc0(r3)
	fcmpo    cr0, f6, f5
	lfs      f31, 0x5b4(r3)
	ble      lbl_802C4420
	fsubs    f28, f8, f24
	lfs      f4, lbl_8051C5A4@sda21(r2)
	fadds    f1, f24, f8
	fsubs    f30, f9, f15
	fsubs    f29, f7, f16
	fmuls    f0, f28, f28
	fadds    f2, f15, f9
	fmuls    f8, f30, f30
	fmadds   f0, f29, f29, f0
	fadds    f3, f16, f7
	fmuls    f2, f4, f2
	fadds    f7, f8, f0
	fmuls    f1, f4, f1
	fmuls    f0, f4, f3
	fcmpo    cr0, f7, f5
	fadds    f14, f6, f31
	ble      lbl_802C4044
	ble      lbl_802C4048
	frsqrte  f3, f7
	fmuls    f7, f3, f7
	b        lbl_802C4048

lbl_802C4044:
	fmr      f7, f5

lbl_802C4048:
	lfs      f3, lbl_8051C588@sda21(r2)
	fcmpo    cr0, f7, f3
	ble      lbl_802C4068
	lfs      f3, lbl_8051C58C@sda21(r2)
	fdivs    f3, f3, f7
	fmuls    f29, f29, f3
	fmuls    f28, f28, f3
	fmuls    f30, f30, f3

lbl_802C4068:
	lfs      f4, lbl_8051C588@sda21(r2)
	lfs      f5, lbl_8051C58C@sda21(r2)
	fmuls    f3, f4, f30
	fmuls    f6, f4, f28
	fmsubs   f26, f4, f29, f3
	fnmsubs  f25, f5, f29, f6
	fmsubs   f27, f5, f30, f6
	fmuls    f3, f26, f26
	fmuls    f5, f25, f25
	fmadds   f3, f27, f27, f3
	fadds    f5, f5, f3
	fcmpo    cr0, f5, f4
	ble      lbl_802C40AC
	ble      lbl_802C40B0
	frsqrte  f3, f5
	fmuls    f5, f3, f5
	b        lbl_802C40B0

lbl_802C40AC:
	fmr      f5, f4

lbl_802C40B0:
	lfs      f3, lbl_8051C588@sda21(r2)
	fcmpo    cr0, f5, f3
	ble      lbl_802C40D0
	lfs      f3, lbl_8051C58C@sda21(r2)
	fdivs    f3, f3, f5
	fmuls    f27, f27, f3
	fmuls    f26, f26, f3
	fmuls    f25, f25, f3

lbl_802C40D0:
	fmuls    f5, f29, f25
	lfs      f3, lbl_8051C588@sda21(r2)
	fmuls    f6, f30, f26
	fmuls    f4, f28, f27
	fmsubs   f22, f30, f27, f5
	fmsubs   f23, f28, f25, f6
	fmsubs   f21, f29, f26, f4
	fmuls    f4, f22, f22
	fmuls    f5, f21, f21
	fmadds   f4, f23, f23, f4
	fadds    f4, f5, f4
	fcmpo    cr0, f4, f3
	ble      lbl_802C4114
	ble      lbl_802C4118
	frsqrte  f3, f4
	fmuls    f4, f3, f4
	b        lbl_802C4118

lbl_802C4114:
	fmr      f4, f3

lbl_802C4118:
	lfs      f3, lbl_8051C588@sda21(r2)
	fcmpo    cr0, f4, f3
	ble      lbl_802C4138
	lfs      f3, lbl_8051C58C@sda21(r2)
	fdivs    f3, f3, f4
	fmuls    f23, f23, f3
	fmuls    f22, f22, f3
	fmuls    f21, f21, f3

lbl_802C4138:
	stfs     f0, 0x20(r1)
	addi     r3, r1, 0xb8
	addi     r4, r1, 0x20
	stfs     f1, 0x24(r1)
	stfs     f2, 0x28(r1)
	stfs     f14, 0x2c(r1)
	bl       __ct__Q24Game15CellIteratorArgFRQ23Sys6Sphere
	li       r0, 1
	addi     r3, r1, 0x168
	stb      r0, 0xd4(r1)
	addi     r4, r1, 0xb8
	bl       __ct__Q24Game12CellIteratorFRQ24Game15CellIteratorArg
	addi     r3, r1, 0x168
	bl       first__Q24Game12CellIteratorFv
	fneg     f20, f31
	lis      r3, "zero__10Vector3<f>"@ha
	addi     r31, r3, "zero__10Vector3<f>"@l
	b        lbl_802C4410

lbl_802C4180:
	addi     r3, r1, 0x168
	bl       __ml__Q24Game12CellIteratorFv
	lwz      r12, 0(r3)
	mr       r29, r3
	lwz      r12, 0xa8(r12)
	mtctr    r12
	bctrl
	clrlwi.  r0, r3, 0x18
	beq      lbl_802C4408
	mr       r4, r29
	addi     r3, r1, 8
	lwz      r12, 0(r29)
	lwz      r12, 8(r12)
	mtctr    r12
	bctrl
	lfs      f1, 0xc(r1)
	lfs      f0, 8(r1)
	fsubs    f3, f1, f24
	lfs      f1, 0x10(r1)
	fsubs    f2, f0, f16
	lfs      f0, lbl_8051C588@sda21(r2)
	fsubs    f4, f1, f15
	fmuls    f1, f26, f3
	fmadds   f1, f27, f2, f1
	fmadds   f19, f25, f4, f1
	fcmpo    cr0, f19, f0
	ble      lbl_802C41F4
	fmr      f0, f19
	b        lbl_802C41F8

lbl_802C41F4:
	fneg     f0, f19

lbl_802C41F8:
	fcmpo    cr0, f0, f31
	bge      lbl_802C4408
	fmuls    f1, f22, f3
	lfs      f0, lbl_8051C588@sda21(r2)
	fmadds   f1, f23, f2, f1
	fmadds   f1, f21, f4, f1
	fcmpo    cr0, f1, f0
	ble      lbl_802C421C
	b        lbl_802C4220

lbl_802C421C:
	fneg     f1, f1

lbl_802C4220:
	fcmpo    cr0, f1, f31
	bge      lbl_802C4408
	fmuls    f0, f28, f3
	fmadds   f0, f29, f2, f0
	fmadds   f0, f30, f4, f0
	fcmpo    cr0, f0, f20
	ble      lbl_802C4408
	fcmpo    cr0, f0, f14
	bge      lbl_802C4408
	mr       r3, r29
	lwz      r12, 0(r29)
	lwz      r12, 0x1c(r12)
	mtctr    r12
	bctrl
	clrlwi.  r0, r3, 0x18
	bne      lbl_802C4298
	mr       r3, r29
	lwz      r12, 0(r29)
	lwz      r12, 0x18(r12)
	mtctr    r12
	bctrl
	clrlwi.  r0, r3, 0x18
	beq      lbl_802C437C
	mr       r3, r29
	lwz      r12, 0(r29)
	lwz      r12, 0x1c0(r12)
	mtctr    r12
	bctrl
	clrlwi.  r0, r3, 0x18
	beq      lbl_802C437C

lbl_802C4298:
	fmuls    f17, f19, f25
	lfs      f18, lbl_8051C588@sda21(r2)
	fmuls    f19, f19, f27
	fmuls    f1, f17, f17
	fmadds   f0, f19, f19, f18
	fadds    f1, f1, f0
	fcmpo    cr0, f1, f18
	ble      lbl_802C42C8
	ble      lbl_802C42CC
	frsqrte  f0, f1
	fmuls    f1, f0, f1
	b        lbl_802C42CC

lbl_802C42C8:
	fmr      f1, f18

lbl_802C42CC:
	lfs      f0, lbl_8051C588@sda21(r2)
	fcmpo    cr0, f1, f0
	ble      lbl_802C42EC
	lfs      f0, lbl_8051C58C@sda21(r2)
	fdivs    f0, f0, f1
	fmuls    f19, f19, f0
	fmuls    f18, f18, f0
	fmuls    f17, f17, f0

lbl_802C42EC:
	mr       r3, r29
	lfs      f0, lbl_8051C5A8@sda21(r2)
	lwz      r12, 0(r29)
	fmuls    f19, f19, f0
	lwz      r12, 0x18(r12)
	mtctr    r12
	bctrl
	clrlwi.  r0, r3, 0x18
	beq      lbl_802C4314
	lfs      f18, lbl_8051C5A8@sda21(r2)

lbl_802C4314:
	lwz      r8, 0x18(r28)
	lis      r5, __vt__Q24Game11Interaction@ha
	lfs      f0, lbl_8051C5A8@sda21(r2)
	lis      r4, __vt__Q24Game12InteractWind@ha
	lwz      r7, 0xc0(r8)
	lis      r3, __vt__Q24Game12InteractBomb@ha
	addi     r6, r5, __vt__Q24Game11Interaction@l
	fmuls    f17, f17, f0
	lfs      f0, 0x604(r7)
	addi     r5, r4, __vt__Q24Game12InteractWind@l
	addi     r0, r3, __vt__Q24Game12InteractBomb@l
	mr       r3, r29
	stw      r6, 0xa0(r1)
	addi     r4, r1, 0xa0
	stw      r5, 0xa0(r1)
	stw      r8, 0xa4(r1)
	stfs     f0, 0xa8(r1)
	stfs     f19, 0xac(r1)
	stfs     f18, 0xb0(r1)
	stfs     f17, 0xb4(r1)
	stw      r0, 0xa0(r1)
	lwz      r12, 0(r29)
	lwz      r12, 0x1a4(r12)
	mtctr    r12
	bctrl
	b        lbl_802C4408

lbl_802C437C:
	mr       r3, r29
	lwz      r12, 0(r29)
	lwz      r12, 0x7c(r12)
	mtctr    r12
	bctrl
	clrlwi.  r0, r3, 0x18
	beq      lbl_802C4408
	lwz      r5, 0x18(r28)
	cmplw    r29, r5
	beq      lbl_802C4408
	lis      r3, __vt__Q24Game11Interaction@ha
	lis      r4, __vt__Q24Game12InteractWind@ha
	addi     r0, r3, __vt__Q24Game11Interaction@l
	lfs      f3, lbl_8051C5AC@sda21(r2)
	stw      r0, 0x88(r1)
	lis      r3, "zero__10Vector3<f>"@ha
	addi     r4, r4, __vt__Q24Game12InteractWind@l
	lfs      f2, "zero__10Vector3<f>"@l(r3)
	lis      r3, __vt__Q24Game12InteractBomb@ha
	lfs      f1, 4(r31)
	stw      r4, 0x88(r1)
	addi     r0, r3, __vt__Q24Game12InteractBomb@l
	lfs      f0, 8(r31)
	mr       r3, r29
	stw      r5, 0x8c(r1)
	addi     r4, r1, 0x88
	stfs     f3, 0x90(r1)
	stfs     f2, 0x94(r1)
	stfs     f1, 0x98(r1)
	stfs     f0, 0x9c(r1)
	stw      r0, 0x88(r1)
	lwz      r12, 0(r29)
	lwz      r12, 0x1a4(r12)
	mtctr    r12
	bctrl

lbl_802C4408:
	addi     r3, r1, 0x168
	bl       next__Q24Game12CellIteratorFv

lbl_802C4410:
	addi     r3, r1, 0x168
	bl       isDone__Q24Game12CellIteratorFv
	clrlwi.  r0, r3, 0x18
	beq      lbl_802C4180

lbl_802C4420:
	mr       r3, r30
	psq_l    f31, 888(r1), 0, qr0
	lfd      f31, 0x370(r1)
	psq_l    f30, 872(r1), 0, qr0
	lfd      f30, 0x360(r1)
	psq_l    f29, 856(r1), 0, qr0
	lfd      f29, 0x350(r1)
	psq_l    f28, 840(r1), 0, qr0
	lfd      f28, 0x340(r1)
	psq_l    f27, 824(r1), 0, qr0
	lfd      f27, 0x330(r1)
	psq_l    f26, 808(r1), 0, qr0
	lfd      f26, 0x320(r1)
	psq_l    f25, 792(r1), 0, qr0
	lfd      f25, 0x310(r1)
	psq_l    f24, 776(r1), 0, qr0
	lfd      f24, 0x300(r1)
	psq_l    f23, 760(r1), 0, qr0
	lfd      f23, 0x2f0(r1)
	psq_l    f22, 744(r1), 0, qr0
	lfd      f22, 0x2e0(r1)
	psq_l    f21, 728(r1), 0, qr0
	lfd      f21, 0x2d0(r1)
	psq_l    f20, 712(r1), 0, qr0
	lfd      f20, 0x2c0(r1)
	psq_l    f19, 696(r1), 0, qr0
	lfd      f19, 0x2b0(r1)
	psq_l    f18, 680(r1), 0, qr0
	lfd      f18, 0x2a0(r1)
	psq_l    f17, 664(r1), 0, qr0
	lfd      f17, 0x290(r1)
	psq_l    f16, 648(r1), 0, qr0
	lfd      f16, 0x280(r1)
	psq_l    f15, 632(r1), 0, qr0
	lfd      f15, 0x270(r1)
	psq_l    f14, 616(r1), 0, qr0
	lfd      f14, 0x260(r1)
	lwz      r31, 0x25c(r1)
	lwz      r30, 0x258(r1)
	lwz      r29, 0x254(r1)
	lwz      r0, 0x384(r1)
	lwz      r28, 0x250(r1)
	mtlr     r0
	addi     r1, r1, 0x380
	blr
	*/
}

/*
 * --INFO--
 * Address:	802C44D4
 * Size:	000240
 */
HoudaiShotGunMgr::HoudaiShotGunMgr(Obj* houdai)
    : mOwner(houdai)
    , mIsShotGunRotation(false)
    , mIsShotGunLockedOn(false)
    , mIsShotGunFinished(false)
{
	_0C = 0.0f;
	_08 = 0.0f;
	_34 = new HoudaiShotGunNode(mOwner);
	_38 = new HoudaiShotGunNode(mOwner);

	for (int i = 0; i < 10; i++) {
		HoudaiShotGunNode* node = new HoudaiShotGunNode(mOwner);
		node->mEfxShell         = new efx::THdamaShell;
		node->_20               = Vector3f::zero;
		node->_2C               = Vector3f::zero;

		_38->add(node);
	}

	mEfxSight = new efx::THdamaSight();

	sHoudaiShotGunMgr = nullptr;
}

/*
 * --INFO--
 * Address:	802C4714
 * Size:	0000B4
 */
void HoudaiShotGunMgr::setupShotGun()
{
	mIsShotGunRotation = false;
	mIsShotGunLockedOn = false;
	mIsShotGunFinished = false;
	_0C                = 0.0f;
	_08                = 0.0f;

	SysShape::Joint* headJnt = mOwner->mModel->getJoint("tamajnt");
	SysShape::Joint* gunJnt  = mOwner->mModel->getJoint("gun");

	headJnt->mJ3d->mFunction = &levelRotationCallBack;
	gunJnt->mJ3d->mFunction  = &verticalRotationCallBack;

	mHeadMtx = headJnt->getWorldMatrix();
	mGunMtx  = gunJnt->getWorldMatrix();
}

/*
 * --INFO--
 * Address:	802C47C8
 * Size:	00000C
 */
void HoudaiShotGunMgr::resetCallBack() { sHoudaiShotGunMgr = nullptr; }

/*
 * --INFO--
 * Address:	802C47D4
 * Size:	000008
 */
void HoudaiShotGunMgr::setCallBack() { sHoudaiShotGunMgr = this; }

/*
 * --INFO--
 * Address:	802C47DC
 * Size:	000024
 */
void HoudaiShotGunMgr::startRotation()
{
	mIsShotGunRotation = true;
	mIsShotGunLockedOn = false;
	mIsShotGunFinished = false;
	_0C                = 0.0f;
	_08                = 0.0f;
}

/*
 * --INFO--
 * Address:	802C4800
 * Size:	000014
 */
void HoudaiShotGunMgr::finishRotation()
{
	mIsShotGunLockedOn = false;
	mIsShotGunFinished = true;
}

/*
 * --INFO--
 * Address:	802C4814
 * Size:	000008
 */
bool HoudaiShotGunMgr::isShotGunRotation() { return mIsShotGunRotation; }

/*
 * --INFO--
 * Address:	802C481C
 * Size:	000008
 */
bool HoudaiShotGunMgr::isShotGunLockOn() { return mIsShotGunLockedOn; }

/*
 * --INFO--
 * Address:	802C4824
 * Size:	000008
 */
bool HoudaiShotGunMgr::isFinishShotGun() { return mIsShotGunFinished; }

/*
 * --INFO--
 * Address:	802C482C
 * Size:	00001C
 */
void HoudaiShotGunMgr::setShotGunTarget(Vector3f& pos) { mTargetPosition = pos; }

/*
 * --INFO--
 * Address:	802C4848
 * Size:	0003C0
 */
void HoudaiShotGunMgr::emitShotGun()
{
	/*
	stwu     r1, -0xe0(r1)
	mflr     r0
	stw      r0, 0xe4(r1)
	stfd     f31, 0xd0(r1)
	psq_st   f31, 216(r1), 0, qr0
	stfd     f30, 0xc0(r1)
	psq_st   f30, 200(r1), 0, qr0
	stfd     f29, 0xb0(r1)
	psq_st   f29, 184(r1), 0, qr0
	stfd     f28, 0xa0(r1)
	psq_st   f28, 168(r1), 0, qr0
	stfd     f27, 0x90(r1)
	psq_st   f27, 152(r1), 0, qr0
	stfd     f26, 0x80(r1)
	psq_st   f26, 136(r1), 0, qr0
	stfd     f25, 0x70(r1)
	psq_st   f25, 120(r1), 0, qr0
	stw      r31, 0x6c(r1)
	stw      r30, 0x68(r1)
	stw      r29, 0x64(r1)
	mr       r31, r3
	lwz      r3, 0x38(r3)
	lwz      r29, 0x10(r3)
	cmplwi   r29, 0
	beq      lbl_802C4BB4
	lwz      r3, 0x14(r31)
	lfs      f0, lbl_8051C588@sda21(r2)
	lfs      f30, 0x10(r3)
	lfs      f29, 0x20(r3)
	fmuls    f1, f30, f30
	lfs      f31, 0(r3)
	fmuls    f2, f29, f29
	lfs      f28, 0xc(r3)
	lfs      f27, 0x1c(r3)
	fmadds   f1, f31, f31, f1
	lfs      f26, 0x2c(r3)
	fadds    f1, f2, f1
	fcmpo    cr0, f1, f0
	ble      lbl_802C48F4
	ble      lbl_802C48F8
	frsqrte  f0, f1
	fmuls    f1, f0, f1
	b        lbl_802C48F8

lbl_802C48F4:
	fmr      f1, f0

lbl_802C48F8:
	lfs      f0, lbl_8051C588@sda21(r2)
	fcmpo    cr0, f1, f0
	ble      lbl_802C4918
	lfs      f0, lbl_8051C58C@sda21(r2)
	fdivs    f0, f0, f1
	fmuls    f31, f31, f0
	fmuls    f30, f30, f0
	fmuls    f29, f29, f0

lbl_802C4918:
	lwz      r3, 0(r31)
	lfs      f1, lbl_8051C5BC@sda21(r2)
	lwz      r30, 0xc0(r3)
	lfs      f0, 0x5dc(r30)
	fmuls    f25, f1, f0
	bl       rand
	xoris    r3, r3, 0x8000
	lis      r0, 0x4330
	stw      r3, 0x44(r1)
	lwz      r3, 0(r31)
	stw      r0, 0x40(r1)
	lfd      f2, lbl_8051C5D0@sda21(r2)
	lfd      f0, 0x40(r1)
	lfs      f1, lbl_8051C5C0@sda21(r2)
	fsubs    f2, f0, f2
	lfs      f0, 0x5dc(r30)
	lwz      r30, 0xc0(r3)
	fmuls    f2, f25, f2
	fdivs    f1, f2, f1
	fsubs    f0, f1, f0
	fadds    f31, f31, f0
	bl       rand
	xoris    r3, r3, 0x8000
	lis      r0, 0x4330
	stw      r3, 0x4c(r1)
	lwz      r3, 0(r31)
	stw      r0, 0x48(r1)
	lfd      f2, lbl_8051C5D0@sda21(r2)
	lfd      f0, 0x48(r1)
	lfs      f1, lbl_8051C5C0@sda21(r2)
	fsubs    f2, f0, f2
	lfs      f0, 0x5dc(r30)
	lwz      r30, 0xc0(r3)
	fmuls    f2, f25, f2
	fdivs    f1, f2, f1
	fsubs    f0, f1, f0
	fadds    f30, f30, f0
	bl       rand
	xoris    r3, r3, 0x8000
	lis      r0, 0x4330
	stw      r3, 0x54(r1)
	fmuls    f0, f30, f30
	lfd      f4, lbl_8051C5D0@sda21(r2)
	stw      r0, 0x50(r1)
	lfs      f3, lbl_8051C5C0@sda21(r2)
	fmadds   f1, f31, f31, f0
	lfd      f0, 0x50(r1)
	lfs      f2, 0x5dc(r30)
	fsubs    f4, f0, f4
	lfs      f0, lbl_8051C588@sda21(r2)
	fmuls    f4, f25, f4
	fdivs    f3, f4, f3
	fsubs    f2, f3, f2
	fadds    f29, f29, f2
	fmuls    f2, f29, f29
	fadds    f1, f2, f1
	fcmpo    cr0, f1, f0
	ble      lbl_802C4A10
	ble      lbl_802C4A14
	frsqrte  f0, f1
	fmuls    f1, f0, f1
	b        lbl_802C4A14

lbl_802C4A10:
	fmr      f1, f0

lbl_802C4A14:
	lfs      f0, lbl_8051C588@sda21(r2)
	fcmpo    cr0, f1, f0
	ble      lbl_802C4A34
	lfs      f0, lbl_8051C58C@sda21(r2)
	fdivs    f0, f0, f1
	fmuls    f31, f31, f0
	fmuls    f30, f30, f0
	fmuls    f29, f29, f0

lbl_802C4A34:
	lfs      f2, lbl_8051C5C4@sda21(r2)
	lfs      f1, lbl_8051C5C8@sda21(r2)
	fmuls    f3, f31, f2
	lfs      f0, lbl_8051C588@sda21(r2)
	fmuls    f4, f30, f2
	fmuls    f2, f29, f2
	fadds    f28, f28, f3
	fadds    f27, f27, f4
	fadds    f26, f26, f2
	stfs     f28, 0x20(r29)
	fmuls    f31, f31, f1
	fmuls    f30, f30, f1
	stfs     f27, 0x24(r29)
	fmuls    f29, f29, f1
	stfs     f26, 0x28(r29)
	stfs     f31, 0x2c(r29)
	stfs     f30, 0x30(r29)
	stfs     f29, 0x34(r29)
	lfs      f3, 0x30(r29)
	lfs      f4, 0x34(r29)
	fmuls    f1, f3, f3
	lfs      f2, 0x2c(r29)
	fmuls    f5, f4, f4
	fmadds   f1, f2, f2, f1
	fadds    f1, f5, f1
	fcmpo    cr0, f1, f0
	ble      lbl_802C4AB0
	ble      lbl_802C4AB4
	frsqrte  f0, f1
	fmuls    f1, f0, f1
	b        lbl_802C4AB4

lbl_802C4AB0:
	fmr      f1, f0

lbl_802C4AB4:
	lfs      f0, lbl_8051C588@sda21(r2)
	fcmpo    cr0, f1, f0
	ble      lbl_802C4AD4
	lfs      f0, lbl_8051C58C@sda21(r2)
	fdivs    f0, f0, f1
	fmuls    f2, f2, f0
	fmuls    f3, f3, f0
	fmuls    f4, f4, f0

lbl_802C4AD4:
	lis      r4, __vt__Q23efx3Arg@ha
	lis      r3, __vt__Q23efx6ArgDir@ha
	addi     r4, r4, __vt__Q23efx3Arg@l
	addi     r0, r29, 0x20
	stw      r4, 8(r1)
	addi     r3, r3, __vt__Q23efx6ArgDir@l
	addi     r4, r1, 8
	lfs      f0, 0x20(r29)
	stfs     f0, 0xc(r1)
	lfs      f0, 0x24(r29)
	stfs     f0, 0x10(r1)
	lfs      f0, 0x28(r29)
	stfs     f0, 0x14(r1)
	stw      r3, 8(r1)
	stfs     f2, 0x18(r1)
	stfs     f3, 0x1c(r1)
	stfs     f4, 0x20(r1)
	lwz      r3, 0x1c(r29)
	stw      r0, 0x10(r3)
	lwz      r3, 0x1c(r29)
	lwz      r12, 0(r3)
	lwz      r12, 8(r12)
	mtctr    r12
	bctrl
	mr       r3, r29
	bl       del__5CNodeFv
	lwz      r3, 0x34(r31)
	mr       r4, r29
	bl       add__5CNodeFP5CNode
	lwz      r8, 0x14(r31)
	lis      r3, __vt__Q23efx5TBase@ha
	addi     r0, r3, __vt__Q23efx5TBase@l
	li       r5, 0
	lis      r3, __vt__Q23efx8TSimple3@ha
	stw      r0, 0x24(r1)
	addi     r0, r3, __vt__Q23efx8TSimple3@l
	lis      r3, __vt__Q23efx11TSimpleMtx3@ha
	stw      r0, 0x24(r1)
	addi     r0, r3, __vt__Q23efx11TSimpleMtx3@l
	lis      r3, __vt__Q23efx11THdamaShoot@ha
	li       r4, 0x9d
	stw      r0, 0x24(r1)
	addi     r0, r3, __vt__Q23efx11THdamaShoot@l
	li       r7, 0x9e
	li       r6, 0x247
	sth      r4, 0x28(r1)
	addi     r3, r1, 0x24
	li       r4, 0
	sth      r7, 0x2a(r1)
	sth      r6, 0x2c(r1)
	stw      r5, 0x30(r1)
	stw      r5, 0x34(r1)
	stw      r5, 0x38(r1)
	stw      r8, 0x3c(r1)
	stw      r0, 0x24(r1)
	bl       create__Q23efx11TSimpleMtx3FPQ23efx3Arg

lbl_802C4BB4:
	psq_l    f31, 216(r1), 0, qr0
	lfd      f31, 0xd0(r1)
	psq_l    f30, 200(r1), 0, qr0
	lfd      f30, 0xc0(r1)
	psq_l    f29, 184(r1), 0, qr0
	lfd      f29, 0xb0(r1)
	psq_l    f28, 168(r1), 0, qr0
	lfd      f28, 0xa0(r1)
	psq_l    f27, 152(r1), 0, qr0
	lfd      f27, 0x90(r1)
	psq_l    f26, 136(r1), 0, qr0
	lfd      f26, 0x80(r1)
	psq_l    f25, 120(r1), 0, qr0
	lfd      f25, 0x70(r1)
	lwz      r31, 0x6c(r1)
	lwz      r30, 0x68(r1)
	lwz      r0, 0xe4(r1)
	lwz      r29, 0x64(r1)
	mtlr     r0
	addi     r1, r1, 0xe0
	blr
	*/
}

/*
 * --INFO--
 * Address:	802C4C08
 * Size:	000084
 */
void HoudaiShotGunMgr::doUpdate()
{
	if (mIsShotGunRotation) {
		if (mIsShotGunFinished) {
			if (returnShotGunRotation()) {
				mIsShotGunRotation = false;
				mIsShotGunLockedOn = true;
			}

			finishLockOnEffect();

		} else {

			if (searchShotGunRotation()) {
				mIsShotGunLockedOn = true;
			}

			setShotGunLockOnPosition();
		}
	}
}

/*
 * --INFO--
 * Address:	802C4C8C
 * Size:	000078
 */
void HoudaiShotGunMgr::doUpdateCommon()
{
	HoudaiShotGunNode* next;
	HoudaiShotGunNode* node = static_cast<HoudaiShotGunNode*>(_34->mChild);
	while (node) {
		next = static_cast<HoudaiShotGunNode*>(node->mNext);
		if (node->update()) {
			node->del();
			_38->add(node);
		}
		node = next;
	}
}

/*
 * --INFO--
 * Address:	802C4D04
 * Size:	000084
 */
void HoudaiShotGunMgr::forceFinishShotGun()
{
	HoudaiShotGunNode* next;
	HoudaiShotGunNode* node = static_cast<HoudaiShotGunNode*>(_34->mChild);
	while (node) {
		next = static_cast<HoudaiShotGunNode*>(node->mNext);
		node->mEfxShell->fade();
		node->del();
		_38->add(node);
		node = next;
	}

	finishLockOnEffect();
}

/*
 * --INFO--
 * Address:	802C4D88
 * Size:	000234
 */
bool HoudaiShotGunMgr::searchShotGunRotation()
{
	/*
	stwu     r1, -0x50(r1)
	mflr     r0
	stw      r0, 0x54(r1)
	stfd     f31, 0x40(r1)
	psq_st   f31, 72(r1), 0, qr0
	stfd     f30, 0x30(r1)
	psq_st   f30, 56(r1), 0, qr0
	stfd     f29, 0x20(r1)
	psq_st   f29, 40(r1), 0, qr0
	stfd     f28, 0x10(r1)
	psq_st   f28, 24(r1), 0, qr0
	stw      r31, 0xc(r1)
	mr       r31, r3
	lis      r3, atanTable___5JMath@ha
	lwz      r5, 0x14(r31)
	addi     r3, r3, atanTable___5JMath@l
	lfs      f2, 0x20(r31)
	lfs      f0, 0x2c(r5)
	lfs      f3, 0x1c(r31)
	fsubs    f29, f2, f0
	lfs      f1, 0x1c(r5)
	lfs      f2, 0x18(r31)
	lfs      f0, 0xc(r5)
	fsubs    f30, f3, f1
	lwz      r4, 0x10(r31)
	fsubs    f31, f2, f0
	lfs      f1, 4(r4)
	lfs      f2, 0x24(r4)
	bl       "atan2___Q25JMath18TAtanTable<1024,f>CFff"
	fmr      f28, f1
	lis      r3, atanTable___5JMath@ha
	fneg     f1, f31
	addi     r3, r3, atanTable___5JMath@l
	fneg     f2, f29
	bl       "atan2___Q25JMath18TAtanTable<1024,f>CFff"
	fmr      f2, f1
	fmr      f1, f28
	bl       angDist__Fff
	lfs      f0, lbl_8051C588@sda21(r2)
	fcmpo    cr0, f1, f0
	ble      lbl_802C4E34
	fmr      f0, f1
	b        lbl_802C4E38

lbl_802C4E34:
	fneg     f0, f1

lbl_802C4E38:
	lfs      f2, lbl_8051C5D8@sda21(r2)
	fcmpo    cr0, f0, f2
	ble      lbl_802C4E58
	fdivs    f1, f1, f0
	lfs      f0, 8(r31)
	fnmsubs  f0, f2, f1, f0
	stfs     f0, 8(r31)
	b        lbl_802C4E64

lbl_802C4E58:
	lfs      f0, 8(r31)
	fsubs    f0, f0, f1
	stfs     f0, 8(r31)

lbl_802C4E64:
	lfs      f1, 8(r31)
	lfs      f0, lbl_8051C588@sda21(r2)
	fcmpo    cr0, f1, f0
	bge      lbl_802C4E80
	lfs      f0, lbl_8051C5DC@sda21(r2)
	fadds    f1, f0, f1
	b        lbl_802C4E94

lbl_802C4E80:
	lfs      f0, lbl_8051C5DC@sda21(r2)
	fcmpo    cr0, f1, f0
	cror     2, 1, 2
	bne      lbl_802C4E94
	fsubs    f1, f1, f0

lbl_802C4E94:
	fmuls    f2, f29, f29
	lfs      f0, lbl_8051C588@sda21(r2)
	stfs     f1, 8(r31)
	fmadds   f1, f31, f31, f2
	fcmpo    cr0, f1, f0
	ble      lbl_802C4EBC
	ble      lbl_802C4EC0
	frsqrte  f0, f1
	fmuls    f1, f0, f1
	b        lbl_802C4EC0

lbl_802C4EBC:
	fmr      f1, f0

lbl_802C4EC0:
	fmr      f2, f30
	lis      r3, atanTable___5JMath@ha
	addi     r3, r3, atanTable___5JMath@l
	bl       "atan2___Q25JMath18TAtanTable<1024,f>CFff"
	lfs      f2, lbl_8051C5E0@sda21(r2)
	lfs      f0, lbl_8051C588@sda21(r2)
	fadds    f2, f2, f1
	fcmpo    cr0, f2, f0
	bge      lbl_802C4EF0
	lfs      f0, lbl_8051C5DC@sda21(r2)
	fadds    f2, f0, f2
	b        lbl_802C4F04

lbl_802C4EF0:
	lfs      f0, lbl_8051C5DC@sda21(r2)
	fcmpo    cr0, f2, f0
	cror     2, 1, 2
	bne      lbl_802C4F04
	fsubs    f2, f2, f0

lbl_802C4F04:
	lfs      f1, 0xc(r31)
	bl       angDist__Fff
	lfs      f0, lbl_8051C588@sda21(r2)
	fcmpo    cr0, f1, f0
	ble      lbl_802C4F20
	fmr      f0, f1
	b        lbl_802C4F24

lbl_802C4F20:
	fneg     f0, f1

lbl_802C4F24:
	lfs      f2, lbl_8051C5D8@sda21(r2)
	fcmpo    cr0, f0, f2
	ble      lbl_802C4F44
	fdivs    f1, f1, f0
	lfs      f0, 0xc(r31)
	fnmsubs  f0, f2, f1, f0
	stfs     f0, 0xc(r31)
	b        lbl_802C4F50

lbl_802C4F44:
	lfs      f0, 0xc(r31)
	fsubs    f0, f0, f1
	stfs     f0, 0xc(r31)

lbl_802C4F50:
	lfs      f1, 0xc(r31)
	lfs      f0, lbl_8051C588@sda21(r2)
	fcmpo    cr0, f1, f0
	bge      lbl_802C4F6C
	lfs      f0, lbl_8051C5DC@sda21(r2)
	fadds    f1, f0, f1
	b        lbl_802C4F80

lbl_802C4F6C:
	lfs      f0, lbl_8051C5DC@sda21(r2)
	fcmpo    cr0, f1, f0
	cror     2, 1, 2
	bne      lbl_802C4F80
	fsubs    f1, f1, f0

lbl_802C4F80:
	stfs     f1, 0xc(r31)
	li       r3, 1
	psq_l    f31, 72(r1), 0, qr0
	lfd      f31, 0x40(r1)
	psq_l    f30, 56(r1), 0, qr0
	lfd      f30, 0x30(r1)
	psq_l    f29, 40(r1), 0, qr0
	lfd      f29, 0x20(r1)
	psq_l    f28, 24(r1), 0, qr0
	lfd      f28, 0x10(r1)
	lwz      r0, 0x54(r1)
	lwz      r31, 0xc(r1)
	mtlr     r0
	addi     r1, r1, 0x50
	blr
	*/
}

/*
 * --INFO--
 * Address:	802C4FBC
 * Size:	000178
 */
bool HoudaiShotGunMgr::returnShotGunRotation()
{
	/*
	lfs      f3, lbl_8051C588@sda21(r2)
	lfs      f4, 8(r3)
	fcmpo    cr0, f3, f4
	cror     2, 1, 2
	bne      lbl_802C4FEC
	fsubs    f2, f3, f4
	lfs      f1, lbl_8051C5DC@sda21(r2)
	fsubs    f0, f1, f2
	fcmpo    cr0, f0, f2
	bge      lbl_802C5004
	fsubs    f3, f3, f1
	b        lbl_802C5004

lbl_802C4FEC:
	fsubs    f2, f4, f3
	lfs      f1, lbl_8051C5DC@sda21(r2)
	fsubs    f0, f1, f2
	fcmpo    cr0, f0, f2
	bge      lbl_802C5004
	fadds    f3, f3, f1

lbl_802C5004:
	fsubs    f1, f4, f3
	lfs      f0, lbl_8051C588@sda21(r2)
	fcmpo    cr0, f1, f0
	ble      lbl_802C5018
	b        lbl_802C501C

lbl_802C5018:
	fneg     f1, f1

lbl_802C501C:
	lfs      f0, lbl_8051C5E4@sda21(r2)
	fcmpo    cr0, f1, f0
	bge      lbl_802C5030
	fmr      f0, f3
	b        lbl_802C5044

lbl_802C5030:
	fcmpo    cr0, f4, f3
	bge      lbl_802C5040
	fadds    f0, f4, f0
	b        lbl_802C5044

lbl_802C5040:
	fsubs    f0, f4, f0

lbl_802C5044:
	stfs     f0, 8(r3)
	lfs      f4, lbl_8051C588@sda21(r2)
	lfs      f5, 0xc(r3)
	fcmpo    cr0, f4, f5
	cror     2, 1, 2
	bne      lbl_802C5078
	fsubs    f2, f4, f5
	lfs      f1, lbl_8051C5DC@sda21(r2)
	fsubs    f0, f1, f2
	fcmpo    cr0, f0, f2
	bge      lbl_802C5090
	fsubs    f4, f4, f1
	b        lbl_802C5090

lbl_802C5078:
	fsubs    f2, f5, f4
	lfs      f1, lbl_8051C5DC@sda21(r2)
	fsubs    f0, f1, f2
	fcmpo    cr0, f0, f2
	bge      lbl_802C5090
	fadds    f4, f4, f1

lbl_802C5090:
	fsubs    f1, f5, f4
	lfs      f0, lbl_8051C588@sda21(r2)
	fcmpo    cr0, f1, f0
	ble      lbl_802C50A4
	b        lbl_802C50A8

lbl_802C50A4:
	fneg     f1, f1

lbl_802C50A8:
	lfs      f0, lbl_8051C5E4@sda21(r2)
	fcmpo    cr0, f1, f0
	bge      lbl_802C50BC
	fmr      f0, f4
	b        lbl_802C50D0

lbl_802C50BC:
	fcmpo    cr0, f5, f4
	bge      lbl_802C50CC
	fadds    f0, f5, f0
	b        lbl_802C50D0

lbl_802C50CC:
	fsubs    f0, f5, f0

lbl_802C50D0:
	stfs     f0, 0xc(r3)
	lfs      f0, lbl_8051C588@sda21(r2)
	lfs      f1, 8(r3)
	fsubs    f1, f1, f3
	fcmpo    cr0, f1, f0
	ble      lbl_802C50EC
	b        lbl_802C50F0

lbl_802C50EC:
	fneg     f1, f1

lbl_802C50F0:
	lfs      f0, lbl_8051C5E8@sda21(r2)
	fcmpo    cr0, f1, f0
	bge      lbl_802C512C
	lfs      f1, 0xc(r3)
	lfs      f0, lbl_8051C588@sda21(r2)
	fsubs    f1, f1, f4
	fcmpo    cr0, f1, f0
	ble      lbl_802C5114
	b        lbl_802C5118

lbl_802C5114:
	fneg     f1, f1

lbl_802C5118:
	lfs      f0, lbl_8051C5E8@sda21(r2)
	fcmpo    cr0, f1, f0
	bge      lbl_802C512C
	li       r3, 1
	blr

lbl_802C512C:
	li       r3, 0
	blr
	*/
}

/*
 * --INFO--
 * Address:	802C5134
 * Size:	000068
 */
void HoudaiShotGunMgr::rotateLevel(J3DJoint* joint)
{
	if (mIsShotGunRotation) {
		Mtx mtx;
		PSMTXRotRad(mtx, 'X', -_08);
		PSMTXConcat(mHeadMtx->mMatrix.mtxView, mtx, mHeadMtx->mMatrix.mtxView);
		PSMTXCopy(mHeadMtx->mMatrix.mtxView, J3DSys::mCurrentMtx);
	}
}

/*
 * --INFO--
 * Address:	802C519C
 * Size:	000258
 */
void HoudaiShotGunMgr::rotateVertical(J3DJoint* joint)
{
	/*
	stwu     r1, -0x70(r1)
	mflr     r0
	stw      r0, 0x74(r1)
	stfd     f31, 0x60(r1)
	psq_st   f31, 104(r1), 0, qr0
	stfd     f30, 0x50(r1)
	psq_st   f30, 88(r1), 0, qr0
	stfd     f29, 0x40(r1)
	psq_st   f29, 72(r1), 0, qr0
	stw      r31, 0x3c(r1)
	mr       r31, r3
	lbz      r0, 4(r3)
	cmplwi   r0, 0
	beq      lbl_802C53C8
	lwz      r5, 0x14(r31)
	lfs      f9, lbl_8051C588@sda21(r2)
	lfs      f1, 0x10(r5)
	lfs      f2, 0x20(r5)
	fmuls    f5, f1, f1
	lfs      f0, 0(r5)
	fmuls    f8, f2, f2
	lfs      f3, 4(r5)
	lfs      f4, 0x14(r5)
	fmadds   f7, f0, f0, f5
	lfs      f5, 0x24(r5)
	lfs      f6, 8(r5)
	fadds    f31, f8, f7
	lfs      f7, 0x18(r5)
	lfs      f8, 0x28(r5)
	fcmpo    cr0, f31, f9
	ble      lbl_802C5228
	ble      lbl_802C522C
	frsqrte  f9, f31
	fmuls    f31, f9, f31
	b        lbl_802C522C

lbl_802C5228:
	fmr      f31, f9

lbl_802C522C:
	lfs      f9, lbl_8051C588@sda21(r2)
	fcmpo    cr0, f31, f9
	ble      lbl_802C5250
	lfs      f9, lbl_8051C58C@sda21(r2)
	fdivs    f9, f9, f31
	fmuls    f0, f0, f9
	fmuls    f1, f1, f9
	fmuls    f2, f2, f9
	b        lbl_802C5254

lbl_802C5250:
	fmr      f31, f9

lbl_802C5254:
	fmuls    f10, f4, f4
	lfs      f9, lbl_8051C588@sda21(r2)
	fmuls    f11, f5, f5
	fmadds   f10, f3, f3, f10
	fadds    f30, f11, f10
	fcmpo    cr0, f30, f9
	ble      lbl_802C5280
	ble      lbl_802C5284
	frsqrte  f9, f30
	fmuls    f30, f9, f30
	b        lbl_802C5284

lbl_802C5280:
	fmr      f30, f9

lbl_802C5284:
	lfs      f9, lbl_8051C588@sda21(r2)
	fcmpo    cr0, f30, f9
	ble      lbl_802C52A8
	lfs      f9, lbl_8051C58C@sda21(r2)
	fdivs    f9, f9, f30
	fmuls    f3, f3, f9
	fmuls    f4, f4, f9
	fmuls    f5, f5, f9
	b        lbl_802C52AC

lbl_802C52A8:
	fmr      f30, f9

lbl_802C52AC:
	fmuls    f10, f7, f7
	lfs      f9, lbl_8051C588@sda21(r2)
	fmuls    f11, f8, f8
	fmadds   f10, f6, f6, f10
	fadds    f29, f11, f10
	fcmpo    cr0, f29, f9
	ble      lbl_802C52D8
	ble      lbl_802C52DC
	frsqrte  f9, f29
	fmuls    f29, f9, f29
	b        lbl_802C52DC

lbl_802C52D8:
	fmr      f29, f9

lbl_802C52DC:
	lfs      f9, lbl_8051C588@sda21(r2)
	fcmpo    cr0, f29, f9
	ble      lbl_802C5300
	lfs      f9, lbl_8051C58C@sda21(r2)
	fdivs    f9, f9, f29
	fmuls    f6, f6, f9
	fmuls    f7, f7, f9
	fmuls    f8, f8, f9
	b        lbl_802C5304

lbl_802C5300:
	fmr      f29, f9

lbl_802C5304:
	stfs     f0, 0(r5)
	addi     r3, r1, 8
	li       r4, 0x5a
	stfs     f1, 0x10(r5)
	stfs     f2, 0x20(r5)
	stfs     f3, 4(r5)
	stfs     f4, 0x14(r5)
	stfs     f5, 0x24(r5)
	stfs     f6, 8(r5)
	stfs     f7, 0x18(r5)
	stfs     f8, 0x28(r5)
	lfs      f1, 0xc(r31)
	bl       PSMTXRotRad
	lwz      r3, 0x14(r31)
	addi     r4, r1, 8
	mr       r5, r3
	bl       PSMTXConcat
	lwz      r5, 0x14(r31)
	lis      r3, mCurrentMtx__6J3DSys@ha
	addi     r4, r3, mCurrentMtx__6J3DSys@l
	lfs      f0, 0(r5)
	lfs      f1, 0x10(r5)
	fmuls    f0, f0, f31
	lfs      f2, 0x20(r5)
	lfs      f3, 4(r5)
	fmuls    f1, f1, f31
	lfs      f4, 0x14(r5)
	fmuls    f2, f2, f31
	lfs      f5, 0x24(r5)
	fmuls    f3, f3, f30
	lfs      f6, 8(r5)
	fmuls    f4, f4, f30
	lfs      f7, 0x18(r5)
	fmuls    f5, f5, f30
	lfs      f8, 0x28(r5)
	fmuls    f6, f6, f29
	stfs     f0, 0(r5)
	fmuls    f7, f7, f29
	fmuls    f8, f8, f29
	stfs     f1, 0x10(r5)
	stfs     f2, 0x20(r5)
	stfs     f3, 4(r5)
	stfs     f4, 0x14(r5)
	stfs     f5, 0x24(r5)
	stfs     f6, 8(r5)
	stfs     f7, 0x18(r5)
	stfs     f8, 0x28(r5)
	lwz      r3, 0x14(r31)
	bl       PSMTXCopy

lbl_802C53C8:
	psq_l    f31, 104(r1), 0, qr0
	lfd      f31, 0x60(r1)
	psq_l    f30, 88(r1), 0, qr0
	lfd      f30, 0x50(r1)
	psq_l    f29, 72(r1), 0, qr0
	lfd      f29, 0x40(r1)
	lwz      r0, 0x74(r1)
	lwz      r31, 0x3c(r1)
	mtlr     r0
	addi     r1, r1, 0x70
	blr
	*/
}

/*
 * --INFO--
 * Address:	802C53F4
 * Size:	000030
 */
void HoudaiShotGunMgr::finishLockOnEffect() { mEfxSight->fade(); }

/*
 * --INFO--
 * Address:	802C5424
 * Size:	000250
 */
void HoudaiShotGunMgr::setShotGunLockOnPosition()
{
	/*
	stwu     r1, -0x70(r1)
	mflr     r0
	stw      r0, 0x74(r1)
	stfd     f31, 0x60(r1)
	psq_st   f31, 104(r1), 0, qr0
	stfd     f30, 0x50(r1)
	psq_st   f30, 88(r1), 0, qr0
	stfd     f29, 0x40(r1)
	psq_st   f29, 72(r1), 0, qr0
	stw      r31, 0x3c(r1)
	stw      r30, 0x38(r1)
	stw      r29, 0x34(r1)
	mr       r29, r3
	lfs      f0, lbl_8051C588@sda21(r2)
	lwz      r3, 0x14(r3)
	li       r31, 0
	lfs      f30, 0x10(r3)
	lfs      f29, 0x20(r3)
	fmuls    f1, f30, f30
	lfs      f31, 0(r3)
	fmuls    f5, f29, f29
	lfs      f2, 0xc(r3)
	lfs      f3, 0x1c(r3)
	fmadds   f1, f31, f31, f1
	lfs      f4, 0x2c(r3)
	fadds    f1, f5, f1
	fcmpo    cr0, f1, f0
	ble      lbl_802C54A4
	ble      lbl_802C54A8
	frsqrte  f0, f1
	fmuls    f1, f0, f1
	b        lbl_802C54A8

lbl_802C54A4:
	fmr      f1, f0

lbl_802C54A8:
	lfs      f0, lbl_8051C588@sda21(r2)
	fcmpo    cr0, f1, f0
	ble      lbl_802C54C8
	lfs      f0, lbl_8051C58C@sda21(r2)
	fdivs    f0, f0, f1
	fmuls    f31, f31, f0
	fmuls    f30, f30, f0
	fmuls    f29, f29, f0

lbl_802C54C8:
	stfs     f31, 0x24(r29)
	li       r30, 0
	lfs      f0, lbl_8051C590@sda21(r2)
	stfs     f30, 0x28(r29)
	lfs      f1, lbl_8051C5EC@sda21(r2)
	fmuls    f31, f31, f0
	stfs     f29, 0x2c(r29)
	fmuls    f30, f30, f0
	fmuls    f29, f29, f0
	lfs      f0, 0x24(r29)
	fmuls    f0, f0, f1
	stfs     f0, 0x24(r29)
	lfs      f0, 0x28(r29)
	fmuls    f0, f0, f1
	stfs     f0, 0x28(r29)
	lfs      f0, 0x2c(r29)
	fmuls    f0, f0, f1
	stfs     f0, 0x2c(r29)
	lfs      f0, 0x24(r29)
	fadds    f0, f0, f2
	stfs     f0, 0x24(r29)
	lfs      f0, 0x28(r29)
	fadds    f0, f0, f3
	stfs     f0, 0x28(r29)
	lfs      f0, 0x2c(r29)
	fadds    f0, f0, f4
	stfs     f0, 0x2c(r29)

lbl_802C5534:
	lfs      f0, 0x24(r29)
	addi     r4, r29, 0x24
	fadds    f0, f0, f31
	stfs     f0, 0x24(r29)
	lfs      f0, 0x28(r29)
	fadds    f0, f0, f30
	stfs     f0, 0x28(r29)
	lfs      f0, 0x2c(r29)
	fadds    f0, f0, f29
	stfs     f0, 0x2c(r29)
	lwz      r3, mapMgr__4Game@sda21(r13)
	lwz      r12, 4(r3)
	lwz      r12, 0x28(r12)
	mtctr    r12
	bctrl
	lfs      f0, 0x28(r29)
	fcmpo    cr0, f1, f0
	ble      lbl_802C5588
	stfs     f1, 0x28(r29)
	li       r31, 1
	b        lbl_802C5594

lbl_802C5588:
	addi     r30, r30, 1
	cmpwi    r30, 0x3c
	blt      lbl_802C5534

lbl_802C5594:
	clrlwi.  r0, r31, 0x18
	beq      lbl_802C5620
	lis      r3, __vt__Q23efx3Arg@ha
	addi     r4, r1, 8
	addi     r0, r3, __vt__Q23efx3Arg@l
	stw      r0, 8(r1)
	lfs      f0, 0x24(r29)
	stfs     f0, 0xc(r1)
	lfs      f0, 0x28(r29)
	stfs     f0, 0x10(r1)
	lfs      f0, 0x2c(r29)
	stfs     f0, 0x14(r1)
	lwz      r3, 0x30(r29)
	lwz      r12, 0(r3)
	lwz      r12, 8(r12)
	mtctr    r12
	bctrl
	lwz      r3, 0x14(r29)
	addi     r4, r29, 0x24
	addi     r5, r1, 0x18
	lfs      f0, 0(r3)
	stfs     f0, 0x18(r1)
	fneg     f2, f0
	lfs      f0, 0x10(r3)
	stfs     f0, 0x1c(r1)
	fneg     f1, f0
	lfs      f3, 0x20(r3)
	fneg     f0, f3
	stfs     f3, 0x20(r1)
	stfs     f2, 0x18(r1)
	stfs     f1, 0x1c(r1)
	stfs     f0, 0x20(r1)
	lwz      r3, 0x30(r29)
	bl       "setPosNrm__Q23efx11THdamaSightFR10Vector3<f>R10Vector3<f>"
	b        lbl_802C5634

lbl_802C5620:
	lwz      r3, 0x30(r29)
	lwz      r12, 0(r3)
	lwz      r12, 0x10(r12)
	mtctr    r12
	bctrl

lbl_802C5634:
	addi     r4, r29, 0x24
	li       r3, 0x3055
	bl       PSStartSoundVec__FUlP3Vec
	psq_l    f31, 104(r1), 0, qr0
	lfd      f31, 0x60(r1)
	psq_l    f30, 88(r1), 0, qr0
	lfd      f30, 0x50(r1)
	psq_l    f29, 72(r1), 0, qr0
	lfd      f29, 0x40(r1)
	lwz      r31, 0x3c(r1)
	lwz      r30, 0x38(r1)
	lwz      r0, 0x74(r1)
	lwz      r29, 0x34(r1)
	mtlr     r0
	addi     r1, r1, 0x70
	blr
	*/
}

/*
 * --INFO--
 * Address:	802C5674
 * Size:	00009C
 */
void HoudaiShotGunMgr::effectDrawOn()
{
	HoudaiShotGunNode* next1;
	HoudaiShotGunNode* node1 = static_cast<HoudaiShotGunNode*>(_34->mChild);
	while (node1) {
		node1->mEfxShell->endDemoDrawOn();
		next1 = static_cast<HoudaiShotGunNode*>(node1->mNext);
		node1 = next1;
	}

	HoudaiShotGunNode* next2;
	HoudaiShotGunNode* node2 = static_cast<HoudaiShotGunNode*>(_38->mChild);
	while (node2) {
		node2->mEfxShell->endDemoDrawOn();
		next2 = static_cast<HoudaiShotGunNode*>(node2->mNext);
		node2 = next2;
	}

	mEfxSight->endDemoDrawOn();
}

/*
 * --INFO--
 * Address:	802C5710
 * Size:	00009C
 */
void HoudaiShotGunMgr::effectDrawOff()
{
	HoudaiShotGunNode* next1;
	HoudaiShotGunNode* node1 = static_cast<HoudaiShotGunNode*>(_34->mChild);
	while (node1) {
		node1->mEfxShell->startDemoDrawOff();
		next1 = static_cast<HoudaiShotGunNode*>(node1->mNext);
		node1 = next1;
	}

	HoudaiShotGunNode* next2;
	HoudaiShotGunNode* node2 = static_cast<HoudaiShotGunNode*>(_38->mChild);
	while (node2) {
		node2->mEfxShell->startDemoDrawOff();
		next2 = static_cast<HoudaiShotGunNode*>(node2->mNext);
		node2 = next2;
	}

	mEfxSight->startDemoDrawOff();
}

/*
 * --INFO--
 * Address:	802C57AC
 * Size:	000030
 */
void HoudaiShotGunMgr::startStoneStateEffectOff() { mEfxSight->startDemoDrawOff(); }

/*
 * --INFO--
 * Address:	802C57DC
 * Size:	000030
 */
void HoudaiShotGunMgr::finishStoneStateEffectOn() { mEfxSight->endDemoDrawOn(); }

} // namespace Houdai
} // namespace Game
