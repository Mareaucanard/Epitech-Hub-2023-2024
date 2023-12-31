#include "Dolphin/os.h"
#include "Dolphin/ai.h"

static void* SaveStart = nullptr;
static void* SaveEnd   = nullptr;
static BOOL Prepared;

extern u32 BOOT_REGION_START AT_ADDRESS(0x812FDFF0); //(*(u32 *)0x812fdff0)
extern u32 BOOT_REGION_END AT_ADDRESS(0x812FDFEC);   //(*(u32 *)0x812fdfec)

extern void* __OSSavedRegionStart;
extern void* __OSSavedRegionEnd;

typedef struct ApploaderHeader {
	// total size: 0x20
	char date[16];  // offset 0x0, size 0x10
	u32 entry;      // offset 0x10, size 0x4
	u32 size;       // offset 0x14, size 0x4
	u32 rebootSize; // offset 0x18, size 0x4
	u32 reserved2;  // offset 0x1C, size 0x4
} ApploaderHeader;

ApploaderHeader Header;

/*
 * --INFO--
 * Address:	........
 * Size:	000038
 */
BOOL IsStreamEnabled(void)
{
	if (DVDGetCurrentDiskID()->streaming) {
		return TRUE;
	}
	return FALSE;
}

/*
 * --INFO--
 * Address:	800EFF4C
 * Size:	000010
 */
static asm void Run(register u32 addr)
{
	// clang-format off
	nofralloc

	sync
	isync
	mtlr addr
	blr
	// clang-format on
}

/*
 * --INFO--
 * Address:	........
 * Size:	0000D8
 */
void ReadApploader(OSTime time1, OSTime time2)
{
	// this probably needs to be more complicated with a callback input that does the while loop check I think
	if (DVDCheckDisk()) {
		if (OSGetTime() - time1 < time2) {
			__OSDoHotReset(0);
		}
	}
}

/*
 * --INFO--
 * Address:	800EFF5C
 * Size:	00000C
 */
static void Callback(void) { Prepared = TRUE; }

/*
 * --INFO--
 * Address:	800EFF68
 * Size:	000330
 */
