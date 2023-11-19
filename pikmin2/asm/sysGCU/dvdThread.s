.include "macros.inc"
.section .rodata  # 0x804732E0 - 0x8049E220
.balign 8
.obj lbl_80499C18, local
	.asciz "dvdThread.cpp"
.endobj lbl_80499C18
.balign 4
.obj lbl_80499C28, local
	.asciz "P2Assert"
.endobj lbl_80499C28

.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 8
.obj __vt__9DvdThread, global
	.4byte 0
	.4byte 0
	.4byte __dt__9DvdThreadFv
	.4byte run__9DvdThreadFv
.endobj __vt__9DvdThread

.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 8
.obj lbl_805204B0, local
	.asciz "arc"
.endobj lbl_805204B0

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.fn __ct__16DvdThreadCommandFv, global
/* 80424818 00421758  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042481C 0042175C  7C 08 02 A6 */	mflr r0
/* 80424820 00421760  90 01 00 14 */	stw r0, 0x14(r1)
/* 80424824 00421764  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80424828 00421768  7C 7F 1B 78 */	mr r31, r3
/* 8042482C 0042176C  7F E4 FB 78 */	mr r4, r31
/* 80424830 00421770  38 64 00 5C */	addi r3, r4, 0x5c
/* 80424834 00421774  4B C0 1F 85 */	bl __ct__10JSUPtrLinkFPv
/* 80424838 00421778  38 A0 00 00 */	li r5, 0
/* 8042483C 0042177C  38 80 00 01 */	li r4, 1
/* 80424840 00421780  90 BF 00 00 */	stw r5, 0(r31)
/* 80424844 00421784  38 00 00 20 */	li r0, 0x20
/* 80424848 00421788  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8042484C 0042178C  90 9F 00 04 */	stw r4, 4(r31)
/* 80424850 00421790  90 BF 00 08 */	stw r5, 8(r31)
/* 80424854 00421794  90 BF 00 0C */	stw r5, 0xc(r31)
/* 80424858 00421798  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8042485C 0042179C  90 9F 00 14 */	stw r4, 0x14(r31)
/* 80424860 004217A0  90 BF 00 18 */	stw r5, 0x18(r31)
/* 80424864 004217A4  4B CC B2 CD */	bl OSInitMutex
/* 80424868 004217A8  38 00 00 00 */	li r0, 0
/* 8042486C 004217AC  38 7F 00 38 */	addi r3, r31, 0x38
/* 80424870 004217B0  90 1F 00 34 */	stw r0, 0x34(r31)
/* 80424874 004217B4  38 9F 00 58 */	addi r4, r31, 0x58
/* 80424878 004217B8  38 A0 00 01 */	li r5, 1
/* 8042487C 004217BC  4B CC AC 41 */	bl OSInitMessageQueue
/* 80424880 004217C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80424884 004217C4  7F E3 FB 78 */	mr r3, r31
/* 80424888 004217C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042488C 004217CC  7C 08 03 A6 */	mtlr r0
/* 80424890 004217D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80424894 004217D4  4E 80 00 20 */	blr 
.endfn __ct__16DvdThreadCommandFv

.fn loadUseCallBack__16DvdThreadCommandFP9IDelegate, global
/* 80424898 004217D8  90 83 00 00 */	stw r4, 0(r3)
/* 8042489C 004217DC  38 80 00 02 */	li r4, 2
/* 804248A0 004217E0  38 00 00 00 */	li r0, 0
/* 804248A4 004217E4  90 83 00 04 */	stw r4, 4(r3)
/* 804248A8 004217E8  90 03 00 08 */	stw r0, 8(r3)
/* 804248AC 004217EC  90 03 00 0C */	stw r0, 0xc(r3)
/* 804248B0 004217F0  90 03 00 18 */	stw r0, 0x18(r3)
/* 804248B4 004217F4  4E 80 00 20 */	blr 
.endfn loadUseCallBack__16DvdThreadCommandFP9IDelegate