void __OSReboot(u32 resetCode, u32 bootDol)
{
	OSContext exceptionContext;
	OSTime time1;
	OSTime time2;
	DVDCommandBlock dvdCmd;
	DVDCommandBlock dvdCmd2;
	DVDCommandBlock dvdCmd3;
	u32 numBytes;
	OSDisableInterrupts();
	*(u32*)OSPhysicalToCached(0x30F0) = resetCode;
	(*(u8*)OSPhysicalToCached(0x30E2) = TRUE);
	*(u32*)BOOT_REGION_START = (u32)SaveStart;
	*(u32*)BOOT_REGION_END   = (u32)SaveEnd;
	OSClearContext(&exceptionContext);
	OSSetCurrentContext(&exceptionContext);
	DVDInit();
	DVDSetAutoInvalidation(TRUE);
	DVDResume();

	Prepared = FALSE;
	__DVDPrepareResetAsync(Callback);

	__OSMaskInterrupts(0xffffffe0);
	__OSUnmaskInterrupts(0x400);
	OSEnableInterrupts();

	time1 = OSGetTime();
	time2 = __OSBusClock;
	do {
		ReadApploader(time1, time2);
	} while (Prepared != TRUE);

	if (!__OSIsGcam) {
		if (IsStreamEnabled()) {
			AISetStreamVolLeft(0);
			AISetStreamVolRight(0);
			DVDCancelStreamAsync(&dvdCmd, nullptr);
			time1 = OSGetTime();
			time2 = __OSBusClock;
			do {
				ReadApploader(time1, time2);
			} while (DVDGetCommandBlockStatus(&dvdCmd));

			AISetStreamPlayState(0);
		}
	}

	DVDReadAbsAsyncPrio(&dvdCmd2, &Header, 32, 0x2440, nullptr, 0);
	time1 = OSGetTime();
	time2 = __OSBusClock;

	do {
		ReadApploader(time1, time2);
	} while (DVDGetCommandBlockStatus(&dvdCmd2));

	numBytes = OSRoundUp32B(Header.size);
	DVDReadAbsAsyncPrio(&dvdCmd3, (void*)(OS_BOOTROM_ADDR), numBytes, Header.entry + 0x20 + 0x2440, nullptr, 0);
	time1 = OSGetTime();
	time2 = __OSBusClock;

	do {
		ReadApploader(time1, time2);
	} while (DVDGetCommandBlockStatus(&dvdCmd2));

	ICInvalidateRange((void*)(OS_BOOTROM_ADDR), numBytes);
	OSDisableInterrupts();
	ICFlashInvalidate();
	Run(OS_BOOTROM_ADDR);
	/*
	.loc_0x0:
	  mflr      r0
	  stw       r0, 0x4(r1)
	  stwu      r1, -0x380(r1)
	  stmw      r27, 0x36C(r1)
	  mr        r27, r3
	  lis       r3, 0x804F
	  addi      r31, r3, 0x66C0
	  bl        -0x134C
	  lwz       r5, -0x7068(r13)
	  lis       r28, 0x8000
	  li        r6, 0x1
	  lwz       r0, -0x7064(r13)
	  lis       r4, 0x8130
	  stw       r27, 0x30F0(r28)
	  addi      r3, r1, 0xA0
	  stb       r6, 0x30E2(r28)
	  stw       r5, -0x2010(r4)
	  stw       r0, -0x2014(r4)
	  bl        -0x2E44
	  addi      r3, r1, 0xA0
	  bl        -0x3014
	  bl        -0x13290
	  li        r3, 0x1
	  bl        -0x11168
	  bl        -0x1115C
	  li        r27, 0
	  lis       r3, 0x800F
	  stw       r27, -0x7060(r13)
	  subi      r3, r3, 0xA4
	  bl        -0x10CD4
	  li        r3, -0x20
	  bl        -0xFE4
	  li        r3, 0x400
	  bl        -0xF64
	  bl        -0x13A4
	  bl        0x2B9C
	  mr        r30, r4
	  mr        r29, r3
	  b         .loc_0x9C

	.loc_0x9C:
	  lwz       r0, 0xF8(r28)
	  xoris     r27, r27, 0x8000
	  rlwinm    r28,r0,30,2,31
	  b         .loc_0xAC

	.loc_0xAC:
	  b         .loc_0xEC

	.loc_0xB0:
	  bl        -0x10E08
	  cmpwi     r3, 0
	  beq-      .loc_0xE4
	  bl        0x2B6C
	  subc      r4, r4, r30
	  subfe     r0, r29, r3
	  xoris     r3, r0, 0x8000
	  subc      r0, r28, r4
	  subfe     r3, r3, r27
	  subfe     r3, r27, r27
	  neg       r3, r3
	  cmpwi     r3, 0
	  beq-      .loc_0xEC

	.loc_0xE4:
	  li        r3, 0
	  bl        0x348

	.loc_0xEC:
	  lwz       r0, -0x7060(r13)
	  cmpwi     r0, 0x1
	  bne+      .loc_0xB0
	  lwz       r0, -0x70E4(r13)
	  cmpwi     r0, 0
	  bne-      .loc_0x1C4
	  bl        -0x10E64
	  lbz       r0, 0x8(r3)
	  cmplwi    r0, 0
	  beq-      .loc_0x11C
	  li        r0, 0x1
	  b         .loc_0x120

	.loc_0x11C:
	  li        r0, 0

	.loc_0x120:
	  cmpwi     r0, 0
	  beq-      .loc_0x1C4
	  li        r3, 0
	  bl        0x6B8C
	  li        r3, 0
	  bl        0x6BB0
	  addi      r3, r1, 0x70
	  li        r4, 0
	  bl        -0x11514
	  bl        0x2AE4
	  mr        r30, r4
	  mr        r29, r3
	  b         .loc_0x154

	.loc_0x154:
	  lis       r3, 0x8000
	  lwz       r3, 0xF8(r3)
	  li        r0, 0
	  xoris     r27, r0, 0x8000
	  rlwinm    r28,r3,30,2,31
	  b         .loc_0x16C

	.loc_0x16C:
	  b         .loc_0x1AC

	.loc_0x170:
	  bl        -0x10EC8
	  cmpwi     r3, 0
	  beq-      .loc_0x1A4
	  bl        0x2AAC
	  subc      r4, r4, r30
	  subfe     r0, r29, r3
	  xoris     r3, r0, 0x8000
	  subc      r0, r28, r4
	  subfe     r3, r3, r27
	  subfe     r3, r27, r27
	  neg       r3, r3
	  cmpwi     r3, 0
	  beq-      .loc_0x1AC

	.loc_0x1A4:
	  li        r3, 0
	  bl        0x288

	.loc_0x1AC:
	  addi      r3, r1, 0x70
	  bl        -0x113B4
	  cmpwi     r3, 0
	  bne+      .loc_0x170
	  li        r3, 0
	  bl        0x6838

	.loc_0x1C4:
	  mr        r4, r31
	  addi      r3, r1, 0x40
	  li        r5, 0x20
	  li        r6, 0x2440
	  li        r7, 0
	  li        r8, 0
	  bl        -0x11830
	  bl        0x2A48
	  mr        r27, r4
	  mr        r30, r3
	  b         .loc_0x1F0

	.loc_0x1F0:
	  lis       r3, 0x8000
	  lwz       r3, 0xF8(r3)
	  li        r0, 0
	  xoris     r28, r0, 0x8000
	  rlwinm    r29,r3,30,2,31
	  b         .loc_0x208

	.loc_0x208:
	  b         .loc_0x248

	.loc_0x20C:
	  bl        -0x10F64
	  cmpwi     r3, 0
	  beq-      .loc_0x240
	  bl        0x2A10
	  subc      r4, r4, r27
	  subfe     r0, r30, r3
	  xoris     r3, r0, 0x8000
	  subc      r0, r29, r4
	  subfe     r3, r3, r28
	  subfe     r3, r28, r28
	  neg       r3, r3
	  cmpwi     r3, 0
	  beq-      .loc_0x248

	.loc_0x240:
	  li        r3, 0
	  bl        0x1EC

	.loc_0x248:
	  addi      r3, r1, 0x40
	  bl        -0x11450
	  cmpwi     r3, 0
	  bne+      .loc_0x20C
	  lwz       r5, 0x18(r31)
	  addi      r3, r1, 0x10
	  lwz       r6, 0x14(r31)
	  lis       r4, 0x8130
	  addi      r0, r5, 0x1F
	  addi      r6, r6, 0x20
	  rlwinm    r27,r0,0,0,26
	  mr        r5, r27
	  addi      r6, r6, 0x2440
	  li        r7, 0
	  li        r8, 0
	  bl        -0x118D8
	  bl        0x29A0
	  mr        r28, r4
	  mr        r29, r3
	  b         .loc_0x298

	.loc_0x298:
	  lis       r3, 0x8000
	  lwz       r3, 0xF8(r3)
	  li        r0, 0
	  xoris     r31, r0, 0x8000
	  rlwinm    r30,r3,30,2,31
	  b         .loc_0x2B0

	.loc_0x2B0:
	  b         .loc_0x2F0

	.loc_0x2B4:
	  bl        -0x1100C
	  cmpwi     r3, 0
	  beq-      .loc_0x2E8
	  bl        0x2968
	  subc      r4, r4, r28
	  subfe     r0, r29, r3
	  xoris     r3, r0, 0x8000
	  subc      r0, r30, r4
	  subfe     r3, r3, r31
	  subfe     r3, r31, r31
	  neg       r3, r3
	  cmpwi     r3, 0
	  beq-      .loc_0x2F0

	.loc_0x2E8:
	  li        r3, 0
	  bl        0x144

	.loc_0x2F0:
	  addi      r3, r1, 0x10
	  bl        -0x114F8
	  cmpwi     r3, 0
	  bne+      .loc_0x2B4
	  lis       r3, 0x8130
	  mr        r4, r27
	  bl        -0x3A74
	  bl        -0x163C
	  bl        -0x3A48
	  lis       r3, 0x8130
	  bl        -0x334
	  lmw       r27, 0x36C(r1)
	  lwz       r0, 0x384(r1)
	  addi      r1, r1, 0x380
	  mtlr      r0
	  blr
	*/
}

/*
 * --INFO--
 * Address:	800F0298
 * Size:	00000C
 */
void OSSetSaveRegion(void* start, void* end)
{
	SaveStart = start;
	SaveEnd   = end;
}

/*
 * --INFO--
 * Address:	........
 * Size:	000014
 */
void OSGetSaveRegion(void** start, void** end)
{
	*start = SaveStart;
	*end   = SaveEnd;
}

/*
 * --INFO--
 * Address:	........
 * Size:	000014
 */
void OSGetSavedRegion(void** start, void** end)
{
	*start = __OSSavedRegionStart;
	*end   = __OSSavedRegionEnd;
}