.fn __ct__9DvdThreadFUlii, global
/* 804248B8 004217F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804248BC 004217FC  7C 08 02 A6 */	mflr r0
/* 804248C0 00421800  90 01 00 14 */	stw r0, 0x14(r1)
/* 804248C4 00421804  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804248C8 00421808  7C 7F 1B 78 */	mr r31, r3
/* 804248CC 0042180C  48 00 05 4D */	bl __ct__9AppThreadFUlii
/* 804248D0 00421810  3C 80 80 4F */	lis r4, __vt__9DvdThread@ha
/* 804248D4 00421814  38 7F 00 7C */	addi r3, r31, 0x7c
/* 804248D8 00421818  38 04 BD 88 */	addi r0, r4, __vt__9DvdThread@l
/* 804248DC 0042181C  90 1F 00 00 */	stw r0, 0(r31)
/* 804248E0 00421820  4B C0 1F F1 */	bl initiate__10JSUPtrListFv
/* 804248E4 00421824  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 804248E8 00421828  4B CC DC 0D */	bl OSResumeThread
/* 804248EC 0042182C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804248F0 00421830  7F E3 FB 78 */	mr r3, r31
/* 804248F4 00421834  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804248F8 00421838  7C 08 03 A6 */	mtlr r0
/* 804248FC 0042183C  38 21 00 10 */	addi r1, r1, 0x10
/* 80424900 00421840  4E 80 00 20 */	blr 
.endfn __ct__9DvdThreadFUlii

.fn run__9DvdThreadFv, global
/* 80424904 00421844  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80424908 00421848  7C 08 02 A6 */	mflr r0
/* 8042490C 0042184C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80424910 00421850  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80424914 00421854  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80424918 00421858  7C 7E 1B 78 */	mr r30, r3
/* 8042491C 0042185C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80424920 00421860  3F A0 44 54 */	lis r29, 0x4454
.L_80424924:
/* 80424924 00421864  38 7E 00 30 */	addi r3, r30, 0x30
/* 80424928 00421868  38 81 00 0C */	addi r4, r1, 0xc
/* 8042492C 0042186C  38 A0 00 01 */	li r5, 1
/* 80424930 00421870  4B CC AC B5 */	bl OSReceiveMessage
/* 80424934 00421874  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80424938 00421878  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8042493C 0042187C  4B CC B2 2D */	bl OSLockMutex
/* 80424940 00421880  38 00 00 01 */	li r0, 1
/* 80424944 00421884  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80424948 00421888  80 1F 00 04 */	lwz r0, 4(r31)
/* 8042494C 0042188C  2C 00 00 01 */	cmpwi r0, 1
/* 80424950 00421890  40 82 00 98 */	bne .L_804249E8
/* 80424954 00421894  80 7F 00 08 */	lwz r3, 8(r31)
/* 80424958 00421898  4B CA 5F B9 */	bl strlen
/* 8042495C 0042189C  80 1F 00 08 */	lwz r0, 8(r31)
/* 80424960 004218A0  38 A3 FF FF */	addi r5, r3, -1
/* 80424964 004218A4  7C 80 2A 14 */	add r4, r0, r5
.L_80424968:
/* 80424968 004218A8  88 04 00 00 */	lbz r0, 0(r4)
/* 8042496C 004218AC  2C 00 00 2E */	cmpwi r0, 0x2e
/* 80424970 004218B0  41 82 00 10 */	beq .L_80424980
/* 80424974 004218B4  38 84 FF FF */	addi r4, r4, -1
/* 80424978 004218B8  38 A5 FF FF */	addi r5, r5, -1
/* 8042497C 004218BC  4B FF FF EC */	b .L_80424968
.L_80424980:
/* 80424980 004218C0  38 03 FF FF */	addi r0, r3, -1
/* 80424984 004218C4  7C 05 00 50 */	subf r0, r5, r0
/* 80424988 004218C8  28 00 00 04 */	cmplwi r0, 4
/* 8042498C 004218CC  40 80 00 48 */	bge .L_804249D4
/* 80424990 004218D0  38 E1 00 08 */	addi r7, r1, 8
/* 80424994 004218D4  38 C0 00 00 */	li r6, 0
/* 80424998 004218D8  48 00 00 20 */	b .L_804249B8
.L_8042499C:
/* 8042499C 004218DC  80 1F 00 08 */	lwz r0, 8(r31)
/* 804249A0 004218E0  7C 80 32 14 */	add r4, r0, r6
/* 804249A4 004218E4  38 C6 00 01 */	addi r6, r6, 1
/* 804249A8 004218E8  38 04 00 01 */	addi r0, r4, 1
/* 804249AC 004218EC  7C 05 00 AE */	lbzx r0, r5, r0
/* 804249B0 004218F0  98 07 00 00 */	stb r0, 0(r7)
/* 804249B4 004218F4  38 E7 00 01 */	addi r7, r7, 1
.L_804249B8:
/* 804249B8 004218F8  7C 05 32 14 */	add r0, r5, r6
/* 804249BC 004218FC  7C 03 00 40 */	cmplw r3, r0
/* 804249C0 00421900  41 81 FF DC */	bgt .L_8042499C
/* 804249C4 00421904  38 61 00 08 */	addi r3, r1, 8
/* 804249C8 00421908  38 00 00 00 */	li r0, 0
/* 804249CC 0042190C  7C 03 31 AE */	stbx r0, r3, r6
/* 804249D0 00421910  48 00 00 0C */	b .L_804249DC
.L_804249D4:
/* 804249D4 00421914  38 00 00 00 */	li r0, 0
/* 804249D8 00421918  98 01 00 08 */	stb r0, 8(r1)
.L_804249DC:
/* 804249DC 0042191C  38 81 00 08 */	addi r4, r1, 8
/* 804249E0 00421920  38 62 21 50 */	addi r3, r2, lbl_805204B0@sda21
/* 804249E4 00421924  4B CA 5C DD */	bl strcmp
.L_804249E8:
/* 804249E8 00421928  80 1F 00 04 */	lwz r0, 4(r31)
/* 804249EC 0042192C  2C 00 00 01 */	cmpwi r0, 1
/* 804249F0 00421930  41 82 00 5C */	beq .L_80424A4C
/* 804249F4 00421934  40 80 00 10 */	bge .L_80424A04
/* 804249F8 00421938  2C 00 00 00 */	cmpwi r0, 0
/* 804249FC 0042193C  40 80 00 60 */	bge .L_80424A5C
/* 80424A00 00421940  48 00 00 68 */	b .L_80424A68
.L_80424A04:
/* 80424A04 00421944  2C 00 00 03 */	cmpwi r0, 3
/* 80424A08 00421948  40 80 00 60 */	bge .L_80424A68
/* 80424A0C 0042194C  80 1F 00 00 */	lwz r0, 0(r31)
/* 80424A10 00421950  28 00 00 00 */	cmplwi r0, 0
/* 80424A14 00421954  40 82 00 20 */	bne .L_80424A34
/* 80424A18 00421958  3C 60 80 4A */	lis r3, lbl_80499C18@ha
/* 80424A1C 0042195C  3C A0 80 4A */	lis r5, lbl_80499C28@ha
/* 80424A20 00421960  38 63 9C 18 */	addi r3, r3, lbl_80499C18@l
/* 80424A24 00421964  38 80 00 84 */	li r4, 0x84
/* 80424A28 00421968  38 A5 9C 28 */	addi r5, r5, lbl_80499C28@l
/* 80424A2C 0042196C  4C C6 31 82 */	crclr 6
/* 80424A30 00421970  4B C0 5C 11 */	bl panic_f__12JUTExceptionFPCciPCce
.L_80424A34:
/* 80424A34 00421974  80 7F 00 00 */	lwz r3, 0(r31)
/* 80424A38 00421978  81 83 00 00 */	lwz r12, 0(r3)
/* 80424A3C 0042197C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80424A40 00421980  7D 89 03 A6 */	mtctr r12
/* 80424A44 00421984  4E 80 04 21 */	bctrl 
/* 80424A48 00421988  48 00 00 20 */	b .L_80424A68
.L_80424A4C:
/* 80424A4C 0042198C  7F C3 F3 78 */	mr r3, r30
/* 80424A50 00421990  7F E4 FB 78 */	mr r4, r31
/* 80424A54 00421994  48 00 00 45 */	bl loadArchive__9DvdThreadFP16DvdThreadCommand
/* 80424A58 00421998  48 00 00 10 */	b .L_80424A68
.L_80424A5C:
/* 80424A5C 0042199C  7F C3 F3 78 */	mr r3, r30
/* 80424A60 004219A0  7F E4 FB 78 */	mr r4, r31
/* 80424A64 004219A4  48 00 00 D1 */	bl loadFile__9DvdThreadFP16DvdThreadCommand
.L_80424A68:
/* 80424A68 004219A8  38 00 00 02 */	li r0, 2
/* 80424A6C 004219AC  38 7F 00 38 */	addi r3, r31, 0x38
/* 80424A70 004219B0  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80424A74 004219B4  38 9D 4C 46 */	addi r4, r29, 0x4c46
/* 80424A78 004219B8  38 A0 00 00 */	li r5, 0
/* 80424A7C 004219BC  4B CC AA A1 */	bl OSSendMessage
/* 80424A80 004219C0  38 7E 00 7C */	addi r3, r30, 0x7c
/* 80424A84 004219C4  38 9F 00 5C */	addi r4, r31, 0x5c
/* 80424A88 004219C8  4B C0 21 9D */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 80424A8C 004219CC  38 7F 00 1C */	addi r3, r31, 0x1c
/* 80424A90 004219D0  4B CC B1 B5 */	bl OSUnlockMutex
/* 80424A94 004219D4  4B FF FE 90 */	b .L_80424924
.endfn run__9DvdThreadFv

.fn loadArchive__9DvdThreadFP16DvdThreadCommand, global
/* 80424A98 004219D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80424A9C 004219DC  7C 08 02 A6 */	mflr r0
/* 80424AA0 004219E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80424AA4 004219E4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80424AA8 004219E8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80424AAC 004219EC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80424AB0 004219F0  7C 9D 23 78 */	mr r29, r4
/* 80424AB4 004219F4  80 64 00 34 */	lwz r3, 0x34(r4)
/* 80424AB8 004219F8  4B BF EA ED */	bl becomeCurrentHeap__7JKRHeapFv
/* 80424ABC 004219FC  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 80424AC0 00421A00  7C 64 1B 78 */	mr r4, r3
/* 80424AC4 00421A04  80 7D 00 08 */	lwz r3, 8(r29)
/* 80424AC8 00421A08  7C 9E 23 78 */	mr r30, r4
/* 80424ACC 00421A0C  2C 00 00 01 */	cmpwi r0, 1
/* 80424AD0 00421A10  80 BD 00 34 */	lwz r5, 0x34(r29)
/* 80424AD4 00421A14  38 80 00 01 */	li r4, 1
/* 80424AD8 00421A18  38 C0 00 02 */	li r6, 2
/* 80424ADC 00421A1C  40 82 00 08 */	bne .L_80424AE4
/* 80424AE0 00421A20  38 C0 00 01 */	li r6, 1
.L_80424AE4:
/* 80424AE4 00421A24  4B BF 66 4D */	bl mount__10JKRArchiveFPCcQ210JKRArchive10EMountModeP7JKRHeapQ210JKRArchive15EMountDirection
/* 80424AE8 00421A28  7C 7F 1B 79 */	or. r31, r3, r3
/* 80424AEC 00421A2C  40 82 00 20 */	bne .L_80424B0C
/* 80424AF0 00421A30  3C 60 80 4A */	lis r3, lbl_80499C18@ha
/* 80424AF4 00421A34  3C A0 80 4A */	lis r5, lbl_80499C28@ha
/* 80424AF8 00421A38  38 63 9C 18 */	addi r3, r3, lbl_80499C18@l
/* 80424AFC 00421A3C  38 80 01 13 */	li r4, 0x113
/* 80424B00 00421A40  38 A5 9C 28 */	addi r5, r5, lbl_80499C28@l
/* 80424B04 00421A44  4C C6 31 82 */	crclr 6
/* 80424B08 00421A48  4B C0 5B 39 */	bl panic_f__12JUTExceptionFPCciPCce
.L_80424B0C:
/* 80424B0C 00421A4C  93 FD 00 0C */	stw r31, 0xc(r29)
/* 80424B10 00421A50  7F C3 F3 78 */	mr r3, r30
/* 80424B14 00421A54  4B BF EA 91 */	bl becomeCurrentHeap__7JKRHeapFv
/* 80424B18 00421A58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80424B1C 00421A5C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80424B20 00421A60  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80424B24 00421A64  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80424B28 00421A68  7C 08 03 A6 */	mtlr r0
/* 80424B2C 00421A6C  38 21 00 20 */	addi r1, r1, 0x20
/* 80424B30 00421A70  4E 80 00 20 */	blr 
.endfn loadArchive__9DvdThreadFP16DvdThreadCommand

.fn loadFile__9DvdThreadFP16DvdThreadCommand, global
/* 80424B34 00421A74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80424B38 00421A78  7C 08 02 A6 */	mflr r0
/* 80424B3C 00421A7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80424B40 00421A80  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 80424B44 00421A84  7C 9B 23 78 */	mr r27, r4
/* 80424B48 00421A88  3B E0 FF E0 */	li r31, -32
/* 80424B4C 00421A8C  80 04 00 14 */	lwz r0, 0x14(r4)
/* 80424B50 00421A90  2C 00 00 01 */	cmpwi r0, 1
/* 80424B54 00421A94  40 82 00 08 */	bne .L_80424B5C
/* 80424B58 00421A98  3B E0 00 20 */	li r31, 0x20
.L_80424B5C:
/* 80424B5C 00421A9C  80 7B 00 34 */	lwz r3, 0x34(r27)
/* 80424B60 00421AA0  4B BF EA 45 */	bl becomeCurrentHeap__7JKRHeapFv
/* 80424B64 00421AA4  83 DB 00 08 */	lwz r30, 8(r27)
/* 80424B68 00421AA8  7C 7C 1B 78 */	mr r28, r3
/* 80424B6C 00421AAC  80 8D 88 28 */	lwz r4, sSystemHeap__7JKRHeap@sda21(r13)
/* 80424B70 00421AB0  38 60 00 F8 */	li r3, 0xf8
/* 80424B74 00421AB4  38 A0 00 00 */	li r5, 0
/* 80424B78 00421AB8  4B BF F3 C9 */	bl __nw__FUlP7JKRHeapi
/* 80424B7C 00421ABC  7C 7D 1B 79 */	or. r29, r3, r3
/* 80424B80 00421AC0  41 82 00 10 */	beq .L_80424B90
/* 80424B84 00421AC4  7F C4 F3 78 */	mr r4, r30
/* 80424B88 00421AC8  4B BF 85 A5 */	bl __ct__10JKRDvdFileFPCc
/* 80424B8C 00421ACC  7C 7D 1B 78 */	mr r29, r3
.L_80424B90:
/* 80424B90 00421AD0  28 1D 00 00 */	cmplwi r29, 0
/* 80424B94 00421AD4  40 82 00 20 */	bne .L_80424BB4
/* 80424B98 00421AD8  3C 60 80 4A */	lis r3, lbl_80499C18@ha
/* 80424B9C 00421ADC  3C A0 80 4A */	lis r5, lbl_80499C28@ha
/* 80424BA0 00421AE0  38 63 9C 18 */	addi r3, r3, lbl_80499C18@l
/* 80424BA4 00421AE4  38 80 01 5A */	li r4, 0x15a
/* 80424BA8 00421AE8  38 A5 9C 28 */	addi r5, r5, lbl_80499C28@l
/* 80424BAC 00421AEC  4C C6 31 82 */	crclr 6
/* 80424BB0 00421AF0  4B C0 5A 91 */	bl panic_f__12JUTExceptionFPCciPCce
.L_80424BB4:
/* 80424BB4 00421AF4  7F A3 EB 78 */	mr r3, r29
/* 80424BB8 00421AF8  81 9D 00 00 */	lwz r12, 0(r29)
/* 80424BBC 00421AFC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80424BC0 00421B00  7D 89 03 A6 */	mtctr r12
/* 80424BC4 00421B04  4E 80 04 21 */	bctrl 
/* 80424BC8 00421B08  7F E4 FB 78 */	mr r4, r31
/* 80424BCC 00421B0C  7C 7E 1B 78 */	mr r30, r3
/* 80424BD0 00421B10  4B BF F4 29 */	bl __nwa__FUli
/* 80424BD4 00421B14  7C 60 1B 78 */	mr r0, r3
/* 80424BD8 00421B18  7F A3 EB 78 */	mr r3, r29
/* 80424BDC 00421B1C  81 9D 00 00 */	lwz r12, 0(r29)
/* 80424BE0 00421B20  7C 1F 03 78 */	mr r31, r0
/* 80424BE4 00421B24  7F E4 FB 78 */	mr r4, r31
/* 80424BE8 00421B28  7F C5 F3 78 */	mr r5, r30
/* 80424BEC 00421B2C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80424BF0 00421B30  38 C0 00 00 */	li r6, 0
/* 80424BF4 00421B34  7D 89 03 A6 */	mtctr r12
/* 80424BF8 00421B38  4E 80 04 21 */	bctrl 
/* 80424BFC 00421B3C  28 1D 00 00 */	cmplwi r29, 0
/* 80424C00 00421B40  41 82 00 1C */	beq .L_80424C1C
/* 80424C04 00421B44  7F A3 EB 78 */	mr r3, r29
/* 80424C08 00421B48  38 80 00 01 */	li r4, 1
/* 80424C0C 00421B4C  81 9D 00 00 */	lwz r12, 0(r29)
/* 80424C10 00421B50  81 8C 00 08 */	lwz r12, 8(r12)
/* 80424C14 00421B54  7D 89 03 A6 */	mtctr r12
/* 80424C18 00421B58  4E 80 04 21 */	bctrl 
.L_80424C1C:
/* 80424C1C 00421B5C  93 FB 00 0C */	stw r31, 0xc(r27)
/* 80424C20 00421B60  7F 83 E3 78 */	mr r3, r28
/* 80424C24 00421B64  4B BF E9 81 */	bl becomeCurrentHeap__7JKRHeapFv
/* 80424C28 00421B68  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 80424C2C 00421B6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80424C30 00421B70  7C 08 03 A6 */	mtlr r0
/* 80424C34 00421B74  38 21 00 20 */	addi r1, r1, 0x20
/* 80424C38 00421B78  4E 80 00 20 */	blr 
.endfn loadFile__9DvdThreadFP16DvdThreadCommand

.fn sendCommand__9DvdThreadFP16DvdThreadCommand, global
/* 80424C3C 00421B7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80424C40 00421B80  7C 08 02 A6 */	mflr r0
/* 80424C44 00421B84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80424C48 00421B88  38 00 00 00 */	li r0, 0
/* 80424C4C 00421B8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80424C50 00421B90  7C 9F 23 78 */	mr r31, r4
/* 80424C54 00421B94  93 C1 00 08 */	stw r30, 8(r1)
/* 80424C58 00421B98  7C 7E 1B 78 */	mr r30, r3
/* 80424C5C 00421B9C  38 7E 00 7C */	addi r3, r30, 0x7c
/* 80424C60 00421BA0  90 04 00 18 */	stw r0, 0x18(r4)
/* 80424C64 00421BA4  38 9F 00 5C */	addi r4, r31, 0x5c
/* 80424C68 00421BA8  4B C0 1C 7D */	bl append__10JSUPtrListFP10JSUPtrLink
.L_80424C6C:
/* 80424C6C 00421BAC  7F E4 FB 78 */	mr r4, r31
/* 80424C70 00421BB0  38 7E 00 30 */	addi r3, r30, 0x30
/* 80424C74 00421BB4  38 A0 00 00 */	li r5, 0
/* 80424C78 00421BB8  4B CC A8 A5 */	bl OSSendMessage
/* 80424C7C 00421BBC  2C 03 00 00 */	cmpwi r3, 0
/* 80424C80 00421BC0  41 82 FF EC */	beq .L_80424C6C
/* 80424C84 00421BC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80424C88 00421BC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80424C8C 00421BCC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80424C90 00421BD0  7C 08 03 A6 */	mtlr r0
/* 80424C94 00421BD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80424C98 00421BD8  4E 80 00 20 */	blr 
.endfn sendCommand__9DvdThreadFP16DvdThreadCommand

.fn sync__9DvdThreadFP16DvdThreadCommandQ29DvdThread14ESyncBlockFlag, global
/* 80424C9C 00421BDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80424CA0 00421BE0  7C 08 02 A6 */	mflr r0
/* 80424CA4 00421BE4  2C 05 00 00 */	cmpwi r5, 0
/* 80424CA8 00421BE8  38 60 00 00 */	li r3, 0
/* 80424CAC 00421BEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80424CB0 00421BF0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80424CB4 00421BF4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80424CB8 00421BF8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80424CBC 00421BFC  7C 9D 23 78 */	mr r29, r4
/* 80424CC0 00421C00  40 82 00 60 */	bne .L_80424D20
/* 80424CC4 00421C04  3C 80 80 4A */	lis r4, lbl_80499C18@ha
/* 80424CC8 00421C08  3C 60 80 4A */	lis r3, lbl_80499C28@ha
/* 80424CCC 00421C0C  3B C4 9C 18 */	addi r30, r4, lbl_80499C18@l
/* 80424CD0 00421C10  3B E3 9C 28 */	addi r31, r3, lbl_80499C28@l
/* 80424CD4 00421C14  48 00 00 38 */	b .L_80424D0C
.L_80424CD8:
/* 80424CD8 00421C18  38 7D 00 38 */	addi r3, r29, 0x38
/* 80424CDC 00421C1C  38 81 00 08 */	addi r4, r1, 8
/* 80424CE0 00421C20  38 A0 00 01 */	li r5, 1
/* 80424CE4 00421C24  4B CC A9 01 */	bl OSReceiveMessage
/* 80424CE8 00421C28  80 61 00 08 */	lwz r3, 8(r1)
/* 80424CEC 00421C2C  3C 03 BB AC */	subis r0, r3, 0x4454
/* 80424CF0 00421C30  28 00 4C 46 */	cmplwi r0, 0x4c46
/* 80424CF4 00421C34  41 82 00 18 */	beq .L_80424D0C
/* 80424CF8 00421C38  7F C3 F3 78 */	mr r3, r30
/* 80424CFC 00421C3C  7F E5 FB 78 */	mr r5, r31
/* 80424D00 00421C40  38 80 01 8C */	li r4, 0x18c
/* 80424D04 00421C44  4C C6 31 82 */	crclr 6
/* 80424D08 00421C48  4B C0 59 39 */	bl panic_f__12JUTExceptionFPCciPCce
.L_80424D0C:
/* 80424D0C 00421C4C  80 1D 00 18 */	lwz r0, 0x18(r29)
/* 80424D10 00421C50  2C 00 00 02 */	cmpwi r0, 2
/* 80424D14 00421C54  40 82 FF C4 */	bne .L_80424CD8
/* 80424D18 00421C58  38 60 00 01 */	li r3, 1
/* 80424D1C 00421C5C  48 00 00 14 */	b .L_80424D30
.L_80424D20:
/* 80424D20 00421C60  80 1D 00 18 */	lwz r0, 0x18(r29)
/* 80424D24 00421C64  2C 00 00 02 */	cmpwi r0, 2
/* 80424D28 00421C68  40 82 00 08 */	bne .L_80424D30
/* 80424D2C 00421C6C  38 60 00 01 */	li r3, 1
.L_80424D30:
/* 80424D30 00421C70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80424D34 00421C74  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80424D38 00421C78  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80424D3C 00421C7C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80424D40 00421C80  7C 08 03 A6 */	mtlr r0
/* 80424D44 00421C84  38 21 00 20 */	addi r1, r1, 0x20
/* 80424D48 00421C88  4E 80 00 20 */	blr 
.endfn sync__9DvdThreadFP16DvdThreadCommandQ29DvdThread14ESyncBlockFlag

.fn syncAll__9DvdThreadFQ29DvdThread14ESyncBlockFlag, global
/* 80424D4C 00421C8C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80424D50 00421C90  7C 08 02 A6 */	mflr r0
/* 80424D54 00421C94  90 01 00 34 */	stw r0, 0x34(r1)
/* 80424D58 00421C98  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 80424D5C 00421C9C  7C 9A 23 78 */	mr r26, r4
/* 80424D60 00421CA0  3B 60 00 00 */	li r27, 0
/* 80424D64 00421CA4  83 83 00 7C */	lwz r28, 0x7c(r3)
/* 80424D68 00421CA8  48 00 00 90 */	b .L_80424DF8
.L_80424D6C:
/* 80424D6C 00421CAC  2C 1A 00 00 */	cmpwi r26, 0
/* 80424D70 00421CB0  83 BC 00 00 */	lwz r29, 0(r28)
/* 80424D74 00421CB4  38 60 00 00 */	li r3, 0
/* 80424D78 00421CB8  40 82 00 60 */	bne .L_80424DD8
/* 80424D7C 00421CBC  3C 80 80 4A */	lis r4, lbl_80499C18@ha
/* 80424D80 00421CC0  3C 60 80 4A */	lis r3, lbl_80499C28@ha
/* 80424D84 00421CC4  3B C4 9C 18 */	addi r30, r4, lbl_80499C18@l
/* 80424D88 00421CC8  3B E3 9C 28 */	addi r31, r3, lbl_80499C28@l
/* 80424D8C 00421CCC  48 00 00 38 */	b .L_80424DC4
.L_80424D90:
/* 80424D90 00421CD0  38 7D 00 38 */	addi r3, r29, 0x38
/* 80424D94 00421CD4  38 81 00 08 */	addi r4, r1, 8
/* 80424D98 00421CD8  38 A0 00 01 */	li r5, 1
/* 80424D9C 00421CDC  4B CC A8 49 */	bl OSReceiveMessage
/* 80424DA0 00421CE0  80 61 00 08 */	lwz r3, 8(r1)
/* 80424DA4 00421CE4  3C 03 BB AC */	subis r0, r3, 0x4454
/* 80424DA8 00421CE8  28 00 4C 46 */	cmplwi r0, 0x4c46
/* 80424DAC 00421CEC  41 82 00 18 */	beq .L_80424DC4
/* 80424DB0 00421CF0  7F C3 F3 78 */	mr r3, r30
/* 80424DB4 00421CF4  7F E5 FB 78 */	mr r5, r31
/* 80424DB8 00421CF8  38 80 01 8C */	li r4, 0x18c
/* 80424DBC 00421CFC  4C C6 31 82 */	crclr 6
/* 80424DC0 00421D00  4B C0 58 81 */	bl panic_f__12JUTExceptionFPCciPCce
.L_80424DC4:
/* 80424DC4 00421D04  80 1D 00 18 */	lwz r0, 0x18(r29)
/* 80424DC8 00421D08  2C 00 00 02 */	cmpwi r0, 2
/* 80424DCC 00421D0C  40 82 FF C4 */	bne .L_80424D90
/* 80424DD0 00421D10  38 60 00 01 */	li r3, 1
/* 80424DD4 00421D14  48 00 00 14 */	b .L_80424DE8
.L_80424DD8:
/* 80424DD8 00421D18  80 1D 00 18 */	lwz r0, 0x18(r29)
/* 80424DDC 00421D1C  2C 00 00 02 */	cmpwi r0, 2
/* 80424DE0 00421D20  40 82 00 08 */	bne .L_80424DE8
/* 80424DE4 00421D24  38 60 00 01 */	li r3, 1
.L_80424DE8:
/* 80424DE8 00421D28  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80424DEC 00421D2C  40 82 00 08 */	bne .L_80424DF4
/* 80424DF0 00421D30  3B 7B 00 01 */	addi r27, r27, 1
.L_80424DF4:
/* 80424DF4 00421D34  83 9C 00 0C */	lwz r28, 0xc(r28)
.L_80424DF8:
/* 80424DF8 00421D38  28 1C 00 00 */	cmplwi r28, 0
/* 80424DFC 00421D3C  40 82 FF 70 */	bne .L_80424D6C
/* 80424E00 00421D40  7F 63 DB 78 */	mr r3, r27
/* 80424E04 00421D44  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 80424E08 00421D48  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80424E0C 00421D4C  7C 08 03 A6 */	mtlr r0
/* 80424E10 00421D50  38 21 00 30 */	addi r1, r1, 0x30
/* 80424E14 00421D54  4E 80 00 20 */	blr 
.endfn syncAll__9DvdThreadFQ29DvdThread14ESyncBlockFlag
