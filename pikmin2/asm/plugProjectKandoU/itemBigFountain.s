.include "macros.inc"
.section .ctors, "wa"  # 0x80472F00 - 0x804732C0
lbl_constructor:
.4byte __sinit_itemBigFountain_cpp

.section .rodata  # 0x804732E0 - 0x8049E220
.balign 8
.obj lbl_804810A0, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_804810A0
.balign 4
.obj lbl_804810AC, local
	.asciz "itemBigFountain"
.endobj lbl_804810AC
.balign 4
.obj lbl_804810BC, local
	.asciz "itemBigFountain.cpp"
.endobj lbl_804810BC
.balign 4
.obj lbl_804810D0, local
	.asciz "P2Assert"
.endobj lbl_804810D0
.balign 4
.obj lbl_804810DC, local
	.asciz "g30_appear_fountain"
.endobj lbl_804810DC
.balign 4
.obj lbl_804810F0, local
	.asciz "animMgr null @ big fountain\n"
.endobj lbl_804810F0
.balign 4
.obj lbl_80481110, local
	.asciz "cellLayerindex overflow\n"
.endobj lbl_80481110
.balign 4
.obj lbl_8048112C, local
	.asciz "user/Kando/objects/kanketusen"
.endobj lbl_8048112C
.balign 4
.obj lbl_8048114C, local # Shift-JIS
	.4byte 0x8B418AD2
	.4byte 0x8AD48C87
	.4byte 0x90F20000
.endobj lbl_8048114C
.balign 4
.obj lbl_80481158, local
	.asciz "user/Abe/item/fountainParms.txt"
.endobj lbl_80481158
.balign 4
.obj lbl_80481178, local
	.asciz "Creature::Property"
.endobj lbl_80481178
.balign 4
.obj lbl_8048118C, local
	.asciz "friction(not used)"
.endobj lbl_8048118C
.balign 4
.obj lbl_804811A0, local
	.asciz "wallReflection"
.endobj lbl_804811A0
.balign 4
.obj lbl_804811B0, local
	.asciz "faceDirAdjust"
.endobj lbl_804811B0
.balign 4
.obj lbl_804811C0, local
	.asciz "bounceFactor"
.endobj lbl_804811C0
.balign 4
.obj lbl_804811D0, local
	.asciz "Fountain::Parms"
.endobj lbl_804811D0
.balign 4
.obj lbl_804811E0, local
	.asciz "kanketusen.bmd"
.endobj lbl_804811E0
.balign 4
.obj lbl_804811F0, local
	.asciz "texts.szs"
.endobj lbl_804811F0
.balign 4
.obj lbl_804811FC, local
	.asciz "animmgr.txt"
.endobj lbl_804811FC
.balign 4
.obj lbl_80481208, local
	.asciz "platform.bin"
.endobj lbl_80481208
.balign 4
.obj lbl_80481218, local
	.asciz "BigFountain"
.endobj lbl_80481218

.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 8
.obj govNAN___Q24Game5P2JST, local
	.float 0.0
	.float 0.0
	.float 0.0
.endobj govNAN___Q24Game5P2JST
.obj __vt__Q34Game15ItemBigFountain3Mgr, global
	.4byte 0
	.4byte 0
	.4byte doAnimation__Q24Game12TNodeItemMgrFv
	.4byte doEntry__Q24Game12TNodeItemMgrFv
	.4byte doSetView__Q24Game12TNodeItemMgrFi
	.4byte doViewCalc__Q24Game12TNodeItemMgrFv
	.4byte doSimulation__Q24Game12TNodeItemMgrFf
	.4byte doDirectDraw__Q24Game12TNodeItemMgrFR8Graphics
	.4byte doSimpleDraw__16GenericObjectMgrFP8Viewport
	.4byte loadResources__Q24Game11BaseItemMgrFv
	.4byte resetMgr__16GenericObjectMgrFv
	.4byte pausable__16GenericObjectMgrFv
	.4byte frozenable__16GenericObjectMgrFv
	.4byte getMatrixLoadType__16GenericObjectMgrFv
	.4byte initDependency__Q24Game12TNodeItemMgrFv
	.4byte killAll__Q24Game12TNodeItemMgrFv
	.4byte setup__Q24Game11BaseItemMgrFPQ24Game8BaseItem
	.4byte setupSoundViewerAndBas__Q24Game11BaseItemMgrFv
	.4byte onLoadResources__Q34Game15ItemBigFountain3MgrFv
	.4byte loadEverytime__Q24Game11BaseItemMgrFv
	.4byte updateUseList__Q24Game11BaseItemMgrFPQ24Game11GenItemParmi
	.4byte onUpdateUseList__Q24Game11BaseItemMgrFPQ24Game11GenItemParmi
	.4byte generatorGetID__Q34Game15ItemBigFountain3MgrFv
	.4byte "generatorBirth__Q34Game15ItemBigFountain3MgrFR10Vector3<f>R10Vector3<f>PQ24Game11GenItemParm"
	.4byte generatorWrite__Q24Game11BaseItemMgrFR6StreamPQ24Game11GenItemParm
	.4byte generatorRead__Q24Game11BaseItemMgrFR6StreamPQ24Game11GenItemParmUl
	.4byte generatorLocalVersion__Q24Game11BaseItemMgrFv
	.4byte generatorGetShape__Q24Game11BaseItemMgrFPQ24Game11GenItemParm
	.4byte generatorNewItemParm__Q24Game11BaseItemMgrFv
	.4byte 0
	.4byte 0
	.4byte "@48@__dt__Q34Game15ItemBigFountain3MgrFv"
	.4byte getChildCount__5CNodeFv
	.4byte "getObject__27Container<Q24Game8BaseItem>FPv"
	.4byte "@48@getNext__Q24Game12TNodeItemMgrFPv"
	.4byte "@48@getStart__Q24Game12TNodeItemMgrFv"
	.4byte "@48@getEnd__Q24Game12TNodeItemMgrFv"
	.4byte "@48@get__Q24Game12TNodeItemMgrFPv"
	.4byte "getAt__27Container<Q24Game8BaseItem>Fi"
	.4byte "getTo__27Container<Q24Game8BaseItem>Fv"
	.4byte doNew__Q34Game15ItemBigFountain3MgrFv
	.4byte kill__Q24Game12TNodeItemMgrFPQ24Game8BaseItem
	.4byte get__Q24Game12TNodeItemMgrFPv
	.4byte getNext__Q24Game12TNodeItemMgrFPv
	.4byte getStart__Q24Game12TNodeItemMgrFv
	.4byte getEnd__Q24Game12TNodeItemMgrFv
	.4byte __dt__Q34Game15ItemBigFountain3MgrFv
.endobj __vt__Q34Game15ItemBigFountain3Mgr
.obj __vt__Q34Game15ItemBigFountain13FountainParms, weak
	.4byte 0
	.4byte 0
	.4byte read__Q34Game15ItemBigFountain13FountainParmsFR6Stream
.endobj __vt__Q34Game15ItemBigFountain13FountainParms
.obj "__vt__Q23efx28TSyncGroup3<Q23efx8TForever>", weak
	.4byte 0
	.4byte 0
	.4byte "create__Q23efx28TSyncGroup3<Q23efx8TForever>FPQ23efx3Arg"
	.4byte "forceKill__Q23efx28TSyncGroup3<Q23efx8TForever>Fv"
	.4byte "fade__Q23efx28TSyncGroup3<Q23efx8TForever>Fv"
	.4byte "startDemoDrawOff__Q23efx28TSyncGroup3<Q23efx8TForever>Fv"
	.4byte "endDemoDrawOn__Q23efx28TSyncGroup3<Q23efx8TForever>Fv"
.endobj "__vt__Q23efx28TSyncGroup3<Q23efx8TForever>"
.obj __vt__Q23efx9TForever3, weak
	.4byte 0
	.4byte 0
	.4byte "create__Q23efx28TSyncGroup3<Q23efx8TForever>FPQ23efx3Arg"
	.4byte "forceKill__Q23efx28TSyncGroup3<Q23efx8TForever>Fv"
	.4byte "fade__Q23efx28TSyncGroup3<Q23efx8TForever>Fv"
	.4byte "startDemoDrawOff__Q23efx28TSyncGroup3<Q23efx8TForever>Fv"
	.4byte "endDemoDrawOn__Q23efx28TSyncGroup3<Q23efx8TForever>Fv"
.endobj __vt__Q23efx9TForever3
.obj __vt__Q23efx10TGeyserSet, weak
	.4byte 0
	.4byte 0
	.4byte "create__Q23efx28TSyncGroup2<Q23efx8TForever>FPQ23efx3Arg"
	.4byte "forceKill__Q23efx28TSyncGroup2<Q23efx8TForever>Fv"
	.4byte "fade__Q23efx28TSyncGroup2<Q23efx8TForever>Fv"
	.4byte "startDemoDrawOff__Q23efx28TSyncGroup2<Q23efx8TForever>Fv"
	.4byte "endDemoDrawOn__Q23efx28TSyncGroup2<Q23efx8TForever>Fv"
.endobj __vt__Q23efx10TGeyserSet
.obj __vt__Q23efx10TGeyserAct, weak
	.4byte 0
	.4byte 0
	.4byte "create__Q23efx28TSyncGroup3<Q23efx8TForever>FPQ23efx3Arg"
	.4byte "forceKill__Q23efx28TSyncGroup3<Q23efx8TForever>Fv"
	.4byte "fade__Q23efx28TSyncGroup3<Q23efx8TForever>Fv"
	.4byte "startDemoDrawOff__Q23efx28TSyncGroup3<Q23efx8TForever>Fv"
	.4byte "endDemoDrawOn__Q23efx28TSyncGroup3<Q23efx8TForever>Fv"
.endobj __vt__Q23efx10TGeyserAct
.obj __vt__Q34Game15ItemBigFountain4Item, global
	.4byte 0
	.4byte 0
	.4byte getPosition__Q24Game8BaseItemFv
	.4byte checkCollision__Q24Game8CreatureFPQ24Game10CellObject
	.4byte getBoundingSphere__Q24Game8BaseItemFRQ23Sys6Sphere
	.4byte collisionUpdatable__Q24Game8CreatureFv
	.4byte isPiki__Q24Game8CreatureFv
	.4byte isNavi__Q24Game8CreatureFv
	.4byte deferPikiCollision__Q24Game10CellObjectFv
	.4byte getTypeName__Q24Game8CreatureFv
	.4byte getObjType__Q24Game8CreatureFv
	.4byte constructor__Q34Game15ItemBigFountain4ItemFv
	.4byte onInit__Q34Game15ItemBigFountain4ItemFPQ24Game15CreatureInitArg
	.4byte onKill__Q24Game8CreatureFPQ24Game15CreatureKillArg
	.4byte onInitPost__Q24Game8CreatureFPQ24Game15CreatureInitArg
	.4byte doAnimation__Q24Game8BaseItemFv
	.4byte doEntry__Q24Game8BaseItemFv
	.4byte doSetView__Q24Game8CreatureFi
	.4byte doViewCalc__Q24Game8CreatureFv
	.4byte doSimulation__Q34Game15ItemBigFountain4ItemFf
	.4byte doDirectDraw__Q34Game15ItemBigFountain4ItemFR8Graphics
	.4byte getBodyRadius__Q24Game8CreatureFv
	.4byte getCellRadius__Q24Game8CreatureFv
	.4byte "initPosition__Q24Game8CreatureFR10Vector3<f>"
	.4byte "onInitPosition__Q24Game8CreatureFR10Vector3<f>"
	.4byte getFaceDir__Q34Game15ItemBigFountain4ItemFv
	.4byte "setVelocity__Q24Game8BaseItemFR10Vector3<f>"
	.4byte getVelocity__Q24Game8BaseItemFv
	.4byte "onSetPosition__Q24Game8BaseItemFR10Vector3<f>"
	.4byte "onSetPositionPost__Q24Game8CreatureFR10Vector3<f>"
	.4byte updateTrMatrix__Q24Game8BaseItemFv
	.4byte isTeki__Q24Game8CreatureFv
	.4byte isPellet__Q24Game8CreatureFv
	.4byte inWaterCallback__Q24Game8CreatureFPQ24Game8WaterBox
	.4byte outWaterCallback__Q24Game8CreatureFv
	.4byte inWater__Q24Game8CreatureFv
	.4byte getFlockMgr__Q24Game8CreatureFv
	.4byte onStartCapture__Q24Game8CreatureFv
	.4byte onUpdateCapture__Q24Game8CreatureFR7Matrixf
	.4byte onEndCapture__Q24Game8CreatureFv
	.4byte isAtari__Q24Game8CreatureFv
	.4byte setAtari__Q24Game8CreatureFb
	.4byte isAlive__Q24Game8CreatureFv
	.4byte setAlive__Q24Game8CreatureFb
	.4byte isCollisionFlick__Q24Game8CreatureFv
	.4byte setCollisionFlick__Q24Game8CreatureFb
	.4byte isMovieActor__Q24Game8CreatureFv
	.4byte isMovieExtra__Q24Game8CreatureFv
	.4byte isMovieMotion__Q24Game8CreatureFv
	.4byte setMovieMotion__Q24Game8CreatureFb
	.4byte isBuried__Q24Game8CreatureFv
	.4byte isFlying__Q24Game8CreatureFv
	.4byte isUnderground__Q24Game8CreatureFv
	.4byte isLivingThing__Q24Game8CreatureFv
	.4byte isDebugCollision__Q24Game8CreatureFv
	.4byte setDebugCollision__Q24Game8CreatureFb
	.4byte doSave__Q24Game8CreatureFR6Stream
	.4byte doLoad__Q24Game8CreatureFR6Stream
	.4byte "bounceCallback__Q24Game98FSMItem<Q34Game15ItemBigFountain4Item,Q34Game15ItemBigFountain3FSM,Q34Game15ItemBigFountain5State>FPQ23Sys8Triangle"
	.4byte "collisionCallback__Q24Game98FSMItem<Q34Game15ItemBigFountain4Item,Q34Game15ItemBigFountain3FSM,Q34Game15ItemBigFountain5State>FRQ24Game9CollEvent"
	.4byte "platCallback__Q24Game98FSMItem<Q34Game15ItemBigFountain4Item,Q34Game15ItemBigFountain3FSM,Q34Game15ItemBigFountain5State>FRQ24Game9PlatEvent"
	.4byte getJAIObject__Q24Game8BaseItemFv
	.4byte getPSCreature__Q24Game8BaseItemFv
	.4byte getSound_AILOD__Q24Game8CreatureFv
	.4byte getSound_PosPtr__Q24Game8BaseItemFv
	.4byte sound_culling__Q34Game15ItemBigFountain4ItemFv
	.4byte getSound_CurrAnimFrame__Q24Game8CreatureFv
	.4byte getSound_CurrAnimSpeed__Q24Game8CreatureFv
	.4byte on_movie_begin__Q24Game8CreatureFb
	.4byte on_movie_end__Q24Game8CreatureFb
	.4byte movieStartAnimation__Q24Game8BaseItemFUl
	.4byte movieStartDemoAnimation__Q24Game8BaseItemFPQ28SysShape8AnimInfo
	.4byte movieSetAnimationLastFrame__Q24Game8BaseItemFv
	.4byte "movieSetTranslation__Q24Game8BaseItemFR10Vector3<f>f"
	.4byte movieSetFaceDir__Q24Game8CreatureFf
	.4byte "movieGotoPosition__Q24Game8CreatureFR10Vector3<f>"
	.4byte movieUserCommand__Q34Game15ItemBigFountain4ItemFUlPQ24Game11MoviePlayer
	.4byte getShadowParam__Q24Game8CreatureFRQ24Game11ShadowParam
	.4byte needShadow__Q24Game8CreatureFv
	.4byte getLifeGaugeParam__Q24Game8CreatureFRQ24Game14LifeGaugeParam
	.4byte getLODSphere__Q24Game8CreatureFRQ23Sys6Sphere
	.4byte getLODCylinder__Q24Game8CreatureFRQ23Sys8Cylinder
	.4byte startPick__Q24Game8CreatureFv
	.4byte endPick__Q24Game8CreatureFb
	.4byte getMabiki__Q24Game8CreatureFv
	.4byte getFootmarks__Q24Game8CreatureFv
	.4byte onStickStart__Q24Game8CreatureFPQ24Game8Creature
	.4byte onStickEnd__Q24Game8CreatureFPQ24Game8Creature
	.4byte onStickStartSelf__Q24Game8CreatureFPQ24Game8Creature
	.4byte onStickEndSelf__Q24Game8CreatureFPQ24Game8Creature
	.4byte isSlotFree__Q24Game8CreatureFs
	.4byte getFreeStickSlot__Q24Game8CreatureFv
	.4byte "getNearFreeStickSlot__Q24Game8CreatureFR10Vector3<f>"
	.4byte getRandomFreeStickSlot__Q24Game8CreatureFv
	.4byte onSlotStickStart__Q24Game8CreatureFPQ24Game8Creatures
	.4byte onSlotStickEnd__Q24Game8CreatureFPQ24Game8Creatures
	.4byte "calcStickSlotGlobal__Q24Game8CreatureFsR10Vector3<f>"
	.4byte "getVelocityAt__Q24Game8BaseItemFR10Vector3<f>R10Vector3<f>"
	.4byte "getAngularEffect__Q24Game8CreatureFR10Vector3<f>R10Vector3<f>"
	.4byte "applyImpulse__Q24Game8CreatureFR10Vector3<f>R10Vector3<f>"
	.4byte ignoreAtari__Q24Game8CreatureFPQ24Game8Creature
	.4byte getSuckPos__Q24Game8CreatureFv
	.4byte getGoalPos__Q24Game8CreatureFv
	.4byte isSuckReady__Q24Game8CreatureFv
	.4byte isSuckArriveWait__Q24Game8CreatureFv
	.4byte stimulate__Q24Game8BaseItemFRQ24Game11Interaction
	.4byte getCreatureName__Q34Game15ItemBigFountain4ItemFv
	.4byte getCreatureID__Q24Game8BaseItemFv
	.4byte 0
	.4byte 0
	.4byte "@376@onKeyEvent__Q34Game15ItemBigFountain4ItemFRCQ28SysShape8KeyEvent"
	.4byte initDependency__Q34Game15ItemBigFountain4ItemFv
	.4byte startSound__Q24Game8BaseItemFUl
	.4byte makeTrMatrix__Q34Game15ItemBigFountain4ItemFv
	.4byte doAI__Q34Game15ItemBigFountain4ItemFv
	.4byte move__Q24Game8BaseItemFf
	.4byte changeMaterial__Q24Game8BaseItemFv
	.4byte do_updateLOD__Q24Game8BaseItemFv
	.4byte do_setLODParm__Q24Game8BaseItemFRQ24Game9AILODParm
	.4byte getMapCollisionRadius__Q24Game8BaseItemFv
	.4byte interactAttack__Q34Game15ItemBigFountain4ItemFRQ24Game14InteractAttack
	.4byte interactBreakBridge__Q24Game8BaseItemFRQ24Game19InteractBreakBridge
	.4byte interactEat__Q24Game8BaseItemFRQ24Game11InteractEat
	.4byte interactFlockAttack__Q24Game8BaseItemFRQ24Game19InteractFlockAttack
	.4byte interactAbsorb__Q24Game8BaseItemFRQ24Game14InteractAbsorb
	.4byte interactFue__Q24Game8BaseItemFRQ24Game11InteractFue
	.4byte interactFarmKarero__Q24Game8BaseItemFRQ24Game18InteractFarmKarero
	.4byte interactFarmHaero__Q24Game8BaseItemFRQ24Game17InteractFarmHaero
	.4byte interactGotKey__Q34Game15ItemBigFountain4ItemFRQ24Game14InteractGotKey
	.4byte "getVectorField__Q34Game15ItemBigFountain4ItemFRQ23Sys6SphereR10Vector3<f>"
	.4byte getWorkDistance__Q34Game15ItemBigFountain4ItemFRQ23Sys6Sphere
	.4byte do_doAnimation__Q24Game8BaseItemFv
	.4byte updateBoundSphere__Q34Game15ItemBigFountain4ItemFv
	.4byte update__Q34Game15ItemBigFountain4ItemFv
	.4byte entryShape__Q24Game8BaseItemFv
	.4byte onSetPosition__Q34Game15ItemBigFountain4ItemFv
	.4byte onKeyEvent__Q34Game15ItemBigFountain4ItemFRCQ28SysShape8KeyEvent
.endobj __vt__Q34Game15ItemBigFountain4Item
.obj "__vt__Q24Game99WorkItem<Q34Game15ItemBigFountain4Item,Q34Game15ItemBigFountain3FSM,Q34Game15ItemBigFountain5State>", weak
	.4byte 0
	.4byte 0
	.4byte getPosition__Q24Game8BaseItemFv
	.4byte checkCollision__Q24Game8CreatureFPQ24Game10CellObject
	.4byte getBoundingSphere__Q24Game8BaseItemFRQ23Sys6Sphere
	.4byte collisionUpdatable__Q24Game8CreatureFv
	.4byte isPiki__Q24Game8CreatureFv
	.4byte isNavi__Q24Game8CreatureFv
	.4byte deferPikiCollision__Q24Game10CellObjectFv
	.4byte getTypeName__Q24Game8CreatureFv
	.4byte getObjType__Q24Game8CreatureFv
	.4byte 0
	.4byte onInit__Q24Game8CreatureFPQ24Game15CreatureInitArg
	.4byte onKill__Q24Game8CreatureFPQ24Game15CreatureKillArg
	.4byte onInitPost__Q24Game8CreatureFPQ24Game15CreatureInitArg
	.4byte doAnimation__Q24Game8BaseItemFv
	.4byte doEntry__Q24Game8BaseItemFv
	.4byte doSetView__Q24Game8CreatureFi
	.4byte doViewCalc__Q24Game8CreatureFv
	.4byte doSimulation__Q24Game8BaseItemFf
	.4byte doDirectDraw__Q24Game8CreatureFR8Graphics
	.4byte getBodyRadius__Q24Game8CreatureFv
	.4byte getCellRadius__Q24Game8CreatureFv
	.4byte "initPosition__Q24Game8CreatureFR10Vector3<f>"
	.4byte "onInitPosition__Q24Game8CreatureFR10Vector3<f>"
	.4byte getFaceDir__Q24Game8BaseItemFv
	.4byte "setVelocity__Q24Game8BaseItemFR10Vector3<f>"
	.4byte getVelocity__Q24Game8BaseItemFv
	.4byte "onSetPosition__Q24Game8BaseItemFR10Vector3<f>"
	.4byte "onSetPositionPost__Q24Game8CreatureFR10Vector3<f>"
	.4byte updateTrMatrix__Q24Game8BaseItemFv
	.4byte isTeki__Q24Game8CreatureFv
	.4byte isPellet__Q24Game8CreatureFv
	.4byte inWaterCallback__Q24Game8CreatureFPQ24Game8WaterBox
	.4byte outWaterCallback__Q24Game8CreatureFv
	.4byte inWater__Q24Game8CreatureFv
	.4byte getFlockMgr__Q24Game8CreatureFv
	.4byte onStartCapture__Q24Game8CreatureFv
	.4byte onUpdateCapture__Q24Game8CreatureFR7Matrixf
	.4byte onEndCapture__Q24Game8CreatureFv
	.4byte isAtari__Q24Game8CreatureFv
	.4byte setAtari__Q24Game8CreatureFb
	.4byte isAlive__Q24Game8CreatureFv
	.4byte setAlive__Q24Game8CreatureFb
	.4byte isCollisionFlick__Q24Game8CreatureFv
	.4byte setCollisionFlick__Q24Game8CreatureFb
	.4byte isMovieActor__Q24Game8CreatureFv
	.4byte isMovieExtra__Q24Game8CreatureFv
	.4byte isMovieMotion__Q24Game8CreatureFv
	.4byte setMovieMotion__Q24Game8CreatureFb
	.4byte isBuried__Q24Game8CreatureFv
	.4byte isFlying__Q24Game8CreatureFv
	.4byte isUnderground__Q24Game8CreatureFv
	.4byte isLivingThing__Q24Game8CreatureFv
	.4byte isDebugCollision__Q24Game8CreatureFv
	.4byte setDebugCollision__Q24Game8CreatureFb
	.4byte doSave__Q24Game8CreatureFR6Stream
	.4byte doLoad__Q24Game8CreatureFR6Stream
	.4byte "bounceCallback__Q24Game98FSMItem<Q34Game15ItemBigFountain4Item,Q34Game15ItemBigFountain3FSM,Q34Game15ItemBigFountain5State>FPQ23Sys8Triangle"
	.4byte "collisionCallback__Q24Game98FSMItem<Q34Game15ItemBigFountain4Item,Q34Game15ItemBigFountain3FSM,Q34Game15ItemBigFountain5State>FRQ24Game9CollEvent"
	.4byte "platCallback__Q24Game98FSMItem<Q34Game15ItemBigFountain4Item,Q34Game15ItemBigFountain3FSM,Q34Game15ItemBigFountain5State>FRQ24Game9PlatEvent"
	.4byte getJAIObject__Q24Game8BaseItemFv
	.4byte getPSCreature__Q24Game8BaseItemFv
	.4byte getSound_AILOD__Q24Game8CreatureFv
	.4byte getSound_PosPtr__Q24Game8BaseItemFv
	.4byte sound_culling__Q24Game8CreatureFv
	.4byte getSound_CurrAnimFrame__Q24Game8CreatureFv
	.4byte getSound_CurrAnimSpeed__Q24Game8CreatureFv
	.4byte on_movie_begin__Q24Game8CreatureFb
	.4byte on_movie_end__Q24Game8CreatureFb
	.4byte movieStartAnimation__Q24Game8BaseItemFUl
	.4byte movieStartDemoAnimation__Q24Game8BaseItemFPQ28SysShape8AnimInfo
	.4byte movieSetAnimationLastFrame__Q24Game8BaseItemFv
	.4byte "movieSetTranslation__Q24Game8BaseItemFR10Vector3<f>f"
	.4byte movieSetFaceDir__Q24Game8CreatureFf
	.4byte "movieGotoPosition__Q24Game8CreatureFR10Vector3<f>"
	.4byte movieUserCommand__Q24Game8CreatureFUlPQ24Game11MoviePlayer
	.4byte getShadowParam__Q24Game8CreatureFRQ24Game11ShadowParam
	.4byte needShadow__Q24Game8CreatureFv
	.4byte getLifeGaugeParam__Q24Game8CreatureFRQ24Game14LifeGaugeParam
	.4byte getLODSphere__Q24Game8CreatureFRQ23Sys6Sphere
	.4byte getLODCylinder__Q24Game8CreatureFRQ23Sys8Cylinder
	.4byte startPick__Q24Game8CreatureFv
	.4byte endPick__Q24Game8CreatureFb
	.4byte getMabiki__Q24Game8CreatureFv
	.4byte getFootmarks__Q24Game8CreatureFv
	.4byte onStickStart__Q24Game8CreatureFPQ24Game8Creature
	.4byte onStickEnd__Q24Game8CreatureFPQ24Game8Creature
	.4byte onStickStartSelf__Q24Game8CreatureFPQ24Game8Creature
	.4byte onStickEndSelf__Q24Game8CreatureFPQ24Game8Creature
	.4byte isSlotFree__Q24Game8CreatureFs
	.4byte getFreeStickSlot__Q24Game8CreatureFv
	.4byte "getNearFreeStickSlot__Q24Game8CreatureFR10Vector3<f>"
	.4byte getRandomFreeStickSlot__Q24Game8CreatureFv
	.4byte onSlotStickStart__Q24Game8CreatureFPQ24Game8Creatures
	.4byte onSlotStickEnd__Q24Game8CreatureFPQ24Game8Creatures
	.4byte "calcStickSlotGlobal__Q24Game8CreatureFsR10Vector3<f>"
	.4byte "getVelocityAt__Q24Game8BaseItemFR10Vector3<f>R10Vector3<f>"
	.4byte "getAngularEffect__Q24Game8CreatureFR10Vector3<f>R10Vector3<f>"
	.4byte "applyImpulse__Q24Game8CreatureFR10Vector3<f>R10Vector3<f>"
	.4byte ignoreAtari__Q24Game8CreatureFPQ24Game8Creature
	.4byte getSuckPos__Q24Game8CreatureFv
	.4byte getGoalPos__Q24Game8CreatureFv
	.4byte isSuckReady__Q24Game8CreatureFv
	.4byte isSuckArriveWait__Q24Game8CreatureFv
	.4byte stimulate__Q24Game8BaseItemFRQ24Game11Interaction
	.4byte getCreatureName__Q24Game8BaseItemFv
	.4byte getCreatureID__Q24Game8BaseItemFv
	.4byte 0
	.4byte 0
	.4byte "@376@onKeyEvent__Q24Game98FSMItem<Q34Game15ItemBigFountain4Item,Q34Game15ItemBigFountain3FSM,Q34Game15ItemBigFountain5State>FRCQ28SysShape8KeyEvent"
	.4byte initDependency__Q24Game8BaseItemFv
	.4byte startSound__Q24Game8BaseItemFUl
	.4byte makeTrMatrix__Q24Game8BaseItemFv
	.4byte "doAI__Q24Game98FSMItem<Q34Game15ItemBigFountain4Item,Q34Game15ItemBigFountain3FSM,Q34Game15ItemBigFountain5State>Fv"
	.4byte move__Q24Game8BaseItemFf
	.4byte changeMaterial__Q24Game8BaseItemFv
	.4byte do_updateLOD__Q24Game8BaseItemFv
	.4byte do_setLODParm__Q24Game8BaseItemFRQ24Game9AILODParm
	.4byte getMapCollisionRadius__Q24Game8BaseItemFv
	.4byte interactAttack__Q24Game8BaseItemFRQ24Game14InteractAttack
	.4byte interactBreakBridge__Q24Game8BaseItemFRQ24Game19InteractBreakBridge
	.4byte interactEat__Q24Game8BaseItemFRQ24Game11InteractEat
	.4byte interactFlockAttack__Q24Game8BaseItemFRQ24Game19InteractFlockAttack
	.4byte interactAbsorb__Q24Game8BaseItemFRQ24Game14InteractAbsorb
	.4byte interactFue__Q24Game8BaseItemFRQ24Game11InteractFue
	.4byte interactFarmKarero__Q24Game8BaseItemFRQ24Game18InteractFarmKarero
	.4byte interactFarmHaero__Q24Game8BaseItemFRQ24Game17InteractFarmHaero
	.4byte interactGotKey__Q24Game8BaseItemFRQ24Game14InteractGotKey
	.4byte 0
	.4byte 0
	.4byte do_doAnimation__Q24Game8BaseItemFv
	.4byte updateBoundSphere__Q24Game8BaseItemFv
	.4byte update__Q24Game8BaseItemFv
	.4byte entryShape__Q24Game8BaseItemFv
	.4byte onSetPosition__Q24Game8BaseItemFv
	.4byte "onKeyEvent__Q24Game98FSMItem<Q34Game15ItemBigFountain4Item,Q34Game15ItemBigFountain3FSM,Q34Game15ItemBigFountain5State>FRCQ28SysShape8KeyEvent"
.endobj "__vt__Q24Game99WorkItem<Q34Game15ItemBigFountain4Item,Q34Game15ItemBigFountain3FSM,Q34Game15ItemBigFountain5State>"
.obj "__vt__Q24Game38ItemFSM<Q34Game15ItemBigFountain4Item>", weak
	.4byte 0
	.4byte 0
	.4byte "init__Q24Game43StateMachine<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4Item"
	.4byte "start__Q24Game43StateMachine<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemiPQ24Game8StateArg"
	.4byte "exec__Q24Game43StateMachine<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4Item"
	.4byte "transit__Q24Game43StateMachine<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemiPQ24Game8StateArg"
.endobj "__vt__Q24Game38ItemFSM<Q34Game15ItemBigFountain4Item>"
.obj "__vt__Q24Game43StateMachine<Q34Game15ItemBigFountain4Item>", weak
	.4byte 0
	.4byte 0
	.4byte "init__Q24Game43StateMachine<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4Item"
	.4byte "start__Q24Game43StateMachine<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemiPQ24Game8StateArg"
	.4byte "exec__Q24Game43StateMachine<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4Item"
	.4byte "transit__Q24Game43StateMachine<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemiPQ24Game8StateArg"
.endobj "__vt__Q24Game43StateMachine<Q34Game15ItemBigFountain4Item>"
.obj "__vt__Q24Game98FSMItem<Q34Game15ItemBigFountain4Item,Q34Game15ItemBigFountain3FSM,Q34Game15ItemBigFountain5State>", weak
	.4byte 0
	.4byte 0
	.4byte getPosition__Q24Game8BaseItemFv
	.4byte checkCollision__Q24Game8CreatureFPQ24Game10CellObject
	.4byte getBoundingSphere__Q24Game8BaseItemFRQ23Sys6Sphere
	.4byte collisionUpdatable__Q24Game8CreatureFv
	.4byte isPiki__Q24Game8CreatureFv
	.4byte isNavi__Q24Game8CreatureFv
	.4byte deferPikiCollision__Q24Game10CellObjectFv
	.4byte getTypeName__Q24Game8CreatureFv
	.4byte getObjType__Q24Game8CreatureFv
	.4byte constructor__Q24Game8BaseItemFv
	.4byte onInit__Q24Game8CreatureFPQ24Game15CreatureInitArg
	.4byte onKill__Q24Game8CreatureFPQ24Game15CreatureKillArg
	.4byte onInitPost__Q24Game8CreatureFPQ24Game15CreatureInitArg
	.4byte doAnimation__Q24Game8BaseItemFv
	.4byte doEntry__Q24Game8BaseItemFv
	.4byte doSetView__Q24Game8CreatureFi
	.4byte doViewCalc__Q24Game8CreatureFv
	.4byte doSimulation__Q24Game8BaseItemFf
	.4byte doDirectDraw__Q24Game8CreatureFR8Graphics
	.4byte getBodyRadius__Q24Game8CreatureFv
	.4byte getCellRadius__Q24Game8CreatureFv
	.4byte "initPosition__Q24Game8CreatureFR10Vector3<f>"
	.4byte "onInitPosition__Q24Game8CreatureFR10Vector3<f>"
	.4byte getFaceDir__Q24Game8BaseItemFv
	.4byte "setVelocity__Q24Game8BaseItemFR10Vector3<f>"
	.4byte getVelocity__Q24Game8BaseItemFv
	.4byte "onSetPosition__Q24Game8BaseItemFR10Vector3<f>"
	.4byte "onSetPositionPost__Q24Game8CreatureFR10Vector3<f>"
	.4byte updateTrMatrix__Q24Game8BaseItemFv
	.4byte isTeki__Q24Game8CreatureFv
	.4byte isPellet__Q24Game8CreatureFv
	.4byte inWaterCallback__Q24Game8CreatureFPQ24Game8WaterBox
	.4byte outWaterCallback__Q24Game8CreatureFv
	.4byte inWater__Q24Game8CreatureFv
	.4byte getFlockMgr__Q24Game8CreatureFv
	.4byte onStartCapture__Q24Game8CreatureFv
	.4byte onUpdateCapture__Q24Game8CreatureFR7Matrixf
	.4byte onEndCapture__Q24Game8CreatureFv
	.4byte isAtari__Q24Game8CreatureFv
	.4byte setAtari__Q24Game8CreatureFb
	.4byte isAlive__Q24Game8CreatureFv
	.4byte setAlive__Q24Game8CreatureFb
	.4byte isCollisionFlick__Q24Game8CreatureFv
	.4byte setCollisionFlick__Q24Game8CreatureFb
	.4byte isMovieActor__Q24Game8CreatureFv
	.4byte isMovieExtra__Q24Game8CreatureFv
	.4byte isMovieMotion__Q24Game8CreatureFv
	.4byte setMovieMotion__Q24Game8CreatureFb
	.4byte isBuried__Q24Game8CreatureFv
	.4byte isFlying__Q24Game8CreatureFv
	.4byte isUnderground__Q24Game8CreatureFv
	.4byte isLivingThing__Q24Game8CreatureFv
	.4byte isDebugCollision__Q24Game8CreatureFv
	.4byte setDebugCollision__Q24Game8CreatureFb
	.4byte doSave__Q24Game8CreatureFR6Stream
	.4byte doLoad__Q24Game8CreatureFR6Stream
	.4byte "bounceCallback__Q24Game98FSMItem<Q34Game15ItemBigFountain4Item,Q34Game15ItemBigFountain3FSM,Q34Game15ItemBigFountain5State>FPQ23Sys8Triangle"
	.4byte "collisionCallback__Q24Game98FSMItem<Q34Game15ItemBigFountain4Item,Q34Game15ItemBigFountain3FSM,Q34Game15ItemBigFountain5State>FRQ24Game9CollEvent"
	.4byte "platCallback__Q24Game98FSMItem<Q34Game15ItemBigFountain4Item,Q34Game15ItemBigFountain3FSM,Q34Game15ItemBigFountain5State>FRQ24Game9PlatEvent"
	.4byte getJAIObject__Q24Game8BaseItemFv
	.4byte getPSCreature__Q24Game8BaseItemFv
	.4byte getSound_AILOD__Q24Game8CreatureFv
	.4byte getSound_PosPtr__Q24Game8BaseItemFv
	.4byte sound_culling__Q24Game8CreatureFv
	.4byte getSound_CurrAnimFrame__Q24Game8CreatureFv
	.4byte getSound_CurrAnimSpeed__Q24Game8CreatureFv
	.4byte on_movie_begin__Q24Game8CreatureFb
	.4byte on_movie_end__Q24Game8CreatureFb
	.4byte movieStartAnimation__Q24Game8BaseItemFUl
	.4byte movieStartDemoAnimation__Q24Game8BaseItemFPQ28SysShape8AnimInfo
	.4byte movieSetAnimationLastFrame__Q24Game8BaseItemFv
	.4byte "movieSetTranslation__Q24Game8BaseItemFR10Vector3<f>f"
	.4byte movieSetFaceDir__Q24Game8CreatureFf
	.4byte "movieGotoPosition__Q24Game8CreatureFR10Vector3<f>"
	.4byte movieUserCommand__Q24Game8CreatureFUlPQ24Game11MoviePlayer
	.4byte getShadowParam__Q24Game8CreatureFRQ24Game11ShadowParam
	.4byte needShadow__Q24Game8CreatureFv
	.4byte getLifeGaugeParam__Q24Game8CreatureFRQ24Game14LifeGaugeParam
	.4byte getLODSphere__Q24Game8CreatureFRQ23Sys6Sphere
	.4byte getLODCylinder__Q24Game8CreatureFRQ23Sys8Cylinder
	.4byte startPick__Q24Game8CreatureFv
	.4byte endPick__Q24Game8CreatureFb
	.4byte getMabiki__Q24Game8CreatureFv
	.4byte getFootmarks__Q24Game8CreatureFv
	.4byte onStickStart__Q24Game8CreatureFPQ24Game8Creature
	.4byte onStickEnd__Q24Game8CreatureFPQ24Game8Creature
	.4byte onStickStartSelf__Q24Game8CreatureFPQ24Game8Creature
	.4byte onStickEndSelf__Q24Game8CreatureFPQ24Game8Creature
	.4byte isSlotFree__Q24Game8CreatureFs
	.4byte getFreeStickSlot__Q24Game8CreatureFv
	.4byte "getNearFreeStickSlot__Q24Game8CreatureFR10Vector3<f>"
	.4byte getRandomFreeStickSlot__Q24Game8CreatureFv
	.4byte onSlotStickStart__Q24Game8CreatureFPQ24Game8Creatures
	.4byte onSlotStickEnd__Q24Game8CreatureFPQ24Game8Creatures
	.4byte "calcStickSlotGlobal__Q24Game8CreatureFsR10Vector3<f>"
	.4byte "getVelocityAt__Q24Game8BaseItemFR10Vector3<f>R10Vector3<f>"
	.4byte "getAngularEffect__Q24Game8CreatureFR10Vector3<f>R10Vector3<f>"
	.4byte "applyImpulse__Q24Game8CreatureFR10Vector3<f>R10Vector3<f>"
	.4byte ignoreAtari__Q24Game8CreatureFPQ24Game8Creature
	.4byte getSuckPos__Q24Game8CreatureFv
	.4byte getGoalPos__Q24Game8CreatureFv
	.4byte isSuckReady__Q24Game8CreatureFv
	.4byte isSuckArriveWait__Q24Game8CreatureFv
	.4byte stimulate__Q24Game8BaseItemFRQ24Game11Interaction
	.4byte getCreatureName__Q24Game8BaseItemFv
	.4byte getCreatureID__Q24Game8BaseItemFv
	.4byte 0
	.4byte 0
	.4byte "@376@onKeyEvent__Q24Game98FSMItem<Q34Game15ItemBigFountain4Item,Q34Game15ItemBigFountain3FSM,Q34Game15ItemBigFountain5State>FRCQ28SysShape8KeyEvent"
	.4byte initDependency__Q24Game8BaseItemFv
	.4byte startSound__Q24Game8BaseItemFUl
	.4byte makeTrMatrix__Q24Game8BaseItemFv
	.4byte "doAI__Q24Game98FSMItem<Q34Game15ItemBigFountain4Item,Q34Game15ItemBigFountain3FSM,Q34Game15ItemBigFountain5State>Fv"
	.4byte move__Q24Game8BaseItemFf
	.4byte changeMaterial__Q24Game8BaseItemFv
	.4byte do_updateLOD__Q24Game8BaseItemFv
	.4byte do_setLODParm__Q24Game8BaseItemFRQ24Game9AILODParm
	.4byte getMapCollisionRadius__Q24Game8BaseItemFv
	.4byte interactAttack__Q24Game8BaseItemFRQ24Game14InteractAttack
	.4byte interactBreakBridge__Q24Game8BaseItemFRQ24Game19InteractBreakBridge
	.4byte interactEat__Q24Game8BaseItemFRQ24Game11InteractEat
	.4byte interactFlockAttack__Q24Game8BaseItemFRQ24Game19InteractFlockAttack
	.4byte interactAbsorb__Q24Game8BaseItemFRQ24Game14InteractAbsorb
	.4byte interactFue__Q24Game8BaseItemFRQ24Game11InteractFue
	.4byte interactFarmKarero__Q24Game8BaseItemFRQ24Game18InteractFarmKarero
	.4byte interactFarmHaero__Q24Game8BaseItemFRQ24Game17InteractFarmHaero
	.4byte interactGotKey__Q24Game8BaseItemFRQ24Game14InteractGotKey
	.4byte "getVectorField__Q24Game8BaseItemFRQ23Sys6SphereR10Vector3<f>"
	.4byte getWorkDistance__Q24Game8BaseItemFRQ23Sys6Sphere
	.4byte do_doAnimation__Q24Game8BaseItemFv
	.4byte updateBoundSphere__Q24Game8BaseItemFv
	.4byte update__Q24Game8BaseItemFv
	.4byte entryShape__Q24Game8BaseItemFv
	.4byte onSetPosition__Q24Game8BaseItemFv
	.4byte "onKeyEvent__Q24Game98FSMItem<Q34Game15ItemBigFountain4Item,Q34Game15ItemBigFountain3FSM,Q34Game15ItemBigFountain5State>FRCQ28SysShape8KeyEvent"
.endobj "__vt__Q24Game98FSMItem<Q34Game15ItemBigFountain4Item,Q34Game15ItemBigFountain3FSM,Q34Game15ItemBigFountain5State>"
.obj __vt__Q34Game15ItemBigFountain8OutState, global
	.4byte 0
	.4byte 0
	.4byte init__Q34Game15ItemBigFountain8OutStateFPQ34Game15ItemBigFountain4ItemPQ24Game8StateArg
	.4byte exec__Q34Game15ItemBigFountain8OutStateFPQ34Game15ItemBigFountain4Item
	.4byte cleanup__Q34Game15ItemBigFountain8OutStateFPQ34Game15ItemBigFountain4Item
	.4byte "resume__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4Item"
	.4byte "restart__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4Item"
	.4byte "transit__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemiPQ24Game8StateArg"
	.4byte onDamage__Q34Game15ItemBigFountain5StateFPQ34Game15ItemBigFountain4Itemf
	.4byte "onKeyEvent__Q24Game40ItemState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemRCQ28SysShape8KeyEvent"
	.4byte "onBounce__Q24Game40ItemState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemPQ23Sys8Triangle"
	.4byte "onPlatCollision__Q24Game40ItemState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemRQ24Game9PlatEvent"
	.4byte "onCollision__Q24Game40ItemState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemRQ24Game9CollEvent"
	.4byte canRide__Q34Game15ItemBigFountain8OutStateFv
.endobj __vt__Q34Game15ItemBigFountain8OutState
.obj __vt__Q34Game15ItemBigFountain9WaitState, global
	.4byte 0
	.4byte 0
	.4byte init__Q34Game15ItemBigFountain9WaitStateFPQ34Game15ItemBigFountain4ItemPQ24Game8StateArg
	.4byte exec__Q34Game15ItemBigFountain9WaitStateFPQ34Game15ItemBigFountain4Item
	.4byte cleanup__Q34Game15ItemBigFountain9WaitStateFPQ34Game15ItemBigFountain4Item
	.4byte "resume__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4Item"
	.4byte "restart__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4Item"
	.4byte "transit__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemiPQ24Game8StateArg"
	.4byte onDamage__Q34Game15ItemBigFountain9WaitStateFPQ34Game15ItemBigFountain4Itemf
	.4byte onKeyEvent__Q34Game15ItemBigFountain9WaitStateFPQ34Game15ItemBigFountain4ItemRCQ28SysShape8KeyEvent
	.4byte "onBounce__Q24Game40ItemState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemPQ23Sys8Triangle"
	.4byte "onPlatCollision__Q24Game40ItemState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemRQ24Game9PlatEvent"
	.4byte "onCollision__Q24Game40ItemState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemRQ24Game9CollEvent"
	.4byte canRide__Q34Game15ItemBigFountain5StateFv
.endobj __vt__Q34Game15ItemBigFountain9WaitState
.obj __vt__Q34Game15ItemBigFountain10CloseState, global
	.4byte 0
	.4byte 0
	.4byte init__Q34Game15ItemBigFountain10CloseStateFPQ34Game15ItemBigFountain4ItemPQ24Game8StateArg
	.4byte exec__Q34Game15ItemBigFountain10CloseStateFPQ34Game15ItemBigFountain4Item
	.4byte cleanup__Q34Game15ItemBigFountain10CloseStateFPQ34Game15ItemBigFountain4Item
	.4byte "resume__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4Item"
	.4byte "restart__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4Item"
	.4byte "transit__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemiPQ24Game8StateArg"
	.4byte onDamage__Q34Game15ItemBigFountain5StateFPQ34Game15ItemBigFountain4Itemf
	.4byte "onKeyEvent__Q24Game40ItemState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemRCQ28SysShape8KeyEvent"
	.4byte "onBounce__Q24Game40ItemState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemPQ23Sys8Triangle"
	.4byte "onPlatCollision__Q24Game40ItemState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemRQ24Game9PlatEvent"
	.4byte "onCollision__Q24Game40ItemState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemRQ24Game9CollEvent"
	.4byte canRide__Q34Game15ItemBigFountain5StateFv
.endobj __vt__Q34Game15ItemBigFountain10CloseState
.obj __vt__Q34Game15ItemBigFountain11AppearState, global
	.4byte 0
	.4byte 0
	.4byte init__Q34Game15ItemBigFountain11AppearStateFPQ34Game15ItemBigFountain4ItemPQ24Game8StateArg
	.4byte exec__Q34Game15ItemBigFountain11AppearStateFPQ34Game15ItemBigFountain4Item
	.4byte cleanup__Q34Game15ItemBigFountain11AppearStateFPQ34Game15ItemBigFountain4Item
	.4byte "resume__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4Item"
	.4byte "restart__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4Item"
	.4byte "transit__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemiPQ24Game8StateArg"
	.4byte onDamage__Q34Game15ItemBigFountain5StateFPQ34Game15ItemBigFountain4Itemf
	.4byte "onKeyEvent__Q24Game40ItemState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemRCQ28SysShape8KeyEvent"
	.4byte "onBounce__Q24Game40ItemState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemPQ23Sys8Triangle"
	.4byte "onPlatCollision__Q24Game40ItemState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemRQ24Game9PlatEvent"
	.4byte "onCollision__Q24Game40ItemState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemRQ24Game9CollEvent"
	.4byte canRide__Q34Game15ItemBigFountain5StateFv
.endobj __vt__Q34Game15ItemBigFountain11AppearState
.obj __vt__Q34Game15ItemBigFountain5State, weak
	.4byte 0
	.4byte 0
	.4byte "init__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemPQ24Game8StateArg"
	.4byte "exec__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4Item"
	.4byte "cleanup__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4Item"
	.4byte "resume__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4Item"
	.4byte "restart__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4Item"
	.4byte "transit__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemiPQ24Game8StateArg"
	.4byte onDamage__Q34Game15ItemBigFountain5StateFPQ34Game15ItemBigFountain4Itemf
	.4byte "onKeyEvent__Q24Game40ItemState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemRCQ28SysShape8KeyEvent"
	.4byte "onBounce__Q24Game40ItemState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemPQ23Sys8Triangle"
	.4byte "onPlatCollision__Q24Game40ItemState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemRQ24Game9PlatEvent"
	.4byte "onCollision__Q24Game40ItemState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemRQ24Game9CollEvent"
	.4byte canRide__Q34Game15ItemBigFountain5StateFv
.endobj __vt__Q34Game15ItemBigFountain5State
.obj "__vt__Q24Game40ItemState<Q34Game15ItemBigFountain4Item>", weak
	.4byte 0
	.4byte 0
	.4byte "init__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemPQ24Game8StateArg"
	.4byte "exec__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4Item"
	.4byte "cleanup__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4Item"
	.4byte "resume__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4Item"
	.4byte "restart__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4Item"
	.4byte "transit__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemiPQ24Game8StateArg"
	.4byte "onDamage__Q24Game40ItemState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4Itemf"
	.4byte "onKeyEvent__Q24Game40ItemState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemRCQ28SysShape8KeyEvent"
	.4byte "onBounce__Q24Game40ItemState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemPQ23Sys8Triangle"
	.4byte "onPlatCollision__Q24Game40ItemState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemRQ24Game9PlatEvent"
	.4byte "onCollision__Q24Game40ItemState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemRQ24Game9CollEvent"
.endobj "__vt__Q24Game40ItemState<Q34Game15ItemBigFountain4Item>"
.obj "__vt__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>", weak
	.4byte 0
	.4byte 0
	.4byte "init__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemPQ24Game8StateArg"
	.4byte "exec__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4Item"
	.4byte "cleanup__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4Item"
	.4byte "resume__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4Item"
	.4byte "restart__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4Item"
	.4byte "transit__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemiPQ24Game8StateArg"
.endobj "__vt__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>"
.obj __vt__Q34Game15ItemBigFountain3FSM, global
	.4byte 0
	.4byte 0
	.4byte init__Q34Game15ItemBigFountain3FSMFPQ34Game15ItemBigFountain4Item
	.4byte "start__Q24Game43StateMachine<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemiPQ24Game8StateArg"
	.4byte "exec__Q24Game43StateMachine<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4Item"
	.4byte "transit__Q24Game43StateMachine<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemiPQ24Game8StateArg"
.endobj __vt__Q34Game15ItemBigFountain3FSM

.section .sbss # 0x80514D80 - 0x80516360
.balign 8
.obj gu32NAN___Q24Game5P2JST, local
	.skip 0x4
.endobj gu32NAN___Q24Game5P2JST
.obj gfNAN___Q24Game5P2JST, local
	.skip 0x4
.endobj gfNAN___Q24Game5P2JST
.obj mgr__Q24Game15ItemBigFountain, global
	.skip 0x4
.endobj mgr__Q24Game15ItemBigFountain

.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 8
.obj lbl_80519A98, local
	.float 45.0
.endobj lbl_80519A98
.obj lbl_80519A9C, local
	.float 0.0
.endobj lbl_80519A9C
.obj lbl_80519AA0, local
	.float 1.0
.endobj lbl_80519AA0
.obj lbl_80519AA4, local
	.float 0.8333333
.endobj lbl_80519AA4
.obj lbl_80519AA8, local
	.float 30.0
.endobj lbl_80519AA8
.obj lbl_80519AAC, local
	.float 60.0
.endobj lbl_80519AAC
.obj lbl_80519AB0, local
	.float 120.0
.endobj lbl_80519AB0
.obj lbl_80519AB4, local
	.float 65.0
.endobj lbl_80519AB4
.obj lbl_80519AB8, local
	.float 1.2
.endobj lbl_80519AB8
.balign 4
.obj lbl_80519ABC, local
	.asciz "alv"
.endobj lbl_80519ABC
.balign 4
.obj lbl_80519AC0, local
	.asciz "ded"
.endobj lbl_80519AC0
.balign 4
.obj lbl_80519AC4, local
	.asciz "%s %s"
.endobj lbl_80519AC4
.balign 4
.obj lbl_80519ACC, local
	.asciz "vis"
.endobj lbl_80519ACC
.balign 4
.obj lbl_80519AD0, local
	.asciz "x"
.endobj lbl_80519AD0
.balign 4
.obj lbl_80519AD4, local
	.float 50.0
.endobj lbl_80519AD4
.obj lbl_80519AD8, local
	.float 0.5
.endobj lbl_80519AD8
.obj lbl_80519ADC, local
	.float 0.25
.endobj lbl_80519ADC
.balign 4
.obj lbl_80519AE0, local
	.asciz "accel"
.endobj lbl_80519AE0
.balign 4
.obj lbl_80519AE8, local
	.float 0.1
.endobj lbl_80519AE8
.obj lbl_80519AEC, local
	.float 0.01
.endobj lbl_80519AEC
.obj lbl_80519AF0, local
	.float 2.0
.endobj lbl_80519AF0
.obj lbl_80519AF4, local
	.float 0.3
.endobj lbl_80519AF4
.balign 4
.obj lbl_80519AF8, local # Shift-JIS
	.4byte 0x83898343
	.4byte 0x83740000
.endobj lbl_80519AF8
.balign 4
.obj lbl_80519B00, local
	.float 1000.0
.endobj lbl_80519B00
.obj lbl_80519B04, local
	.float 60000.0
.endobj lbl_80519B04
.balign 4
.obj lbl_80519B08, local
	.asciz "arc.szs"
.endobj lbl_80519B08

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.fn init__Q34Game15ItemBigFountain3FSMFPQ34Game15ItemBigFountain4Item, global
/* 801EC188 001E90C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801EC18C 001E90CC  7C 08 02 A6 */	mflr r0
/* 801EC190 001E90D0  38 80 00 04 */	li r4, 4
/* 801EC194 001E90D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801EC198 001E90D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801EC19C 001E90DC  7C 7F 1B 78 */	mr r31, r3
/* 801EC1A0 001E90E0  48 00 1B 29 */	bl "create__Q24Game43StateMachine<Q34Game15ItemBigFountain4Item>Fi"
/* 801EC1A4 001E90E4  38 60 00 10 */	li r3, 0x10
/* 801EC1A8 001E90E8  4B E3 7C FD */	bl __nw__FUl
/* 801EC1AC 001E90EC  7C 64 1B 79 */	or. r4, r3, r3
/* 801EC1B0 001E90F0  41 82 00 40 */	beq .L_801EC1F0
/* 801EC1B4 001E90F4  3C 60 80 4C */	lis r3, "__vt__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>"@ha
/* 801EC1B8 001E90F8  3C C0 80 4C */	lis r6, "__vt__Q24Game40ItemState<Q34Game15ItemBigFountain4Item>"@ha
/* 801EC1BC 001E90FC  38 03 B3 34 */	addi r0, r3, "__vt__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>"@l
/* 801EC1C0 001E9100  3C A0 80 4C */	lis r5, __vt__Q34Game15ItemBigFountain5State@ha
/* 801EC1C4 001E9104  90 04 00 00 */	stw r0, 0(r4)
/* 801EC1C8 001E9108  38 E0 00 00 */	li r7, 0
/* 801EC1CC 001E910C  3C 60 80 4C */	lis r3, __vt__Q34Game15ItemBigFountain9WaitState@ha
/* 801EC1D0 001E9110  38 C6 B3 00 */	addi r6, r6, "__vt__Q24Game40ItemState<Q34Game15ItemBigFountain4Item>"@l
/* 801EC1D4 001E9114  90 E4 00 04 */	stw r7, 4(r4)
/* 801EC1D8 001E9118  38 A5 B2 C8 */	addi r5, r5, __vt__Q34Game15ItemBigFountain5State@l
/* 801EC1DC 001E911C  38 03 B2 20 */	addi r0, r3, __vt__Q34Game15ItemBigFountain9WaitState@l
/* 801EC1E0 001E9120  90 E4 00 08 */	stw r7, 8(r4)
/* 801EC1E4 001E9124  90 C4 00 00 */	stw r6, 0(r4)
/* 801EC1E8 001E9128  90 A4 00 00 */	stw r5, 0(r4)
/* 801EC1EC 001E912C  90 04 00 00 */	stw r0, 0(r4)
.L_801EC1F0:
/* 801EC1F0 001E9130  7F E3 FB 78 */	mr r3, r31
/* 801EC1F4 001E9134  48 00 1B D5 */	bl "registerState__Q24Game43StateMachine<Q34Game15ItemBigFountain4Item>FPQ24Game39FSMState<Q34Game15ItemBigFountain4Item>"
/* 801EC1F8 001E9138  38 60 00 10 */	li r3, 0x10
/* 801EC1FC 001E913C  4B E3 7C A9 */	bl __nw__FUl
/* 801EC200 001E9140  7C 64 1B 79 */	or. r4, r3, r3
/* 801EC204 001E9144  41 82 00 44 */	beq .L_801EC248
/* 801EC208 001E9148  3C 60 80 4C */	lis r3, "__vt__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>"@ha
/* 801EC20C 001E914C  3C C0 80 4C */	lis r6, "__vt__Q24Game40ItemState<Q34Game15ItemBigFountain4Item>"@ha
/* 801EC210 001E9150  38 03 B3 34 */	addi r0, r3, "__vt__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>"@l
/* 801EC214 001E9154  3C A0 80 4C */	lis r5, __vt__Q34Game15ItemBigFountain5State@ha
/* 801EC218 001E9158  90 04 00 00 */	stw r0, 0(r4)
/* 801EC21C 001E915C  38 00 00 01 */	li r0, 1
/* 801EC220 001E9160  3C 60 80 4C */	lis r3, __vt__Q34Game15ItemBigFountain8OutState@ha
/* 801EC224 001E9164  38 E0 00 00 */	li r7, 0
/* 801EC228 001E9168  90 04 00 04 */	stw r0, 4(r4)
/* 801EC22C 001E916C  38 C6 B3 00 */	addi r6, r6, "__vt__Q24Game40ItemState<Q34Game15ItemBigFountain4Item>"@l
/* 801EC230 001E9170  38 A5 B2 C8 */	addi r5, r5, __vt__Q34Game15ItemBigFountain5State@l
/* 801EC234 001E9174  38 03 B1 E8 */	addi r0, r3, __vt__Q34Game15ItemBigFountain8OutState@l
/* 801EC238 001E9178  90 E4 00 08 */	stw r7, 8(r4)
/* 801EC23C 001E917C  90 C4 00 00 */	stw r6, 0(r4)
/* 801EC240 001E9180  90 A4 00 00 */	stw r5, 0(r4)
/* 801EC244 001E9184  90 04 00 00 */	stw r0, 0(r4)
.L_801EC248:
/* 801EC248 001E9188  7F E3 FB 78 */	mr r3, r31
/* 801EC24C 001E918C  48 00 1B 7D */	bl "registerState__Q24Game43StateMachine<Q34Game15ItemBigFountain4Item>FPQ24Game39FSMState<Q34Game15ItemBigFountain4Item>"
/* 801EC250 001E9190  38 60 00 14 */	li r3, 0x14
/* 801EC254 001E9194  4B E3 7C 51 */	bl __nw__FUl
/* 801EC258 001E9198  7C 64 1B 79 */	or. r4, r3, r3
/* 801EC25C 001E919C  41 82 00 44 */	beq .L_801EC2A0
/* 801EC260 001E91A0  3C 60 80 4C */	lis r3, "__vt__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>"@ha
/* 801EC264 001E91A4  3C C0 80 4C */	lis r6, "__vt__Q24Game40ItemState<Q34Game15ItemBigFountain4Item>"@ha
/* 801EC268 001E91A8  38 03 B3 34 */	addi r0, r3, "__vt__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>"@l
/* 801EC26C 001E91AC  3C A0 80 4C */	lis r5, __vt__Q34Game15ItemBigFountain5State@ha
/* 801EC270 001E91B0  90 04 00 00 */	stw r0, 0(r4)
/* 801EC274 001E91B4  38 00 00 02 */	li r0, 2
/* 801EC278 001E91B8  3C 60 80 4C */	lis r3, __vt__Q34Game15ItemBigFountain11AppearState@ha
/* 801EC27C 001E91BC  38 E0 00 00 */	li r7, 0
/* 801EC280 001E91C0  90 04 00 04 */	stw r0, 4(r4)
/* 801EC284 001E91C4  38 C6 B3 00 */	addi r6, r6, "__vt__Q24Game40ItemState<Q34Game15ItemBigFountain4Item>"@l
/* 801EC288 001E91C8  38 A5 B2 C8 */	addi r5, r5, __vt__Q34Game15ItemBigFountain5State@l
/* 801EC28C 001E91CC  38 03 B2 90 */	addi r0, r3, __vt__Q34Game15ItemBigFountain11AppearState@l
/* 801EC290 001E91D0  90 E4 00 08 */	stw r7, 8(r4)
/* 801EC294 001E91D4  90 C4 00 00 */	stw r6, 0(r4)
/* 801EC298 001E91D8  90 A4 00 00 */	stw r5, 0(r4)
/* 801EC29C 001E91DC  90 04 00 00 */	stw r0, 0(r4)
.L_801EC2A0:
/* 801EC2A0 001E91E0  7F E3 FB 78 */	mr r3, r31
/* 801EC2A4 001E91E4  48 00 1B 25 */	bl "registerState__Q24Game43StateMachine<Q34Game15ItemBigFountain4Item>FPQ24Game39FSMState<Q34Game15ItemBigFountain4Item>"
/* 801EC2A8 001E91E8  38 60 00 10 */	li r3, 0x10
/* 801EC2AC 001E91EC  4B E3 7B F9 */	bl __nw__FUl
/* 801EC2B0 001E91F0  7C 64 1B 79 */	or. r4, r3, r3
/* 801EC2B4 001E91F4  41 82 00 44 */	beq .L_801EC2F8
/* 801EC2B8 001E91F8  3C 60 80 4C */	lis r3, "__vt__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>"@ha
/* 801EC2BC 001E91FC  3C C0 80 4C */	lis r6, "__vt__Q24Game40ItemState<Q34Game15ItemBigFountain4Item>"@ha
/* 801EC2C0 001E9200  38 03 B3 34 */	addi r0, r3, "__vt__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>"@l
/* 801EC2C4 001E9204  3C A0 80 4C */	lis r5, __vt__Q34Game15ItemBigFountain5State@ha
/* 801EC2C8 001E9208  90 04 00 00 */	stw r0, 0(r4)
/* 801EC2CC 001E920C  38 00 00 03 */	li r0, 3
/* 801EC2D0 001E9210  3C 60 80 4C */	lis r3, __vt__Q34Game15ItemBigFountain10CloseState@ha
/* 801EC2D4 001E9214  38 E0 00 00 */	li r7, 0
/* 801EC2D8 001E9218  90 04 00 04 */	stw r0, 4(r4)
/* 801EC2DC 001E921C  38 C6 B3 00 */	addi r6, r6, "__vt__Q24Game40ItemState<Q34Game15ItemBigFountain4Item>"@l
/* 801EC2E0 001E9220  38 A5 B2 C8 */	addi r5, r5, __vt__Q34Game15ItemBigFountain5State@l
/* 801EC2E4 001E9224  38 03 B2 58 */	addi r0, r3, __vt__Q34Game15ItemBigFountain10CloseState@l
/* 801EC2E8 001E9228  90 E4 00 08 */	stw r7, 8(r4)
/* 801EC2EC 001E922C  90 C4 00 00 */	stw r6, 0(r4)
/* 801EC2F0 001E9230  90 A4 00 00 */	stw r5, 0(r4)
/* 801EC2F4 001E9234  90 04 00 00 */	stw r0, 0(r4)
.L_801EC2F8:
/* 801EC2F8 001E9238  7F E3 FB 78 */	mr r3, r31
/* 801EC2FC 001E923C  48 00 1A CD */	bl "registerState__Q24Game43StateMachine<Q34Game15ItemBigFountain4Item>FPQ24Game39FSMState<Q34Game15ItemBigFountain4Item>"
/* 801EC300 001E9240  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801EC304 001E9244  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801EC308 001E9248  7C 08 03 A6 */	mtlr r0
/* 801EC30C 001E924C  38 21 00 10 */	addi r1, r1, 0x10
/* 801EC310 001E9250  4E 80 00 20 */	blr 
.endfn init__Q34Game15ItemBigFountain3FSMFPQ34Game15ItemBigFountain4Item

.fn init__Q34Game15ItemBigFountain11AppearStateFPQ34Game15ItemBigFountain4ItemPQ24Game8StateArg, global
/* 801EC314 001E9254  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801EC318 001E9258  7C 08 02 A6 */	mflr r0
/* 801EC31C 001E925C  7C 85 23 78 */	mr r5, r4
/* 801EC320 001E9260  C0 22 B7 38 */	lfs f1, lbl_80519A98@sda21(r2)
/* 801EC324 001E9264  90 01 00 14 */	stw r0, 0x14(r1)
/* 801EC328 001E9268  38 80 00 01 */	li r4, 1
/* 801EC32C 001E926C  C0 02 B7 3C */	lfs f0, lbl_80519A9C@sda21(r2)
/* 801EC330 001E9270  D0 25 01 F0 */	stfs f1, 0x1f0(r5)
/* 801EC334 001E9274  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 801EC338 001E9278  7C A3 2B 78 */	mr r3, r5
/* 801EC33C 001E927C  81 85 00 00 */	lwz r12, 0(r5)
/* 801EC340 001E9280  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 801EC344 001E9284  7D 89 03 A6 */	mtctr r12
/* 801EC348 001E9288  4E 80 04 21 */	bctrl 
/* 801EC34C 001E928C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801EC350 001E9290  7C 08 03 A6 */	mtlr r0
/* 801EC354 001E9294  38 21 00 10 */	addi r1, r1, 0x10
/* 801EC358 001E9298  4E 80 00 20 */	blr 
.endfn init__Q34Game15ItemBigFountain11AppearStateFPQ34Game15ItemBigFountain4ItemPQ24Game8StateArg

.fn exec__Q34Game15ItemBigFountain11AppearStateFPQ34Game15ItemBigFountain4Item, global
/* 801EC35C 001E929C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801EC360 001E92A0  7C 08 02 A6 */	mflr r0
/* 801EC364 001E92A4  90 01 00 34 */	stw r0, 0x34(r1)
/* 801EC368 001E92A8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 801EC36C 001E92AC  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 801EC370 001E92B0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801EC374 001E92B4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801EC378 001E92B8  80 AD 9A EC */	lwz r5, sys@sda21(r13)
/* 801EC37C 001E92BC  7C 7E 1B 78 */	mr r30, r3
/* 801EC380 001E92C0  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 801EC384 001E92C4  7C 9F 23 78 */	mr r31, r4
/* 801EC388 001E92C8  C0 05 00 54 */	lfs f0, 0x54(r5)
/* 801EC38C 001E92CC  C0 62 B7 44 */	lfs f3, lbl_80519AA4@sda21(r2)
/* 801EC390 001E92D0  EC 41 00 2A */	fadds f2, f1, f0
/* 801EC394 001E92D4  C0 22 B7 40 */	lfs f1, lbl_80519AA0@sda21(r2)
/* 801EC398 001E92D8  C0 02 B7 3C */	lfs f0, lbl_80519A9C@sda21(r2)
/* 801EC39C 001E92DC  D0 43 00 10 */	stfs f2, 0x10(r3)
/* 801EC3A0 001E92E0  C0 43 00 10 */	lfs f2, 0x10(r3)
/* 801EC3A4 001E92E4  EF E3 08 BC */	fnmsubs f31, f3, f2, f1
/* 801EC3A8 001E92E8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 801EC3AC 001E92EC  4C 40 13 82 */	cror 2, 0, 2
/* 801EC3B0 001E92F0  40 82 00 4C */	bne .L_801EC3FC
/* 801EC3B4 001E92F4  81 84 00 00 */	lwz r12, 0(r4)
/* 801EC3B8 001E92F8  FF E0 00 90 */	fmr f31, f0
/* 801EC3BC 001E92FC  38 61 00 08 */	addi r3, r1, 8
/* 801EC3C0 001E9300  81 8C 00 08 */	lwz r12, 8(r12)
/* 801EC3C4 001E9304  7D 89 03 A6 */	mtctr r12
/* 801EC3C8 001E9308  4E 80 04 21 */	bctrl 
/* 801EC3CC 001E930C  7F C3 F3 78 */	mr r3, r30
/* 801EC3D0 001E9310  7F E4 FB 78 */	mr r4, r31
/* 801EC3D4 001E9314  81 9E 00 00 */	lwz r12, 0(r30)
/* 801EC3D8 001E9318  38 A0 00 00 */	li r5, 0
/* 801EC3DC 001E931C  38 C0 00 00 */	li r6, 0
/* 801EC3E0 001E9320  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801EC3E4 001E9324  7D 89 03 A6 */	mtctr r12
/* 801EC3E8 001E9328  4E 80 04 21 */	bctrl 
/* 801EC3EC 001E932C  80 6D 98 58 */	lwz r3, spSysIF__8PSSystem@sda21(r13)
/* 801EC3F0 001E9330  38 80 18 1C */	li r4, 0x181c
/* 801EC3F4 001E9334  38 A0 00 00 */	li r5, 0
/* 801EC3F8 001E9338  48 14 C2 39 */	bl playSystemSe__Q28PSSystem5SysIFFUlUl
.L_801EC3FC:
/* 801EC3FC 001E933C  C0 02 B7 38 */	lfs f0, lbl_80519A98@sda21(r2)
/* 801EC400 001E9340  EC 00 07 F2 */	fmuls f0, f0, f31
/* 801EC404 001E9344  D0 1F 01 F0 */	stfs f0, 0x1f0(r31)
/* 801EC408 001E9348  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 801EC40C 001E934C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801EC410 001E9350  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 801EC414 001E9354  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801EC418 001E9358  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801EC41C 001E935C  7C 08 03 A6 */	mtlr r0
/* 801EC420 001E9360  38 21 00 30 */	addi r1, r1, 0x30
/* 801EC424 001E9364  4E 80 00 20 */	blr 
.endfn exec__Q34Game15ItemBigFountain11AppearStateFPQ34Game15ItemBigFountain4Item

.fn "transit__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemiPQ24Game8StateArg", weak
/* 801EC428 001E9368  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801EC42C 001E936C  7C 08 02 A6 */	mflr r0
/* 801EC430 001E9370  90 01 00 14 */	stw r0, 0x14(r1)
/* 801EC434 001E9374  80 63 00 08 */	lwz r3, 8(r3)
/* 801EC438 001E9378  81 83 00 00 */	lwz r12, 0(r3)
/* 801EC43C 001E937C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801EC440 001E9380  7D 89 03 A6 */	mtctr r12
/* 801EC444 001E9384  4E 80 04 21 */	bctrl 
/* 801EC448 001E9388  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801EC44C 001E938C  7C 08 03 A6 */	mtlr r0
/* 801EC450 001E9390  38 21 00 10 */	addi r1, r1, 0x10
/* 801EC454 001E9394  4E 80 00 20 */	blr 
.endfn "transit__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemiPQ24Game8StateArg"

.fn cleanup__Q34Game15ItemBigFountain11AppearStateFPQ34Game15ItemBigFountain4Item, global
/* 801EC458 001E9398  4E 80 00 20 */	blr 
.endfn cleanup__Q34Game15ItemBigFountain11AppearStateFPQ34Game15ItemBigFountain4Item

.fn init__Q34Game15ItemBigFountain10CloseStateFPQ34Game15ItemBigFountain4ItemPQ24Game8StateArg, global
/* 801EC45C 001E939C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801EC460 001E93A0  7C 08 02 A6 */	mflr r0
/* 801EC464 001E93A4  7C 83 23 78 */	mr r3, r4
/* 801EC468 001E93A8  C0 02 B7 38 */	lfs f0, lbl_80519A98@sda21(r2)
/* 801EC46C 001E93AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801EC470 001E93B0  38 80 00 00 */	li r4, 0
/* 801EC474 001E93B4  D0 03 01 F0 */	stfs f0, 0x1f0(r3)
/* 801EC478 001E93B8  81 83 00 00 */	lwz r12, 0(r3)
/* 801EC47C 001E93BC  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 801EC480 001E93C0  7D 89 03 A6 */	mtctr r12
/* 801EC484 001E93C4  4E 80 04 21 */	bctrl 
/* 801EC488 001E93C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801EC48C 001E93CC  7C 08 03 A6 */	mtlr r0
/* 801EC490 001E93D0  38 21 00 10 */	addi r1, r1, 0x10
/* 801EC494 001E93D4  4E 80 00 20 */	blr 
.endfn init__Q34Game15ItemBigFountain10CloseStateFPQ34Game15ItemBigFountain4ItemPQ24Game8StateArg

.fn exec__Q34Game15ItemBigFountain10CloseStateFPQ34Game15ItemBigFountain4Item, global
/* 801EC498 001E93D8  88 64 00 D8 */	lbz r3, 0xd8(r4)
/* 801EC49C 001E93DC  38 00 FF CB */	li r0, -53
/* 801EC4A0 001E93E0  7C 60 00 38 */	and r0, r3, r0
/* 801EC4A4 001E93E4  98 04 00 D8 */	stb r0, 0xd8(r4)
/* 801EC4A8 001E93E8  4E 80 00 20 */	blr 
.endfn exec__Q34Game15ItemBigFountain10CloseStateFPQ34Game15ItemBigFountain4Item

.fn cleanup__Q34Game15ItemBigFountain10CloseStateFPQ34Game15ItemBigFountain4Item, global
/* 801EC4AC 001E93EC  4E 80 00 20 */	blr 
.endfn cleanup__Q34Game15ItemBigFountain10CloseStateFPQ34Game15ItemBigFountain4Item

.fn init__Q34Game15ItemBigFountain9WaitStateFPQ34Game15ItemBigFountain4ItemPQ24Game8StateArg, global
/* 801EC4B0 001E93F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801EC4B4 001E93F4  7C 08 02 A6 */	mflr r0
/* 801EC4B8 001E93F8  38 A0 00 00 */	li r5, 0
/* 801EC4BC 001E93FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801EC4C0 001E9400  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801EC4C4 001E9404  7C 9F 23 78 */	mr r31, r4
/* 801EC4C8 001E9408  38 80 00 00 */	li r4, 0
/* 801EC4CC 001E940C  38 7F 01 A8 */	addi r3, r31, 0x1a8
/* 801EC4D0 001E9410  48 23 C7 B9 */	bl startAnim__Q28SysShape8AnimatorFiPQ28SysShape14MotionListener
/* 801EC4D4 001E9414  C0 02 B7 3C */	lfs f0, lbl_80519A9C@sda21(r2)
/* 801EC4D8 001E9418  D0 1F 01 D4 */	stfs f0, 0x1d4(r31)
/* 801EC4DC 001E941C  D0 1F 01 F0 */	stfs f0, 0x1f0(r31)
/* 801EC4E0 001E9420  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801EC4E4 001E9424  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801EC4E8 001E9428  7C 08 03 A6 */	mtlr r0
/* 801EC4EC 001E942C  38 21 00 10 */	addi r1, r1, 0x10
/* 801EC4F0 001E9430  4E 80 00 20 */	blr 
.endfn init__Q34Game15ItemBigFountain9WaitStateFPQ34Game15ItemBigFountain4ItemPQ24Game8StateArg

.fn exec__Q34Game15ItemBigFountain9WaitStateFPQ34Game15ItemBigFountain4Item, global
/* 801EC4F4 001E9434  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801EC4F8 001E9438  7C 08 02 A6 */	mflr r0
/* 801EC4FC 001E943C  7C 83 23 78 */	mr r3, r4
/* 801EC500 001E9440  38 80 30 48 */	li r4, 0x3048
/* 801EC504 001E9444  90 01 00 14 */	stw r0, 0x14(r1)
/* 801EC508 001E9448  81 83 00 00 */	lwz r12, 0(r3)
/* 801EC50C 001E944C  81 8C 01 C0 */	lwz r12, 0x1c0(r12)
/* 801EC510 001E9450  7D 89 03 A6 */	mtctr r12
/* 801EC514 001E9454  4E 80 04 21 */	bctrl 
/* 801EC518 001E9458  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801EC51C 001E945C  7C 08 03 A6 */	mtlr r0
/* 801EC520 001E9460  38 21 00 10 */	addi r1, r1, 0x10
/* 801EC524 001E9464  4E 80 00 20 */	blr 
.endfn exec__Q34Game15ItemBigFountain9WaitStateFPQ34Game15ItemBigFountain4Item

.fn cleanup__Q34Game15ItemBigFountain9WaitStateFPQ34Game15ItemBigFountain4Item, global
/* 801EC528 001E9468  4E 80 00 20 */	blr 
.endfn cleanup__Q34Game15ItemBigFountain9WaitStateFPQ34Game15ItemBigFountain4Item

.fn onDamage__Q34Game15ItemBigFountain9WaitStateFPQ34Game15ItemBigFountain4Itemf, global
/* 801EC52C 001E946C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801EC530 001E9470  7C 08 02 A6 */	mflr r0
/* 801EC534 001E9474  C0 02 B7 3C */	lfs f0, lbl_80519A9C@sda21(r2)
/* 801EC538 001E9478  90 01 00 14 */	stw r0, 0x14(r1)
/* 801EC53C 001E947C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801EC540 001E9480  7C 9F 23 78 */	mr r31, r4
/* 801EC544 001E9484  C0 44 02 00 */	lfs f2, 0x200(r4)
/* 801EC548 001E9488  EC 22 08 28 */	fsubs f1, f2, f1
/* 801EC54C 001E948C  D0 24 02 00 */	stfs f1, 0x200(r4)
/* 801EC550 001E9490  C0 24 02 00 */	lfs f1, 0x200(r4)
/* 801EC554 001E9494  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801EC558 001E9498  4C 40 13 82 */	cror 2, 0, 2
/* 801EC55C 001E949C  40 82 00 1C */	bne .L_801EC578
/* 801EC560 001E94A0  81 83 00 00 */	lwz r12, 0(r3)
/* 801EC564 001E94A4  38 A0 00 01 */	li r5, 1
/* 801EC568 001E94A8  38 C0 00 00 */	li r6, 0
/* 801EC56C 001E94AC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801EC570 001E94B0  7D 89 03 A6 */	mtctr r12
/* 801EC574 001E94B4  4E 80 04 21 */	bctrl 
.L_801EC578:
/* 801EC578 001E94B8  C0 3F 01 D4 */	lfs f1, 0x1d4(r31)
/* 801EC57C 001E94BC  C0 02 B7 48 */	lfs f0, lbl_80519AA8@sda21(r2)
/* 801EC580 001E94C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801EC584 001E94C4  40 80 00 28 */	bge .L_801EC5AC
/* 801EC588 001E94C8  28 1F 00 00 */	cmplwi r31, 0
/* 801EC58C 001E94CC  7F E5 FB 78 */	mr r5, r31
/* 801EC590 001E94D0  41 82 00 08 */	beq .L_801EC598
/* 801EC594 001E94D4  38 BF 01 78 */	addi r5, r31, 0x178
.L_801EC598:
/* 801EC598 001E94D8  38 7F 01 A8 */	addi r3, r31, 0x1a8
/* 801EC59C 001E94DC  38 80 00 00 */	li r4, 0
/* 801EC5A0 001E94E0  48 23 C6 E9 */	bl startAnim__Q28SysShape8AnimatorFiPQ28SysShape14MotionListener
/* 801EC5A4 001E94E4  C0 02 B7 48 */	lfs f0, lbl_80519AA8@sda21(r2)
/* 801EC5A8 001E94E8  D0 1F 01 D4 */	stfs f0, 0x1d4(r31)
.L_801EC5AC:
/* 801EC5AC 001E94EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801EC5B0 001E94F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801EC5B4 001E94F4  7C 08 03 A6 */	mtlr r0
/* 801EC5B8 001E94F8  38 21 00 10 */	addi r1, r1, 0x10
/* 801EC5BC 001E94FC  4E 80 00 20 */	blr 
.endfn onDamage__Q34Game15ItemBigFountain9WaitStateFPQ34Game15ItemBigFountain4Itemf

.fn onKeyEvent__Q34Game15ItemBigFountain9WaitStateFPQ34Game15ItemBigFountain4ItemRCQ28SysShape8KeyEvent, global
/* 801EC5C0 001E9500  C0 02 B7 3C */	lfs f0, lbl_80519A9C@sda21(r2)
/* 801EC5C4 001E9504  D0 04 01 D4 */	stfs f0, 0x1d4(r4)
/* 801EC5C8 001E9508  4E 80 00 20 */	blr 
.endfn onKeyEvent__Q34Game15ItemBigFountain9WaitStateFPQ34Game15ItemBigFountain4ItemRCQ28SysShape8KeyEvent

.fn init__Q34Game15ItemBigFountain8OutStateFPQ34Game15ItemBigFountain4ItemPQ24Game8StateArg, global
/* 801EC5CC 001E950C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801EC5D0 001E9510  7C 08 02 A6 */	mflr r0
/* 801EC5D4 001E9514  38 A0 00 00 */	li r5, 0
/* 801EC5D8 001E9518  90 01 00 24 */	stw r0, 0x24(r1)
/* 801EC5DC 001E951C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801EC5E0 001E9520  7C 9F 23 78 */	mr r31, r4
/* 801EC5E4 001E9524  38 80 00 01 */	li r4, 1
/* 801EC5E8 001E9528  38 7F 01 A8 */	addi r3, r31, 0x1a8
/* 801EC5EC 001E952C  48 23 C6 9D */	bl startAnim__Q28SysShape8AnimatorFiPQ28SysShape14MotionListener
/* 801EC5F0 001E9530  C0 02 B7 48 */	lfs f0, lbl_80519AA8@sda21(r2)
/* 801EC5F4 001E9534  7F E3 FB 78 */	mr r3, r31
/* 801EC5F8 001E9538  38 80 00 00 */	li r4, 0
/* 801EC5FC 001E953C  D0 1F 01 D4 */	stfs f0, 0x1d4(r31)
/* 801EC600 001E9540  81 9F 00 00 */	lwz r12, 0(r31)
/* 801EC604 001E9544  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 801EC608 001E9548  7D 89 03 A6 */	mtctr r12
/* 801EC60C 001E954C  4E 80 04 21 */	bctrl 
/* 801EC610 001E9550  80 7F 01 F8 */	lwz r3, 0x1f8(r31)
/* 801EC614 001E9554  81 83 00 00 */	lwz r12, 0(r3)
/* 801EC618 001E9558  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801EC61C 001E955C  7D 89 03 A6 */	mtctr r12
/* 801EC620 001E9560  4E 80 04 21 */	bctrl 
/* 801EC624 001E9564  3C 60 80 4B */	lis r3, __vt__Q23efx3Arg@ha
/* 801EC628 001E9568  38 81 00 08 */	addi r4, r1, 8
/* 801EC62C 001E956C  38 03 A7 EC */	addi r0, r3, __vt__Q23efx3Arg@l
/* 801EC630 001E9570  90 01 00 08 */	stw r0, 8(r1)
/* 801EC634 001E9574  C0 1F 01 9C */	lfs f0, 0x19c(r31)
/* 801EC638 001E9578  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 801EC63C 001E957C  C0 1F 01 A0 */	lfs f0, 0x1a0(r31)
/* 801EC640 001E9580  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801EC644 001E9584  C0 1F 01 A4 */	lfs f0, 0x1a4(r31)
/* 801EC648 001E9588  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 801EC64C 001E958C  80 7F 01 F4 */	lwz r3, 0x1f4(r31)
/* 801EC650 001E9590  81 83 00 00 */	lwz r12, 0(r3)
/* 801EC654 001E9594  81 8C 00 08 */	lwz r12, 8(r12)
/* 801EC658 001E9598  7D 89 03 A6 */	mtctr r12
/* 801EC65C 001E959C  4E 80 04 21 */	bctrl 
/* 801EC660 001E95A0  80 6D 93 E8 */	lwz r3, gameSystem__4Game@sda21(r13)
/* 801EC664 001E95A4  88 03 00 3C */	lbz r0, 0x3c(r3)
/* 801EC668 001E95A8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 801EC66C 001E95AC  41 82 00 68 */	beq .L_801EC6D4
/* 801EC670 001E95B0  38 7F 01 E0 */	addi r3, r31, 0x1e0
/* 801EC674 001E95B4  48 04 25 BD */	bl finish__Q24Game11TSoundEventFv
/* 801EC678 001E95B8  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 801EC67C 001E95BC  81 83 00 28 */	lwz r12, 0x28(r3)
/* 801EC680 001E95C0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801EC684 001E95C4  7D 89 03 A6 */	mtctr r12
/* 801EC688 001E95C8  4E 80 04 21 */	bctrl 
/* 801EC68C 001E95CC  2C 03 00 0A */	cmpwi r3, 0xa
/* 801EC690 001E95D0  41 82 00 20 */	beq .L_801EC6B0
/* 801EC694 001E95D4  3C 60 80 48 */	lis r3, lbl_804810BC@ha
/* 801EC698 001E95D8  3C A0 80 48 */	lis r5, lbl_804810D0@ha
/* 801EC69C 001E95DC  38 63 10 BC */	addi r3, r3, lbl_804810BC@l
/* 801EC6A0 001E95E0  38 80 00 F8 */	li r4, 0xf8
/* 801EC6A4 001E95E4  38 A5 10 D0 */	addi r5, r5, lbl_804810D0@l
/* 801EC6A8 001E95E8  4C C6 31 82 */	crclr 6
/* 801EC6AC 001E95EC  4B E3 DF 95 */	bl panic_f__12JUTExceptionFPCciPCce
.L_801EC6B0:
/* 801EC6B0 001E95F0  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 801EC6B4 001E95F4  81 83 00 28 */	lwz r12, 0x28(r3)
/* 801EC6B8 001E95F8  81 8C 00 94 */	lwz r12, 0x94(r12)
/* 801EC6BC 001E95FC  7D 89 03 A6 */	mtctr r12
/* 801EC6C0 001E9600  4E 80 04 21 */	bctrl 
/* 801EC6C4 001E9604  80 6D 98 58 */	lwz r3, spSysIF__8PSSystem@sda21(r13)
/* 801EC6C8 001E9608  38 80 18 1C */	li r4, 0x181c
/* 801EC6CC 001E960C  38 A0 00 00 */	li r5, 0
/* 801EC6D0 001E9610  48 14 BF 61 */	bl playSystemSe__Q28PSSystem5SysIFFUlUl
.L_801EC6D4:
/* 801EC6D4 001E9614  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801EC6D8 001E9618  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801EC6DC 001E961C  7C 08 03 A6 */	mtlr r0
/* 801EC6E0 001E9620  38 21 00 20 */	addi r1, r1, 0x20
/* 801EC6E4 001E9624  4E 80 00 20 */	blr 
.endfn init__Q34Game15ItemBigFountain8OutStateFPQ34Game15ItemBigFountain4ItemPQ24Game8StateArg

.fn exec__Q34Game15ItemBigFountain8OutStateFPQ34Game15ItemBigFountain4Item, global
/* 801EC6E8 001E9628  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801EC6EC 001E962C  7C 08 02 A6 */	mflr r0
/* 801EC6F0 001E9630  7C 83 23 78 */	mr r3, r4
/* 801EC6F4 001E9634  38 80 30 3C */	li r4, 0x303c
/* 801EC6F8 001E9638  90 01 00 14 */	stw r0, 0x14(r1)
/* 801EC6FC 001E963C  81 83 00 00 */	lwz r12, 0(r3)
/* 801EC700 001E9640  81 8C 01 C0 */	lwz r12, 0x1c0(r12)
/* 801EC704 001E9644  7D 89 03 A6 */	mtctr r12
/* 801EC708 001E9648  4E 80 04 21 */	bctrl 
/* 801EC70C 001E964C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801EC710 001E9650  7C 08 03 A6 */	mtlr r0
/* 801EC714 001E9654  38 21 00 10 */	addi r1, r1, 0x10
/* 801EC718 001E9658  4E 80 00 20 */	blr 
.endfn exec__Q34Game15ItemBigFountain8OutStateFPQ34Game15ItemBigFountain4Item

.fn cleanup__Q34Game15ItemBigFountain8OutStateFPQ34Game15ItemBigFountain4Item, global
/* 801EC71C 001E965C  4E 80 00 20 */	blr 
.endfn cleanup__Q34Game15ItemBigFountain8OutStateFPQ34Game15ItemBigFountain4Item

.fn movieUserCommand__Q34Game15ItemBigFountain4ItemFUlPQ24Game11MoviePlayer, global
/* 801EC720 001E9660  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 801EC724 001E9664  7C 08 02 A6 */	mflr r0
/* 801EC728 001E9668  90 01 00 74 */	stw r0, 0x74(r1)
/* 801EC72C 001E966C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 801EC730 001E9670  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 801EC734 001E9674  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 801EC738 001E9678  F3 C1 00 58 */	psq_st f30, 88(r1), 0, qr0
/* 801EC73C 001E967C  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 801EC740 001E9680  93 C1 00 48 */	stw r30, 0x48(r1)
/* 801EC744 001E9684  93 A1 00 44 */	stw r29, 0x44(r1)
/* 801EC748 001E9688  2C 04 00 64 */	cmpwi r4, 0x64
/* 801EC74C 001E968C  7C 7D 1B 78 */	mr r29, r3
/* 801EC750 001E9690  7C BE 2B 78 */	mr r30, r5
/* 801EC754 001E9694  41 82 00 08 */	beq .L_801EC75C
/* 801EC758 001E9698  48 00 01 A0 */	b .L_801EC8F8
.L_801EC75C:
/* 801EC75C 001E969C  38 61 00 2C */	addi r3, r1, 0x2c
/* 801EC760 001E96A0  4B F8 02 09 */	bl __ct__Q24Game14PelletIteratorFv
/* 801EC764 001E96A4  38 61 00 2C */	addi r3, r1, 0x2c
/* 801EC768 001E96A8  4B F8 02 19 */	bl first__Q24Game14PelletIteratorFv
/* 801EC76C 001E96AC  48 00 01 0C */	b .L_801EC878
.L_801EC770:
/* 801EC770 001E96B0  38 61 00 2C */	addi r3, r1, 0x2c
/* 801EC774 001E96B4  4B F8 02 59 */	bl __ml__Q24Game14PelletIteratorFv
/* 801EC778 001E96B8  81 83 00 00 */	lwz r12, 0(r3)
/* 801EC77C 001E96BC  7C 7F 1B 78 */	mr r31, r3
/* 801EC780 001E96C0  81 8C 01 E4 */	lwz r12, 0x1e4(r12)
/* 801EC784 001E96C4  7D 89 03 A6 */	mtctr r12
/* 801EC788 001E96C8  4E 80 04 21 */	bctrl 
/* 801EC78C 001E96CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801EC790 001E96D0  41 82 00 E0 */	beq .L_801EC870
/* 801EC794 001E96D4  7F E3 FB 78 */	mr r3, r31
/* 801EC798 001E96D8  81 9F 00 00 */	lwz r12, 0(r31)
/* 801EC79C 001E96DC  81 8C 00 A8 */	lwz r12, 0xa8(r12)
/* 801EC7A0 001E96E0  7D 89 03 A6 */	mtctr r12
/* 801EC7A4 001E96E4  4E 80 04 21 */	bctrl 
/* 801EC7A8 001E96E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801EC7AC 001E96EC  41 82 00 C4 */	beq .L_801EC870
/* 801EC7B0 001E96F0  7F E4 FB 78 */	mr r4, r31
/* 801EC7B4 001E96F4  38 61 00 14 */	addi r3, r1, 0x14
/* 801EC7B8 001E96F8  81 9F 00 00 */	lwz r12, 0(r31)
/* 801EC7BC 001E96FC  81 8C 00 08 */	lwz r12, 8(r12)
/* 801EC7C0 001E9700  7D 89 03 A6 */	mtctr r12
/* 801EC7C4 001E9704  4E 80 04 21 */	bctrl 
/* 801EC7C8 001E9708  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 801EC7CC 001E970C  7F A4 EB 78 */	mr r4, r29
/* 801EC7D0 001E9710  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 801EC7D4 001E9714  38 61 00 08 */	addi r3, r1, 8
/* 801EC7D8 001E9718  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 801EC7DC 001E971C  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 801EC7E0 001E9720  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 801EC7E4 001E9724  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 801EC7E8 001E9728  81 9D 00 00 */	lwz r12, 0(r29)
/* 801EC7EC 001E972C  81 8C 00 08 */	lwz r12, 8(r12)
/* 801EC7F0 001E9730  7D 89 03 A6 */	mtctr r12
/* 801EC7F4 001E9734  4E 80 04 21 */	bctrl 
/* 801EC7F8 001E9738  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 801EC7FC 001E973C  7F E3 FB 78 */	mr r3, r31
/* 801EC800 001E9740  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 801EC804 001E9744  C0 21 00 08 */	lfs f1, 8(r1)
/* 801EC808 001E9748  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 801EC80C 001E974C  EF C3 10 28 */	fsubs f30, f3, f2
/* 801EC810 001E9750  EF E1 00 28 */	fsubs f31, f1, f0
/* 801EC814 001E9754  4B F7 A1 A9 */	bl getBottomRadius__Q24Game6PelletFv
/* 801EC818 001E9758  EC 5E 07 B2 */	fmuls f2, f30, f30
/* 801EC81C 001E975C  C0 02 B7 3C */	lfs f0, lbl_80519A9C@sda21(r2)
/* 801EC820 001E9760  EC 5F 17 FA */	fmadds f2, f31, f31, f2
/* 801EC824 001E9764  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801EC828 001E9768  40 81 00 14 */	ble .L_801EC83C
/* 801EC82C 001E976C  40 81 00 14 */	ble .L_801EC840
/* 801EC830 001E9770  FC 00 10 34 */	frsqrte f0, f2
/* 801EC834 001E9774  EC 40 00 B2 */	fmuls f2, f0, f2
/* 801EC838 001E9778  48 00 00 08 */	b .L_801EC840
.L_801EC83C:
/* 801EC83C 001E977C  FC 40 00 90 */	fmr f2, f0
.L_801EC840:
/* 801EC840 001E9780  EC 22 08 28 */	fsubs f1, f2, f1
/* 801EC844 001E9784  C0 02 B7 4C */	lfs f0, lbl_80519AAC@sda21(r2)
/* 801EC848 001E9788  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801EC84C 001E978C  40 80 00 24 */	bge .L_801EC870
/* 801EC850 001E9790  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 801EC854 001E9794  7F E3 FB 78 */	mr r3, r31
/* 801EC858 001E9798  C0 02 B7 50 */	lfs f0, lbl_80519AB0@sda21(r2)
/* 801EC85C 001E979C  38 81 00 20 */	addi r4, r1, 0x20
/* 801EC860 001E97A0  38 A0 00 00 */	li r5, 0
/* 801EC864 001E97A4  EC 01 00 2A */	fadds f0, f1, f0
/* 801EC868 001E97A8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 801EC86C 001E97AC  4B F4 E9 3D */	bl "setPosition__Q24Game8CreatureFR10Vector3<f>b"
.L_801EC870:
/* 801EC870 001E97B0  38 61 00 2C */	addi r3, r1, 0x2c
/* 801EC874 001E97B4  4B F8 01 C1 */	bl next__Q24Game14PelletIteratorFv
.L_801EC878:
/* 801EC878 001E97B8  38 61 00 2C */	addi r3, r1, 0x2c
/* 801EC87C 001E97BC  4B F8 02 79 */	bl isDone__Q24Game14PelletIteratorFv
/* 801EC880 001E97C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801EC884 001E97C4  41 82 FE EC */	beq .L_801EC770
/* 801EC888 001E97C8  80 1E 01 F0 */	lwz r0, 0x1f0(r30)
/* 801EC88C 001E97CC  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 801EC890 001E97D0  40 82 00 28 */	bne .L_801EC8B8
/* 801EC894 001E97D4  80 7D 01 D8 */	lwz r3, 0x1d8(r29)
/* 801EC898 001E97D8  7F A4 EB 78 */	mr r4, r29
/* 801EC89C 001E97DC  38 A0 00 02 */	li r5, 2
/* 801EC8A0 001E97E0  38 C0 00 00 */	li r6, 0
/* 801EC8A4 001E97E4  81 83 00 00 */	lwz r12, 0(r3)
/* 801EC8A8 001E97E8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801EC8AC 001E97EC  7D 89 03 A6 */	mtctr r12
/* 801EC8B0 001E97F0  4E 80 04 21 */	bctrl 
/* 801EC8B4 001E97F4  48 00 00 44 */	b .L_801EC8F8
.L_801EC8B8:
/* 801EC8B8 001E97F8  C0 22 B7 3C */	lfs f1, lbl_80519A9C@sda21(r2)
/* 801EC8BC 001E97FC  C0 1D 01 F0 */	lfs f0, 0x1f0(r29)
/* 801EC8C0 001E9800  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801EC8C4 001E9804  41 82 00 14 */	beq .L_801EC8D8
/* 801EC8C8 001E9808  80 6D 98 58 */	lwz r3, spSysIF__8PSSystem@sda21(r13)
/* 801EC8CC 001E980C  38 80 18 1C */	li r4, 0x181c
/* 801EC8D0 001E9810  38 A0 00 00 */	li r5, 0
/* 801EC8D4 001E9814  48 14 BD 5D */	bl playSystemSe__Q28PSSystem5SysIFFUlUl
.L_801EC8D8:
/* 801EC8D8 001E9818  80 7D 01 D8 */	lwz r3, 0x1d8(r29)
/* 801EC8DC 001E981C  7F A4 EB 78 */	mr r4, r29
/* 801EC8E0 001E9820  38 A0 00 00 */	li r5, 0
/* 801EC8E4 001E9824  38 C0 00 00 */	li r6, 0
/* 801EC8E8 001E9828  81 83 00 00 */	lwz r12, 0(r3)
/* 801EC8EC 001E982C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801EC8F0 001E9830  7D 89 03 A6 */	mtctr r12
/* 801EC8F4 001E9834  4E 80 04 21 */	bctrl 
.L_801EC8F8:
/* 801EC8F8 001E9838  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 801EC8FC 001E983C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 801EC900 001E9840  E3 C1 00 58 */	psq_l f30, 88(r1), 0, qr0
/* 801EC904 001E9844  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 801EC908 001E9848  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 801EC90C 001E984C  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 801EC910 001E9850  80 01 00 74 */	lwz r0, 0x74(r1)
/* 801EC914 001E9854  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 801EC918 001E9858  7C 08 03 A6 */	mtlr r0
/* 801EC91C 001E985C  38 21 00 70 */	addi r1, r1, 0x70
/* 801EC920 001E9860  4E 80 00 20 */	blr 
.endfn movieUserCommand__Q34Game15ItemBigFountain4ItemFUlPQ24Game11MoviePlayer

.if version == 1
.fn interactGotKey__Q34Game15ItemBigFountain4ItemFRQ24Game14InteractGotKey, global
/* 801EC924 001E9864  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801EC928 001E9868  7C 08 02 A6 */	mflr r0
/* 801EC92C 001E986C  90 01 00 54 */	stw r0, 0x54(r1)
/* 801EC930 001E9870  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 801EC934 001E9874  7C 7F 1B 78 */	mr r31, r3
/* 801EC938 001E9878  48 00 15 15 */	bl "getStateID__Q24Game98FSMItem<Q34Game15ItemBigFountain4Item,Q34Game15ItemBigFountain3FSM,Q34Game15ItemBigFountain5State>Fv"
/* 801EC93C 001E987C  2C 03 00 03 */	cmpwi r3, 3
/* 801EC940 001E9880  40 82 00 D4 */	bne .L_801ECA14
/* 801EC944 001E9884  80 6D 93 E8 */	lwz r3, gameSystem__4Game@sda21(r13)
/* 801EC948 001E9888  88 03 00 3C */	lbz r0, 0x3c(r3)
/* 801EC94C 001E988C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 801EC950 001E9890  41 82 00 C4 */	beq .L_801ECA14
/* 801EC954 001E9894  C0 02 B7 3C */	lfs f0, lbl_80519A9C@sda21(r2)
/* 801EC958 001E9898  3C 60 80 48 */	lis r3, lbl_804810DC@ha
/* 801EC95C 001E989C  38 00 00 00 */	li r0, 0
/* 801EC960 001E98A0  7F E4 FB 78 */	mr r4, r31
/* 801EC964 001E98A4  38 A3 10 DC */	addi r5, r3, lbl_804810DC@l
/* 801EC968 001E98A8  90 01 00 18 */	stw r0, 0x18(r1)
/* 801EC96C 001E98AC  38 61 00 08 */	addi r3, r1, 8
/* 801EC970 001E98B0  90 A1 00 14 */	stw r5, 0x14(r1)
/* 801EC974 001E98B4  90 01 00 20 */	stw r0, 0x20(r1)
/* 801EC978 001E98B8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 801EC97C 001E98BC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 801EC980 001E98C0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 801EC984 001E98C4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 801EC988 001E98C8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 801EC98C 001E98CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801EC990 001E98D0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801EC994 001E98D4  90 01 00 40 */	stw r0, 0x40(r1)
/* 801EC998 001E98D8  90 01 00 28 */	stw r0, 0x28(r1)
/* 801EC99C 001E98DC  90 01 00 44 */	stw r0, 0x44(r1)
/* 801EC9A0 001E98E0  81 9F 00 00 */	lwz r12, 0(r31)
/* 801EC9A4 001E98E4  81 8C 00 08 */	lwz r12, 8(r12)
/* 801EC9A8 001E98E8  7D 89 03 A6 */	mtctr r12
/* 801EC9AC 001E98EC  4E 80 04 21 */	bctrl 
/* 801EC9B0 001E98F0  C0 41 00 08 */	lfs f2, 8(r1)
/* 801EC9B4 001E98F4  7F E3 FB 78 */	mr r3, r31
/* 801EC9B8 001E98F8  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 801EC9BC 001E98FC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 801EC9C0 001E9900  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 801EC9C4 001E9904  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 801EC9C8 001E9908  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 801EC9CC 001E990C  81 9F 00 00 */	lwz r12, 0(r31)
/* 801EC9D0 001E9910  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 801EC9D4 001E9914  7D 89 03 A6 */	mtctr r12
/* 801EC9D8 001E9918  4E 80 04 21 */	bctrl 
/* 801EC9DC 001E991C  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 801EC9E0 001E9920  38 81 00 14 */	addi r4, r1, 0x14
/* 801EC9E4 001E9924  80 AD 93 E8 */	lwz r5, gameSystem__4Game@sda21(r13)
/* 801EC9E8 001E9928  80 6D 9B 54 */	lwz r3, moviePlayer__4Game@sda21(r13)
/* 801EC9EC 001E992C  80 A5 00 58 */	lwz r5, 0x58(r5)
/* 801EC9F0 001E9930  80 05 00 CC */	lwz r0, 0xec(r5)
/* 801EC9F4 001E9934  90 01 00 24 */	stw r0, 0x24(r1)
/* 801EC9F8 001E9938  80 05 00 C8 */	lwz r0, 0xe8(r5)
/* 801EC9FC 001E993C  90 01 00 20 */	stw r0, 0x20(r1)
/* 801ECA00 001E9940  93 E3 01 94 */	stw r31, 0x194(r3)
/* 801ECA04 001E9944  80 6D 9B 54 */	lwz r3, moviePlayer__4Game@sda21(r13)
/* 801ECA08 001E9948  48 23 FF C9 */	bl play__Q24Game11MoviePlayerFRQ24Game12MoviePlayArg
/* 801ECA0C 001E994C  38 60 00 01 */	li r3, 1
/* 801ECA10 001E9950  48 00 00 08 */	b .L_801ECA18
.L_801ECA14:
/* 801ECA14 001E9954  38 60 00 00 */	li r3, 0
.L_801ECA18:
/* 801ECA18 001E9958  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801ECA1C 001E995C  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 801ECA20 001E9960  7C 08 03 A6 */	mtlr r0
/* 801ECA24 001E9964  38 21 00 50 */	addi r1, r1, 0x50
/* 801ECA28 001E9968  4E 80 00 20 */	blr 
.endfn interactGotKey__Q34Game15ItemBigFountain4ItemFRQ24Game14InteractGotKey
.else
.fn interactGotKey__Q34Game15ItemBigFountain4ItemFRQ24Game14InteractGotKey, global
/* 801EC924 001E9864  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801EC928 001E9868  7C 08 02 A6 */	mflr r0
/* 801EC92C 001E986C  90 01 00 54 */	stw r0, 0x54(r1)
/* 801EC930 001E9870  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 801EC934 001E9874  7C 7F 1B 78 */	mr r31, r3
/* 801EC938 001E9878  48 00 15 15 */	bl "getStateID__Q24Game98FSMItem<Q34Game15ItemBigFountain4Item,Q34Game15ItemBigFountain3FSM,Q34Game15ItemBigFountain5State>Fv"
/* 801EC93C 001E987C  2C 03 00 03 */	cmpwi r3, 3
/* 801EC940 001E9880  40 82 00 D4 */	bne .L_801ECA14
/* 801EC944 001E9884  80 6D 93 E8 */	lwz r3, gameSystem__4Game@sda21(r13)
/* 801EC948 001E9888  88 03 00 3C */	lbz r0, 0x3c(r3)
/* 801EC94C 001E988C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 801EC950 001E9890  41 82 00 C4 */	beq .L_801ECA14
/* 801EC954 001E9894  C0 02 B7 3C */	lfs f0, lbl_80519A9C@sda21(r2)
/* 801EC958 001E9898  3C 60 80 48 */	lis r3, lbl_804810DC@ha
/* 801EC95C 001E989C  38 00 00 00 */	li r0, 0
/* 801EC960 001E98A0  7F E4 FB 78 */	mr r4, r31
/* 801EC964 001E98A4  38 A3 10 DC */	addi r5, r3, lbl_804810DC@l
/* 801EC968 001E98A8  90 01 00 18 */	stw r0, 0x18(r1)
/* 801EC96C 001E98AC  38 61 00 08 */	addi r3, r1, 8
/* 801EC970 001E98B0  90 A1 00 14 */	stw r5, 0x14(r1)
/* 801EC974 001E98B4  90 01 00 20 */	stw r0, 0x20(r1)
/* 801EC978 001E98B8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 801EC97C 001E98BC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 801EC980 001E98C0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 801EC984 001E98C4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 801EC988 001E98C8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 801EC98C 001E98CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801EC990 001E98D0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801EC994 001E98D4  90 01 00 40 */	stw r0, 0x40(r1)
/* 801EC998 001E98D8  90 01 00 28 */	stw r0, 0x28(r1)
/* 801EC99C 001E98DC  90 01 00 44 */	stw r0, 0x44(r1)
/* 801EC9A0 001E98E0  81 9F 00 00 */	lwz r12, 0(r31)
/* 801EC9A4 001E98E4  81 8C 00 08 */	lwz r12, 8(r12)
/* 801EC9A8 001E98E8  7D 89 03 A6 */	mtctr r12
/* 801EC9AC 001E98EC  4E 80 04 21 */	bctrl 
/* 801EC9B0 001E98F0  C0 41 00 08 */	lfs f2, 8(r1)
/* 801EC9B4 001E98F4  7F E3 FB 78 */	mr r3, r31
/* 801EC9B8 001E98F8  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 801EC9BC 001E98FC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 801EC9C0 001E9900  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 801EC9C4 001E9904  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 801EC9C8 001E9908  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 801EC9CC 001E990C  81 9F 00 00 */	lwz r12, 0(r31)
/* 801EC9D0 001E9910  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 801EC9D4 001E9914  7D 89 03 A6 */	mtctr r12
/* 801EC9D8 001E9918  4E 80 04 21 */	bctrl 
/* 801EC9DC 001E991C  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 801EC9E0 001E9920  38 81 00 14 */	addi r4, r1, 0x14
/* 801EC9E4 001E9924  80 AD 93 E8 */	lwz r5, gameSystem__4Game@sda21(r13)
/* 801EC9E8 001E9928  80 6D 9B 54 */	lwz r3, moviePlayer__4Game@sda21(r13)
/* 801EC9EC 001E992C  80 A5 00 58 */	lwz r5, 0x58(r5)
/* 801EC9F0 001E9930  80 05 00 CC */	lwz r0, 0xcc(r5)
/* 801EC9F4 001E9934  90 01 00 24 */	stw r0, 0x24(r1)
/* 801EC9F8 001E9938  80 05 00 C8 */	lwz r0, 0xc8(r5)
/* 801EC9FC 001E993C  90 01 00 20 */	stw r0, 0x20(r1)
/* 801ECA00 001E9940  93 E3 01 94 */	stw r31, 0x194(r3)
/* 801ECA04 001E9944  80 6D 9B 54 */	lwz r3, moviePlayer__4Game@sda21(r13)
/* 801ECA08 001E9948  48 23 FF C9 */	bl play__Q24Game11MoviePlayerFRQ24Game12MoviePlayArg
/* 801ECA0C 001E994C  38 60 00 01 */	li r3, 1
/* 801ECA10 001E9950  48 00 00 08 */	b .L_801ECA18
.L_801ECA14:
/* 801ECA14 001E9954  38 60 00 00 */	li r3, 0
.L_801ECA18:
/* 801ECA18 001E9958  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801ECA1C 001E995C  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 801ECA20 001E9960  7C 08 03 A6 */	mtlr r0
/* 801ECA24 001E9964  38 21 00 50 */	addi r1, r1, 0x50
/* 801ECA28 001E9968  4E 80 00 20 */	blr 
.endfn interactGotKey__Q34Game15ItemBigFountain4ItemFRQ24Game14InteractGotKey
.endif

.fn constructor__Q34Game15ItemBigFountain4ItemFv, global
/* 801ECA2C 001E996C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801ECA30 001E9970  7C 08 02 A6 */	mflr r0
/* 801ECA34 001E9974  90 01 00 14 */	stw r0, 0x14(r1)
/* 801ECA38 001E9978  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801ECA3C 001E997C  7C 7F 1B 78 */	mr r31, r3
/* 801ECA40 001E9980  38 60 00 84 */	li r3, 0x84
/* 801ECA44 001E9984  4B E3 74 61 */	bl __nw__FUl
/* 801ECA48 001E9988  7C 60 1B 79 */	or. r0, r3, r3
/* 801ECA4C 001E998C  41 82 00 10 */	beq .L_801ECA5C
/* 801ECA50 001E9990  7F E4 FB 78 */	mr r4, r31
/* 801ECA54 001E9994  48 27 4B CD */	bl __ct__Q23PSM8WorkItemFPQ24Game8BaseItem
/* 801ECA58 001E9998  7C 60 1B 78 */	mr r0, r3
.L_801ECA5C:
/* 801ECA5C 001E999C  90 1F 01 7C */	stw r0, 0x17c(r31)
/* 801ECA60 001E99A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801ECA64 001E99A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801ECA68 001E99A8  7C 08 03 A6 */	mtlr r0
/* 801ECA6C 001E99AC  38 21 00 10 */	addi r1, r1, 0x10
/* 801ECA70 001E99B0  4E 80 00 20 */	blr 
.endfn constructor__Q34Game15ItemBigFountain4ItemFv

.fn onInit__Q34Game15ItemBigFountain4ItemFPQ24Game15CreatureInitArg, global
/* 801ECA74 001E99B4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801ECA78 001E99B8  7C 08 02 A6 */	mflr r0
/* 801ECA7C 001E99BC  90 01 00 34 */	stw r0, 0x34(r1)
/* 801ECA80 001E99C0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801ECA84 001E99C4  7C 9F 23 78 */	mr r31, r4
/* 801ECA88 001E99C8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801ECA8C 001E99CC  7C 7E 1B 78 */	mr r30, r3
/* 801ECA90 001E99D0  38 60 00 14 */	li r3, 0x14
/* 801ECA94 001E99D4  93 A1 00 24 */	stw r29, 0x24(r1)
/* 801ECA98 001E99D8  4B E3 74 0D */	bl __nw__FUl
/* 801ECA9C 001E99DC  7C 7D 1B 79 */	or. r29, r3, r3
/* 801ECAA0 001E99E0  41 82 00 28 */	beq .L_801ECAC8
/* 801ECAA4 001E99E4  80 6D 94 B0 */	lwz r3, mgr__Q24Game15ItemBigFountain@sda21(r13)
/* 801ECAA8 001E99E8  38 80 00 00 */	li r4, 0
/* 801ECAAC 001E99EC  4B FE 06 A5 */	bl getModelData__Q24Game11BaseItemMgrFi
/* 801ECAB0 001E99F0  7C 64 1B 78 */	mr r4, r3
/* 801ECAB4 001E99F4  7F A3 EB 78 */	mr r3, r29
/* 801ECAB8 001E99F8  3C A0 00 02 */	lis r5, 2
/* 801ECABC 001E99FC  38 C0 00 02 */	li r6, 2
/* 801ECAC0 001E9A00  48 25 17 19 */	bl __ct__Q28SysShape5ModelFP12J3DModelDataUlUl
/* 801ECAC4 001E9A04  7C 7D 1B 78 */	mr r29, r3
.L_801ECAC8:
/* 801ECAC8 001E9A08  93 BE 01 74 */	stw r29, 0x174(r30)
/* 801ECACC 001E9A0C  80 7E 01 74 */	lwz r3, 0x174(r30)
/* 801ECAD0 001E9A10  80 63 00 08 */	lwz r3, 8(r3)
/* 801ECAD4 001E9A14  81 83 00 00 */	lwz r12, 0(r3)
/* 801ECAD8 001E9A18  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801ECADC 001E9A1C  7D 89 03 A6 */	mtctr r12
/* 801ECAE0 001E9A20  4E 80 04 21 */	bctrl 
/* 801ECAE4 001E9A24  80 7E 01 74 */	lwz r3, 0x174(r30)
/* 801ECAE8 001E9A28  80 63 00 08 */	lwz r3, 8(r3)
/* 801ECAEC 001E9A2C  81 83 00 00 */	lwz r12, 0(r3)
/* 801ECAF0 001E9A30  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801ECAF4 001E9A34  7D 89 03 A6 */	mtctr r12
/* 801ECAF8 001E9A38  4E 80 04 21 */	bctrl 
/* 801ECAFC 001E9A3C  80 7E 01 74 */	lwz r3, 0x174(r30)
/* 801ECB00 001E9A40  80 63 00 08 */	lwz r3, 8(r3)
/* 801ECB04 001E9A44  4B E7 9E 21 */	bl makeDL__8J3DModelFv
/* 801ECB08 001E9A48  80 7E 01 74 */	lwz r3, 0x174(r30)
/* 801ECB0C 001E9A4C  80 63 00 08 */	lwz r3, 8(r3)
/* 801ECB10 001E9A50  4B E7 9C E5 */	bl lock__8J3DModelFv
/* 801ECB14 001E9A54  C0 02 B7 54 */	lfs f0, lbl_80519AB4@sda21(r2)
/* 801ECB18 001E9A58  38 DE 01 C4 */	addi r6, r30, 0x1c4
/* 801ECB1C 001E9A5C  38 A0 00 00 */	li r5, 0
/* 801ECB20 001E9A60  38 E0 00 00 */	li r7, 0
/* 801ECB24 001E9A64  D0 1E 01 D0 */	stfs f0, 0x1d0(r30)
/* 801ECB28 001E9A68  80 7E 01 14 */	lwz r3, 0x114(r30)
/* 801ECB2C 001E9A6C  80 9E 01 74 */	lwz r4, 0x174(r30)
/* 801ECB30 001E9A70  4B F4 75 81 */	bl createSingleSphere__8CollTreeFPQ28SysShape9MtxObjectiRQ23Sys6SphereP11CollPartMgr
/* 801ECB34 001E9A74  7F C3 F3 78 */	mr r3, r30
/* 801ECB38 001E9A78  38 80 00 00 */	li r4, 0
/* 801ECB3C 001E9A7C  81 9E 00 00 */	lwz r12, 0(r30)
/* 801ECB40 001E9A80  81 8C 00 B4 */	lwz r12, 0xb4(r12)
/* 801ECB44 001E9A84  7D 89 03 A6 */	mtctr r12
/* 801ECB48 001E9A88  4E 80 04 21 */	bctrl 
/* 801ECB4C 001E9A8C  C0 02 B7 3C */	lfs f0, lbl_80519A9C@sda21(r2)
/* 801ECB50 001E9A90  D0 1E 01 D4 */	stfs f0, 0x1d4(r30)
/* 801ECB54 001E9A94  80 6D 94 B0 */	lwz r3, mgr__Q24Game15ItemBigFountain@sda21(r13)
/* 801ECB58 001E9A98  80 03 00 20 */	lwz r0, 0x20(r3)
/* 801ECB5C 001E9A9C  28 00 00 00 */	cmplwi r0, 0
/* 801ECB60 001E9AA0  40 82 00 20 */	bne .L_801ECB80
/* 801ECB64 001E9AA4  3C 60 80 48 */	lis r3, lbl_804810BC@ha
/* 801ECB68 001E9AA8  3C A0 80 48 */	lis r5, lbl_804810F0@ha
/* 801ECB6C 001E9AAC  38 63 10 BC */	addi r3, r3, lbl_804810BC@l
/* 801ECB70 001E9AB0  38 80 01 6C */	li r4, 0x16c
/* 801ECB74 001E9AB4  38 A5 10 F0 */	addi r5, r5, lbl_804810F0@l
/* 801ECB78 001E9AB8  4C C6 31 82 */	crclr 6
/* 801ECB7C 001E9ABC  4B E3 DA C5 */	bl panic_f__12JUTExceptionFPCciPCce
.L_801ECB80:
/* 801ECB80 001E9AC0  80 6D 94 B0 */	lwz r3, mgr__Q24Game15ItemBigFountain@sda21(r13)
/* 801ECB84 001E9AC4  28 1E 00 00 */	cmplwi r30, 0
/* 801ECB88 001E9AC8  7F C5 F3 78 */	mr r5, r30
/* 801ECB8C 001E9ACC  80 03 00 20 */	lwz r0, 0x20(r3)
/* 801ECB90 001E9AD0  90 1E 01 B8 */	stw r0, 0x1b8(r30)
/* 801ECB94 001E9AD4  41 82 00 08 */	beq .L_801ECB9C
/* 801ECB98 001E9AD8  38 BE 01 78 */	addi r5, r30, 0x178
.L_801ECB9C:
/* 801ECB9C 001E9ADC  38 7E 01 A8 */	addi r3, r30, 0x1a8
/* 801ECBA0 001E9AE0  38 80 00 00 */	li r4, 0
/* 801ECBA4 001E9AE4  48 23 C0 E5 */	bl startAnim__Q28SysShape8AnimatorFiPQ28SysShape14MotionListener
/* 801ECBA8 001E9AE8  80 8D 94 B0 */	lwz r4, mgr__Q24Game15ItemBigFountain@sda21(r13)
/* 801ECBAC 001E9AEC  38 60 00 34 */	li r3, 0x34
/* 801ECBB0 001E9AF0  80 84 00 8C */	lwz r4, 0x8c(r4)
/* 801ECBB4 001E9AF4  C0 04 01 00 */	lfs f0, 0x100(r4)
/* 801ECBB8 001E9AF8  D0 1E 02 00 */	stfs f0, 0x200(r30)
/* 801ECBBC 001E9AFC  4B E3 72 E9 */	bl __nw__FUl
/* 801ECBC0 001E9B00  7C 7D 1B 79 */	or. r29, r3, r3
/* 801ECBC4 001E9B04  41 82 00 20 */	beq .L_801ECBE4
/* 801ECBC8 001E9B08  38 80 00 7F */	li r4, 0x7f
/* 801ECBCC 001E9B0C  38 A0 00 80 */	li r5, 0x80
/* 801ECBD0 001E9B10  38 C0 00 81 */	li r6, 0x81
/* 801ECBD4 001E9B14  48 1C 35 2D */	bl __ct__Q23efx9TForever3FUsUsUs
/* 801ECBD8 001E9B18  3C 60 80 4C */	lis r3, __vt__Q23efx10TGeyserAct@ha
/* 801ECBDC 001E9B1C  38 03 AB 30 */	addi r0, r3, __vt__Q23efx10TGeyserAct@l
/* 801ECBE0 001E9B20  90 1D 00 00 */	stw r0, 0(r29)
.L_801ECBE4:
/* 801ECBE4 001E9B24  93 BE 01 F4 */	stw r29, 0x1f4(r30)
/* 801ECBE8 001E9B28  38 60 00 24 */	li r3, 0x24
/* 801ECBEC 001E9B2C  4B E3 72 B9 */	bl __nw__FUl
/* 801ECBF0 001E9B30  7C 7D 1B 79 */	or. r29, r3, r3
/* 801ECBF4 001E9B34  41 82 00 1C */	beq .L_801ECC10
/* 801ECBF8 001E9B38  38 80 00 82 */	li r4, 0x82
/* 801ECBFC 001E9B3C  38 A0 00 83 */	li r5, 0x83
/* 801ECC00 001E9B40  48 1C 34 11 */	bl __ct__Q23efx9TForever2FUsUs
/* 801ECC04 001E9B44  3C 60 80 4C */	lis r3, __vt__Q23efx10TGeyserSet@ha
/* 801ECC08 001E9B48  38 03 AB 14 */	addi r0, r3, __vt__Q23efx10TGeyserSet@l
/* 801ECC0C 001E9B4C  90 1D 00 00 */	stw r0, 0(r29)
.L_801ECC10:
/* 801ECC10 001E9B50  28 1F 00 00 */	cmplwi r31, 0
/* 801ECC14 001E9B54  93 BE 01 F8 */	stw r29, 0x1f8(r30)
/* 801ECC18 001E9B58  41 82 00 28 */	beq .L_801ECC40
/* 801ECC1C 001E9B5C  80 7E 01 D8 */	lwz r3, 0x1d8(r30)
/* 801ECC20 001E9B60  7F C4 F3 78 */	mr r4, r30
/* 801ECC24 001E9B64  80 BF 00 04 */	lwz r5, 4(r31)
/* 801ECC28 001E9B68  38 C0 00 00 */	li r6, 0
/* 801ECC2C 001E9B6C  81 83 00 00 */	lwz r12, 0(r3)
/* 801ECC30 001E9B70  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801ECC34 001E9B74  7D 89 03 A6 */	mtctr r12
/* 801ECC38 001E9B78  4E 80 04 21 */	bctrl 
/* 801ECC3C 001E9B7C  48 00 00 70 */	b .L_801ECCAC
.L_801ECC40:
/* 801ECC40 001E9B80  C0 3E 02 00 */	lfs f1, 0x200(r30)
/* 801ECC44 001E9B84  C0 02 B7 3C */	lfs f0, lbl_80519A9C@sda21(r2)
/* 801ECC48 001E9B88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801ECC4C 001E9B8C  40 81 00 40 */	ble .L_801ECC8C
/* 801ECC50 001E9B90  80 7E 01 D8 */	lwz r3, 0x1d8(r30)
/* 801ECC54 001E9B94  7F C4 F3 78 */	mr r4, r30
/* 801ECC58 001E9B98  38 A0 00 00 */	li r5, 0
/* 801ECC5C 001E9B9C  38 C0 00 00 */	li r6, 0
/* 801ECC60 001E9BA0  81 83 00 00 */	lwz r12, 0(r3)
/* 801ECC64 001E9BA4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801ECC68 001E9BA8  7D 89 03 A6 */	mtctr r12
/* 801ECC6C 001E9BAC  4E 80 04 21 */	bctrl 
/* 801ECC70 001E9BB0  7F C3 F3 78 */	mr r3, r30
/* 801ECC74 001E9BB4  38 80 00 01 */	li r4, 1
/* 801ECC78 001E9BB8  81 9E 00 00 */	lwz r12, 0(r30)
/* 801ECC7C 001E9BBC  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 801ECC80 001E9BC0  7D 89 03 A6 */	mtctr r12
/* 801ECC84 001E9BC4  4E 80 04 21 */	bctrl 
/* 801ECC88 001E9BC8  48 00 00 24 */	b .L_801ECCAC
.L_801ECC8C:
/* 801ECC8C 001E9BCC  80 7E 01 D8 */	lwz r3, 0x1d8(r30)
/* 801ECC90 001E9BD0  7F C4 F3 78 */	mr r4, r30
/* 801ECC94 001E9BD4  38 A0 00 01 */	li r5, 1
/* 801ECC98 001E9BD8  38 C0 00 00 */	li r6, 0
/* 801ECC9C 001E9BDC  81 83 00 00 */	lwz r12, 0(r3)
/* 801ECCA0 001E9BE0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801ECCA4 001E9BE4  7D 89 03 A6 */	mtctr r12
/* 801ECCA8 001E9BE8  4E 80 04 21 */	bctrl 
.L_801ECCAC:
/* 801ECCAC 001E9BEC  80 7E 01 74 */	lwz r3, 0x174(r30)
/* 801ECCB0 001E9BF0  C0 22 B7 40 */	lfs f1, lbl_80519AA0@sda21(r2)
/* 801ECCB4 001E9BF4  80 63 00 08 */	lwz r3, 8(r3)
/* 801ECCB8 001E9BF8  C0 02 B7 3C */	lfs f0, lbl_80519A9C@sda21(r2)
/* 801ECCBC 001E9BFC  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 801ECCC0 001E9C00  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 801ECCC4 001E9C04  D0 23 00 20 */	stfs f1, 0x20(r3)
/* 801ECCC8 001E9C08  D0 1E 01 18 */	stfs f0, 0x118(r30)
/* 801ECCCC 001E9C0C  D0 21 00 08 */	stfs f1, 8(r1)
/* 801ECCD0 001E9C10  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 801ECCD4 001E9C14  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 801ECCD8 001E9C18  D0 1E 01 EC */	stfs f0, 0x1ec(r30)
/* 801ECCDC 001E9C1C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801ECCE0 001E9C20  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801ECCE4 001E9C24  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 801ECCE8 001E9C28  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801ECCEC 001E9C2C  7C 08 03 A6 */	mtlr r0
/* 801ECCF0 001E9C30  38 21 00 30 */	addi r1, r1, 0x30
/* 801ECCF4 001E9C34  4E 80 00 20 */	blr 
.endfn onInit__Q34Game15ItemBigFountain4ItemFPQ24Game15CreatureInitArg

.fn "start__Q24Game43StateMachine<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemiPQ24Game8StateArg", weak
/* 801ECCF8 001E9C38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801ECCFC 001E9C3C  7C 08 02 A6 */	mflr r0
/* 801ECD00 001E9C40  90 01 00 14 */	stw r0, 0x14(r1)
/* 801ECD04 001E9C44  38 00 00 00 */	li r0, 0
/* 801ECD08 001E9C48  90 04 01 DC */	stw r0, 0x1dc(r4)
/* 801ECD0C 001E9C4C  81 83 00 00 */	lwz r12, 0(r3)
/* 801ECD10 001E9C50  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801ECD14 001E9C54  7D 89 03 A6 */	mtctr r12
/* 801ECD18 001E9C58  4E 80 04 21 */	bctrl 
/* 801ECD1C 001E9C5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801ECD20 001E9C60  7C 08 03 A6 */	mtlr r0
/* 801ECD24 001E9C64  38 21 00 10 */	addi r1, r1, 0x10
/* 801ECD28 001E9C68  4E 80 00 20 */	blr 
.endfn "start__Q24Game43StateMachine<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemiPQ24Game8StateArg"

.fn initDependency__Q34Game15ItemBigFountain4ItemFv, global
/* 801ECD2C 001E9C6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801ECD30 001E9C70  7C 08 02 A6 */	mflr r0
/* 801ECD34 001E9C74  90 01 00 14 */	stw r0, 0x14(r1)
/* 801ECD38 001E9C78  80 8D 93 E8 */	lwz r4, gameSystem__4Game@sda21(r13)
/* 801ECD3C 001E9C7C  80 04 00 44 */	lwz r0, 0x44(r4)
/* 801ECD40 001E9C80  2C 00 00 00 */	cmpwi r0, 0
/* 801ECD44 001E9C84  40 82 00 2C */	bne .L_801ECD70
/* 801ECD48 001E9C88  C0 02 B7 3C */	lfs f0, lbl_80519A9C@sda21(r2)
/* 801ECD4C 001E9C8C  7C 64 1B 78 */	mr r4, r3
/* 801ECD50 001E9C90  38 A0 00 01 */	li r5, 1
/* 801ECD54 001E9C94  38 C0 00 00 */	li r6, 0
/* 801ECD58 001E9C98  D0 03 02 00 */	stfs f0, 0x200(r3)
/* 801ECD5C 001E9C9C  80 63 01 D8 */	lwz r3, 0x1d8(r3)
/* 801ECD60 001E9CA0  81 83 00 00 */	lwz r12, 0(r3)
/* 801ECD64 001E9CA4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801ECD68 001E9CA8  7D 89 03 A6 */	mtctr r12
/* 801ECD6C 001E9CAC  4E 80 04 21 */	bctrl 
.L_801ECD70:
/* 801ECD70 001E9CB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801ECD74 001E9CB4  7C 08 03 A6 */	mtlr r0
/* 801ECD78 001E9CB8  38 21 00 10 */	addi r1, r1, 0x10
/* 801ECD7C 001E9CBC  4E 80 00 20 */	blr 
.endfn initDependency__Q34Game15ItemBigFountain4ItemFv

.fn update__Q34Game15ItemBigFountain4ItemFv, global
/* 801ECD80 001E9CC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801ECD84 001E9CC4  7C 08 02 A6 */	mflr r0
/* 801ECD88 001E9CC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801ECD8C 001E9CCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801ECD90 001E9CD0  7C 7F 1B 78 */	mr r31, r3
/* 801ECD94 001E9CD4  81 83 00 00 */	lwz r12, 0(r3)
/* 801ECD98 001E9CD8  81 8C 01 C8 */	lwz r12, 0x1c8(r12)
/* 801ECD9C 001E9CDC  7D 89 03 A6 */	mtctr r12
/* 801ECDA0 001E9CE0  4E 80 04 21 */	bctrl 
/* 801ECDA4 001E9CE4  7F E3 FB 78 */	mr r3, r31
/* 801ECDA8 001E9CE8  81 9F 00 00 */	lwz r12, 0(r31)
/* 801ECDAC 001E9CEC  81 8C 02 10 */	lwz r12, 0x210(r12)
/* 801ECDB0 001E9CF0  7D 89 03 A6 */	mtctr r12
/* 801ECDB4 001E9CF4  4E 80 04 21 */	bctrl 
/* 801ECDB8 001E9CF8  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 801ECDBC 001E9CFC  81 83 00 28 */	lwz r12, 0x28(r3)
/* 801ECDC0 001E9D00  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801ECDC4 001E9D04  7D 89 03 A6 */	mtctr r12
/* 801ECDC8 001E9D08  4E 80 04 21 */	bctrl 
/* 801ECDCC 001E9D0C  7F E3 FB 78 */	mr r3, r31
/* 801ECDD0 001E9D10  4B F4 EF 99 */	bl updateCell__Q24Game8CreatureFv
/* 801ECDD4 001E9D14  80 1F 00 DC */	lwz r0, 0xdc(r31)
/* 801ECDD8 001E9D18  2C 00 00 00 */	cmpwi r0, 0
/* 801ECDDC 001E9D1C  41 80 00 0C */	blt .L_801ECDE8
/* 801ECDE0 001E9D20  2C 00 00 0A */	cmpwi r0, 0xa
/* 801ECDE4 001E9D24  40 81 00 34 */	ble .L_801ECE18
.L_801ECDE8:
/* 801ECDE8 001E9D28  7F E3 FB 78 */	mr r3, r31
/* 801ECDEC 001E9D2C  81 9F 00 00 */	lwz r12, 0(r31)
/* 801ECDF0 001E9D30  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801ECDF4 001E9D34  7D 89 03 A6 */	mtctr r12
/* 801ECDF8 001E9D38  4E 80 04 21 */	bctrl 
/* 801ECDFC 001E9D3C  3C 60 80 48 */	lis r3, lbl_804810BC@ha
/* 801ECE00 001E9D40  3C A0 80 48 */	lis r5, lbl_80481110@ha
/* 801ECE04 001E9D44  38 63 10 BC */	addi r3, r3, lbl_804810BC@l
/* 801ECE08 001E9D48  38 80 01 A8 */	li r4, 0x1a8
/* 801ECE0C 001E9D4C  38 A5 11 10 */	addi r5, r5, lbl_80481110@l
/* 801ECE10 001E9D50  4C C6 31 82 */	crclr 6
/* 801ECE14 001E9D54  4B E3 D8 2D */	bl panic_f__12JUTExceptionFPCciPCce
.L_801ECE18:
/* 801ECE18 001E9D58  7F E3 FB 78 */	mr r3, r31
/* 801ECE1C 001E9D5C  81 9F 00 00 */	lwz r12, 0(r31)
/* 801ECE20 001E9D60  81 8C 01 D4 */	lwz r12, 0x1d4(r12)
/* 801ECE24 001E9D64  7D 89 03 A6 */	mtctr r12
/* 801ECE28 001E9D68  4E 80 04 21 */	bctrl 
/* 801ECE2C 001E9D6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801ECE30 001E9D70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801ECE34 001E9D74  7C 08 03 A6 */	mtlr r0
/* 801ECE38 001E9D78  38 21 00 10 */	addi r1, r1, 0x10
/* 801ECE3C 001E9D7C  4E 80 00 20 */	blr 
.endfn update__Q34Game15ItemBigFountain4ItemFv

.fn killAllEffect__Q34Game15ItemBigFountain4ItemFv, global
/* 801ECE40 001E9D80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801ECE44 001E9D84  7C 08 02 A6 */	mflr r0
/* 801ECE48 001E9D88  90 01 00 14 */	stw r0, 0x14(r1)
/* 801ECE4C 001E9D8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801ECE50 001E9D90  7C 7F 1B 78 */	mr r31, r3
/* 801ECE54 001E9D94  80 63 01 F8 */	lwz r3, 0x1f8(r3)
/* 801ECE58 001E9D98  28 03 00 00 */	cmplwi r3, 0
/* 801ECE5C 001E9D9C  41 82 00 14 */	beq .L_801ECE70
/* 801ECE60 001E9DA0  81 83 00 00 */	lwz r12, 0(r3)
/* 801ECE64 001E9DA4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801ECE68 001E9DA8  7D 89 03 A6 */	mtctr r12
/* 801ECE6C 001E9DAC  4E 80 04 21 */	bctrl 
.L_801ECE70:
/* 801ECE70 001E9DB0  80 7F 01 F4 */	lwz r3, 0x1f4(r31)
/* 801ECE74 001E9DB4  28 03 00 00 */	cmplwi r3, 0
/* 801ECE78 001E9DB8  41 82 00 14 */	beq .L_801ECE8C
/* 801ECE7C 001E9DBC  81 83 00 00 */	lwz r12, 0(r3)
/* 801ECE80 001E9DC0  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801ECE84 001E9DC4  7D 89 03 A6 */	mtctr r12
/* 801ECE88 001E9DC8  4E 80 04 21 */	bctrl 
.L_801ECE8C:
/* 801ECE8C 001E9DCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801ECE90 001E9DD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801ECE94 001E9DD4  7C 08 03 A6 */	mtlr r0
/* 801ECE98 001E9DD8  38 21 00 10 */	addi r1, r1, 0x10
/* 801ECE9C 001E9DDC  4E 80 00 20 */	blr 
.endfn killAllEffect__Q34Game15ItemBigFountain4ItemFv

.fn makeTrMatrix__Q34Game15ItemBigFountain4ItemFv, global
/* 801ECEA0 001E9DE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801ECEA4 001E9DE4  7C 08 02 A6 */	mflr r0
/* 801ECEA8 001E9DE8  C0 02 B7 3C */	lfs f0, lbl_80519A9C@sda21(r2)
/* 801ECEAC 001E9DEC  7C 66 1B 78 */	mr r6, r3
/* 801ECEB0 001E9DF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801ECEB4 001E9DF4  38 81 00 08 */	addi r4, r1, 8
/* 801ECEB8 001E9DF8  38 A1 00 14 */	addi r5, r1, 0x14
/* 801ECEBC 001E9DFC  C0 23 01 EC */	lfs f1, 0x1ec(r3)
/* 801ECEC0 001E9E00  38 66 01 38 */	addi r3, r6, 0x138
/* 801ECEC4 001E9E04  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 801ECEC8 001E9E08  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 801ECECC 001E9E0C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801ECED0 001E9E10  C0 06 01 9C */	lfs f0, 0x19c(r6)
/* 801ECED4 001E9E14  D0 01 00 08 */	stfs f0, 8(r1)
/* 801ECED8 001E9E18  C0 26 01 A0 */	lfs f1, 0x1a0(r6)
/* 801ECEDC 001E9E1C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 801ECEE0 001E9E20  C0 06 01 A4 */	lfs f0, 0x1a4(r6)
/* 801ECEE4 001E9E24  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801ECEE8 001E9E28  C0 06 01 F0 */	lfs f0, 0x1f0(r6)
/* 801ECEEC 001E9E2C  EC 01 00 28 */	fsubs f0, f1, f0
/* 801ECEF0 001E9E30  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 801ECEF4 001E9E34  48 23 B9 95 */	bl "makeTR__7MatrixfFR10Vector3<f>R10Vector3<f>"
/* 801ECEF8 001E9E38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801ECEFC 001E9E3C  7C 08 03 A6 */	mtlr r0
/* 801ECF00 001E9E40  38 21 00 20 */	addi r1, r1, 0x20
/* 801ECF04 001E9E44  4E 80 00 20 */	blr 
.endfn makeTrMatrix__Q34Game15ItemBigFountain4ItemFv

.fn onSetPosition__Q34Game15ItemBigFountain4ItemFv, global
/* 801ECF08 001E9E48  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801ECF0C 001E9E4C  7C 08 02 A6 */	mflr r0
/* 801ECF10 001E9E50  90 01 00 44 */	stw r0, 0x44(r1)
/* 801ECF14 001E9E54  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 801ECF18 001E9E58  93 C1 00 38 */	stw r30, 0x38(r1)
/* 801ECF1C 001E9E5C  7C 7E 1B 78 */	mr r30, r3
/* 801ECF20 001E9E60  80 0D 93 08 */	lwz r0, mapMgr__4Game@sda21(r13)
/* 801ECF24 001E9E64  28 00 00 00 */	cmplwi r0, 0
/* 801ECF28 001E9E68  41 82 00 20 */	beq .L_801ECF48
/* 801ECF2C 001E9E6C  7C 03 03 78 */	mr r3, r0
/* 801ECF30 001E9E70  38 9E 01 9C */	addi r4, r30, 0x19c
/* 801ECF34 001E9E74  81 83 00 04 */	lwz r12, 4(r3)
/* 801ECF38 001E9E78  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 801ECF3C 001E9E7C  7D 89 03 A6 */	mtctr r12
/* 801ECF40 001E9E80  4E 80 04 21 */	bctrl 
/* 801ECF44 001E9E84  D0 3E 01 A0 */	stfs f1, 0x1a0(r30)
.L_801ECF48:
/* 801ECF48 001E9E88  7F C3 F3 78 */	mr r3, r30
/* 801ECF4C 001E9E8C  38 80 00 0A */	li r4, 0xa
/* 801ECF50 001E9E90  38 A0 00 00 */	li r5, 0
/* 801ECF54 001E9E94  48 03 16 31 */	bl entry__Q25Radar3MgrFPQ24Game15TPositionObjectQ25Radar10cRadarTypeUl
/* 801ECF58 001E9E98  7F C3 F3 78 */	mr r3, r30
/* 801ECF5C 001E9E9C  81 9E 00 00 */	lwz r12, 0(r30)
/* 801ECF60 001E9EA0  81 8C 01 C4 */	lwz r12, 0x1c4(r12)
/* 801ECF64 001E9EA4  7D 89 03 A6 */	mtctr r12
/* 801ECF68 001E9EA8  4E 80 04 21 */	bctrl 
/* 801ECF6C 001E9EAC  80 9E 01 74 */	lwz r4, 0x174(r30)
/* 801ECF70 001E9EB0  38 7E 01 38 */	addi r3, r30, 0x138
/* 801ECF74 001E9EB4  80 84 00 08 */	lwz r4, 8(r4)
/* 801ECF78 001E9EB8  38 84 00 24 */	addi r4, r4, 0x24
/* 801ECF7C 001E9EBC  4B EF D3 51 */	bl PSMTXCopy
/* 801ECF80 001E9EC0  80 7E 01 74 */	lwz r3, 0x174(r30)
/* 801ECF84 001E9EC4  80 63 00 08 */	lwz r3, 8(r3)
/* 801ECF88 001E9EC8  81 83 00 00 */	lwz r12, 0(r3)
/* 801ECF8C 001E9ECC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801ECF90 001E9ED0  7D 89 03 A6 */	mtctr r12
/* 801ECF94 001E9ED4  4E 80 04 21 */	bctrl 
/* 801ECF98 001E9ED8  80 7E 01 74 */	lwz r3, 0x174(r30)
/* 801ECF9C 001E9EDC  80 63 00 10 */	lwz r3, 0x10(r3)
/* 801ECFA0 001E9EE0  48 23 C9 01 */	bl getWorldMatrix__Q28SysShape5JointFv
/* 801ECFA4 001E9EE4  3C 80 66 6F */	lis r4, 0x666F756E@ha
/* 801ECFA8 001E9EE8  7C 7F 1B 78 */	mr r31, r3
/* 801ECFAC 001E9EEC  38 61 00 08 */	addi r3, r1, 8
/* 801ECFB0 001E9EF0  38 84 75 6E */	addi r4, r4, 0x666F756E@l
/* 801ECFB4 001E9EF4  48 22 62 F5 */	bl __ct__4ID32FUl
/* 801ECFB8 001E9EF8  38 61 00 14 */	addi r3, r1, 0x14
/* 801ECFBC 001E9EFC  4B FD 89 05 */	bl __ct__Q24Game18PlatAddInstanceArgFv
/* 801ECFC0 001E9F00  93 C1 00 14 */	stw r30, 0x14(r1)
/* 801ECFC4 001E9F04  38 61 00 18 */	addi r3, r1, 0x18
/* 801ECFC8 001E9F08  38 81 00 08 */	addi r4, r1, 8
/* 801ECFCC 001E9F0C  38 A0 00 05 */	li r5, 5
/* 801ECFD0 001E9F10  4B ED 47 49 */	bl __copy
/* 801ECFD4 001E9F14  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801ECFD8 001E9F18  38 81 00 14 */	addi r4, r1, 0x14
/* 801ECFDC 001E9F1C  80 AD 94 B0 */	lwz r5, mgr__Q24Game15ItemBigFountain@sda21(r13)
/* 801ECFE0 001E9F20  90 01 00 20 */	stw r0, 0x20(r1)
/* 801ECFE4 001E9F24  80 6D 94 20 */	lwz r3, platMgr__4Game@sda21(r13)
/* 801ECFE8 001E9F28  80 05 00 88 */	lwz r0, 0x88(r5)
/* 801ECFEC 001E9F2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801ECFF0 001E9F30  93 E1 00 28 */	stw r31, 0x28(r1)
/* 801ECFF4 001E9F34  4B FD 89 31 */	bl addInstance__Q24Game7PlatMgrFRQ24Game18PlatAddInstanceArg
/* 801ECFF8 001E9F38  90 7E 01 FC */	stw r3, 0x1fc(r30)
/* 801ECFFC 001E9F3C  38 80 00 01 */	li r4, 1
/* 801ED000 001E9F40  80 7E 01 FC */	lwz r3, 0x1fc(r30)
/* 801ED004 001E9F44  4B FD 7B D1 */	bl setCollision__Q24Game12PlatInstanceFb
/* 801ED008 001E9F48  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801ED00C 001E9F4C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 801ED010 001E9F50  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 801ED014 001E9F54  7C 08 03 A6 */	mtlr r0
/* 801ED018 001E9F58  38 21 00 40 */	addi r1, r1, 0x40
/* 801ED01C 001E9F5C  4E 80 00 20 */	blr 
.endfn onSetPosition__Q34Game15ItemBigFountain4ItemFv

.fn doAI__Q34Game15ItemBigFountain4ItemFv, global
/* 801ED020 001E9F60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801ED024 001E9F64  7C 08 02 A6 */	mflr r0
/* 801ED028 001E9F68  90 01 00 14 */	stw r0, 0x14(r1)
/* 801ED02C 001E9F6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801ED030 001E9F70  7C 7F 1B 78 */	mr r31, r3
/* 801ED034 001E9F74  7F E4 FB 78 */	mr r4, r31
/* 801ED038 001E9F78  80 63 01 D8 */	lwz r3, 0x1d8(r3)
/* 801ED03C 001E9F7C  81 83 00 00 */	lwz r12, 0(r3)
/* 801ED040 001E9F80  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801ED044 001E9F84  7D 89 03 A6 */	mtctr r12
/* 801ED048 001E9F88  4E 80 04 21 */	bctrl 
/* 801ED04C 001E9F8C  38 7F 01 E0 */	addi r3, r31, 0x1e0
/* 801ED050 001E9F90  48 04 1B F1 */	bl update__Q24Game11TSoundEventFv
/* 801ED054 001E9F94  2C 03 00 02 */	cmpwi r3, 2
/* 801ED058 001E9F98  41 82 00 08 */	beq .L_801ED060
/* 801ED05C 001E9F9C  48 00 00 50 */	b .L_801ED0AC
.L_801ED060:
/* 801ED060 001E9FA0  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 801ED064 001E9FA4  81 83 00 28 */	lwz r12, 0x28(r3)
/* 801ED068 001E9FA8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801ED06C 001E9FAC  7D 89 03 A6 */	mtctr r12
/* 801ED070 001E9FB0  4E 80 04 21 */	bctrl 
/* 801ED074 001E9FB4  2C 03 00 0A */	cmpwi r3, 0xa
/* 801ED078 001E9FB8  41 82 00 20 */	beq .L_801ED098
/* 801ED07C 001E9FBC  3C 60 80 48 */	lis r3, lbl_804810BC@ha
/* 801ED080 001E9FC0  3C A0 80 48 */	lis r5, lbl_804810D0@ha
/* 801ED084 001E9FC4  38 63 10 BC */	addi r3, r3, lbl_804810BC@l
/* 801ED088 001E9FC8  38 80 01 EC */	li r4, 0x1ec
/* 801ED08C 001E9FCC  38 A5 10 D0 */	addi r5, r5, lbl_804810D0@l
/* 801ED090 001E9FD0  4C C6 31 82 */	crclr 6
/* 801ED094 001E9FD4  4B E3 D5 AD */	bl panic_f__12JUTExceptionFPCciPCce
.L_801ED098:
/* 801ED098 001E9FD8  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 801ED09C 001E9FDC  81 83 00 28 */	lwz r12, 0x28(r3)
/* 801ED0A0 001E9FE0  81 8C 00 90 */	lwz r12, 0x90(r12)
/* 801ED0A4 001E9FE4  7D 89 03 A6 */	mtctr r12
/* 801ED0A8 001E9FE8  4E 80 04 21 */	bctrl 
.L_801ED0AC:
/* 801ED0AC 001E9FEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801ED0B0 001E9FF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801ED0B4 001E9FF4  7C 08 03 A6 */	mtlr r0
/* 801ED0B8 001E9FF8  38 21 00 10 */	addi r1, r1, 0x10
/* 801ED0BC 001E9FFC  4E 80 00 20 */	blr 
.endfn doAI__Q34Game15ItemBigFountain4ItemFv

.fn doDirectDraw__Q34Game15ItemBigFountain4ItemFR8Graphics, global
/* 801ED0C0 001EA000  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801ED0C4 001EA004  7C 08 02 A6 */	mflr r0
/* 801ED0C8 001EA008  90 01 00 44 */	stw r0, 0x44(r1)
/* 801ED0CC 001EA00C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 801ED0D0 001EA010  7C 9F 23 78 */	mr r31, r4
/* 801ED0D4 001EA014  38 80 00 00 */	li r4, 0
/* 801ED0D8 001EA018  93 C1 00 38 */	stw r30, 0x38(r1)
/* 801ED0DC 001EA01C  7C 7E 1B 78 */	mr r30, r3
/* 801ED0E0 001EA020  7F E3 FB 78 */	mr r3, r31
/* 801ED0E4 001EA024  48 23 87 39 */	bl initPrimDraw__8GraphicsFP7Matrixf
/* 801ED0E8 001EA028  38 C0 00 C8 */	li r6, 0xc8
/* 801ED0EC 001EA02C  38 A0 00 FA */	li r5, 0xfa
/* 801ED0F0 001EA030  98 DF 00 84 */	stb r6, 0x84(r31)
/* 801ED0F4 001EA034  38 00 00 FF */	li r0, 0xff
/* 801ED0F8 001EA038  7F E3 FB 78 */	mr r3, r31
/* 801ED0FC 001EA03C  38 9E 01 C4 */	addi r4, r30, 0x1c4
/* 801ED100 001EA040  98 BF 00 85 */	stb r5, 0x85(r31)
/* 801ED104 001EA044  98 DF 00 86 */	stb r6, 0x86(r31)
/* 801ED108 001EA048  98 1F 00 87 */	stb r0, 0x87(r31)
/* 801ED10C 001EA04C  C0 3E 01 D0 */	lfs f1, 0x1d0(r30)
/* 801ED110 001EA050  48 23 89 9D */	bl "drawSphere__8GraphicsFR10Vector3<f>f"
/* 801ED114 001EA054  80 6D 89 D8 */	lwz r3, systemFont__9JFWSystem@sda21(r13)
/* 801ED118 001EA058  38 C0 00 00 */	li r6, 0
/* 801ED11C 001EA05C  38 00 00 FF */	li r0, 0xff
/* 801ED120 001EA060  38 A0 00 66 */	li r5, 0x66
/* 801ED124 001EA064  C0 02 B7 40 */	lfs f0, lbl_80519AA0@sda21(r2)
/* 801ED128 001EA068  38 80 00 99 */	li r4, 0x99
/* 801ED12C 001EA06C  90 61 00 14 */	stw r3, 0x14(r1)
/* 801ED130 001EA070  7F E3 FB 78 */	mr r3, r31
/* 801ED134 001EA074  90 C1 00 18 */	stw r6, 0x18(r1)
/* 801ED138 001EA078  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 801ED13C 001EA07C  90 C1 00 20 */	stw r6, 0x20(r1)
/* 801ED140 001EA080  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 801ED144 001EA084  98 A1 00 28 */	stb r5, 0x28(r1)
/* 801ED148 001EA088  98 81 00 29 */	stb r4, 0x29(r1)
/* 801ED14C 001EA08C  98 01 00 2A */	stb r0, 0x2a(r1)
/* 801ED150 001EA090  98 01 00 2B */	stb r0, 0x2b(r1)
/* 801ED154 001EA094  98 C1 00 2C */	stb r6, 0x2c(r1)
/* 801ED158 001EA098  98 A1 00 2D */	stb r5, 0x2d(r1)
/* 801ED15C 001EA09C  98 01 00 2E */	stb r0, 0x2e(r1)
/* 801ED160 001EA0A0  98 01 00 2F */	stb r0, 0x2f(r1)
/* 801ED164 001EA0A4  80 9F 02 5C */	lwz r4, 0x25c(r31)
/* 801ED168 001EA0A8  48 23 A7 41 */	bl initPerspPrintf__8GraphicsFP8Viewport
/* 801ED16C 001EA0AC  C0 22 B7 58 */	lfs f1, lbl_80519AB8@sda21(r2)
/* 801ED170 001EA0B0  38 A0 00 C8 */	li r5, 0xc8
/* 801ED174 001EA0B4  38 80 00 00 */	li r4, 0
/* 801ED178 001EA0B8  38 00 00 FF */	li r0, 0xff
/* 801ED17C 001EA0BC  98 A1 00 28 */	stb r5, 0x28(r1)
/* 801ED180 001EA0C0  7F C3 F3 78 */	mr r3, r30
/* 801ED184 001EA0C4  C0 02 B7 50 */	lfs f0, lbl_80519AB0@sda21(r2)
/* 801ED188 001EA0C8  98 81 00 29 */	stb r4, 0x29(r1)
/* 801ED18C 001EA0CC  98 81 00 2A */	stb r4, 0x2a(r1)
/* 801ED190 001EA0D0  98 01 00 2B */	stb r0, 0x2b(r1)
/* 801ED194 001EA0D4  98 A1 00 2C */	stb r5, 0x2c(r1)
/* 801ED198 001EA0D8  98 A1 00 2D */	stb r5, 0x2d(r1)
/* 801ED19C 001EA0DC  98 A1 00 2E */	stb r5, 0x2e(r1)
/* 801ED1A0 001EA0E0  98 01 00 2F */	stb r0, 0x2f(r1)
/* 801ED1A4 001EA0E4  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 801ED1A8 001EA0E8  C0 3E 01 9C */	lfs f1, 0x19c(r30)
/* 801ED1AC 001EA0EC  D0 21 00 08 */	stfs f1, 8(r1)
/* 801ED1B0 001EA0F0  C0 3E 01 A0 */	lfs f1, 0x1a0(r30)
/* 801ED1B4 001EA0F4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 801ED1B8 001EA0F8  EC 01 00 2A */	fadds f0, f1, f0
/* 801ED1BC 001EA0FC  C0 3E 01 A4 */	lfs f1, 0x1a4(r30)
/* 801ED1C0 001EA100  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 801ED1C4 001EA104  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 801ED1C8 001EA108  81 9E 00 00 */	lwz r12, 0(r30)
/* 801ED1CC 001EA10C  81 8C 00 A8 */	lwz r12, 0xa8(r12)
/* 801ED1D0 001EA110  7D 89 03 A6 */	mtctr r12
/* 801ED1D4 001EA114  4E 80 04 21 */	bctrl 
/* 801ED1D8 001EA118  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801ED1DC 001EA11C  39 02 B7 60 */	addi r8, r2, lbl_80519AC0@sda21
/* 801ED1E0 001EA120  41 82 00 08 */	beq .L_801ED1E8
/* 801ED1E4 001EA124  39 02 B7 5C */	addi r8, r2, lbl_80519ABC@sda21
.L_801ED1E8:
/* 801ED1E8 001EA128  88 1E 00 D8 */	lbz r0, 0xd8(r30)
/* 801ED1EC 001EA12C  7F E3 FB 78 */	mr r3, r31
/* 801ED1F0 001EA130  38 81 00 14 */	addi r4, r1, 0x14
/* 801ED1F4 001EA134  38 A1 00 08 */	addi r5, r1, 8
/* 801ED1F8 001EA138  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 801ED1FC 001EA13C  38 C2 B7 64 */	addi r6, r2, lbl_80519AC4@sda21
/* 801ED200 001EA140  38 E2 B7 70 */	addi r7, r2, lbl_80519AD0@sda21
/* 801ED204 001EA144  41 82 00 08 */	beq .L_801ED20C
/* 801ED208 001EA148  38 E2 B7 6C */	addi r7, r2, lbl_80519ACC@sda21
.L_801ED20C:
/* 801ED20C 001EA14C  4C C6 31 82 */	crclr 6
/* 801ED210 001EA150  48 23 A8 CD */	bl "perspPrintf__8GraphicsFR15PerspPrintfInfoR10Vector3<f>Pce"
/* 801ED214 001EA154  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801ED218 001EA158  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 801ED21C 001EA15C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 801ED220 001EA160  7C 08 03 A6 */	mtlr r0
/* 801ED224 001EA164  38 21 00 40 */	addi r1, r1, 0x40
/* 801ED228 001EA168  4E 80 00 20 */	blr 
.endfn doDirectDraw__Q34Game15ItemBigFountain4ItemFR8Graphics

.fn updateBoundSphere__Q34Game15ItemBigFountain4ItemFv, global
/* 801ED22C 001EA16C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801ED230 001EA170  7C 08 02 A6 */	mflr r0
/* 801ED234 001EA174  90 01 00 14 */	stw r0, 0x14(r1)
/* 801ED238 001EA178  C0 03 01 9C */	lfs f0, 0x19c(r3)
/* 801ED23C 001EA17C  D0 03 01 C4 */	stfs f0, 0x1c4(r3)
/* 801ED240 001EA180  C0 03 01 A0 */	lfs f0, 0x1a0(r3)
/* 801ED244 001EA184  D0 03 01 C8 */	stfs f0, 0x1c8(r3)
/* 801ED248 001EA188  C0 03 01 A4 */	lfs f0, 0x1a4(r3)
/* 801ED24C 001EA18C  D0 03 01 CC */	stfs f0, 0x1cc(r3)
/* 801ED250 001EA190  4B FD F3 BD */	bl updateCollTree__Q24Game8BaseItemFv
/* 801ED254 001EA194  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801ED258 001EA198  7C 08 03 A6 */	mtlr r0
/* 801ED25C 001EA19C  38 21 00 10 */	addi r1, r1, 0x10
/* 801ED260 001EA1A0  4E 80 00 20 */	blr 
.endfn updateBoundSphere__Q34Game15ItemBigFountain4ItemFv

.fn doSimulation__Q34Game15ItemBigFountain4ItemFf, global
/* 801ED264 001EA1A4  4E 80 00 20 */	blr 
.endfn doSimulation__Q34Game15ItemBigFountain4ItemFf

.fn canRide__Q34Game15ItemBigFountain4ItemFv, global
/* 801ED268 001EA1A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801ED26C 001EA1AC  7C 08 02 A6 */	mflr r0
/* 801ED270 001EA1B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801ED274 001EA1B4  80 63 01 DC */	lwz r3, 0x1dc(r3)
/* 801ED278 001EA1B8  81 83 00 00 */	lwz r12, 0(r3)
/* 801ED27C 001EA1BC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801ED280 001EA1C0  7D 89 03 A6 */	mtctr r12
/* 801ED284 001EA1C4  4E 80 04 21 */	bctrl 
/* 801ED288 001EA1C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801ED28C 001EA1CC  7C 08 03 A6 */	mtlr r0
/* 801ED290 001EA1D0  38 21 00 10 */	addi r1, r1, 0x10
/* 801ED294 001EA1D4  4E 80 00 20 */	blr 
.endfn canRide__Q34Game15ItemBigFountain4ItemFv

.fn canRide__Q34Game15ItemBigFountain5StateFv, weak
/* 801ED298 001EA1D8  38 60 00 00 */	li r3, 0
/* 801ED29C 001EA1DC  4E 80 00 20 */	blr 
.endfn canRide__Q34Game15ItemBigFountain5StateFv

.fn interactAttack__Q34Game15ItemBigFountain4ItemFRQ24Game14InteractAttack, global
/* 801ED2A0 001EA1E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801ED2A4 001EA1E4  7C 08 02 A6 */	mflr r0
/* 801ED2A8 001EA1E8  7C 85 23 78 */	mr r5, r4
/* 801ED2AC 001EA1EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801ED2B0 001EA1F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801ED2B4 001EA1F4  7C 7F 1B 78 */	mr r31, r3
/* 801ED2B8 001EA1F8  80 63 01 DC */	lwz r3, 0x1dc(r3)
/* 801ED2BC 001EA1FC  28 03 00 00 */	cmplwi r3, 0
/* 801ED2C0 001EA200  41 82 00 E4 */	beq .L_801ED3A4
/* 801ED2C4 001EA204  81 83 00 00 */	lwz r12, 0(r3)
/* 801ED2C8 001EA208  7F E4 FB 78 */	mr r4, r31
/* 801ED2CC 001EA20C  C0 25 00 08 */	lfs f1, 8(r5)
/* 801ED2D0 001EA210  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801ED2D4 001EA214  7D 89 03 A6 */	mtctr r12
/* 801ED2D8 001EA218  4E 80 04 21 */	bctrl 
/* 801ED2DC 001EA21C  38 7F 01 E0 */	addi r3, r31, 0x1e0
/* 801ED2E0 001EA220  48 04 19 09 */	bl event__Q24Game11TSoundEventFv
/* 801ED2E4 001EA224  2C 03 00 02 */	cmpwi r3, 2
/* 801ED2E8 001EA228  41 82 00 BC */	beq .L_801ED3A4
/* 801ED2EC 001EA22C  40 80 00 10 */	bge .L_801ED2FC
/* 801ED2F0 001EA230  2C 03 00 01 */	cmpwi r3, 1
/* 801ED2F4 001EA234  40 80 00 14 */	bge .L_801ED308
/* 801ED2F8 001EA238  48 00 00 AC */	b .L_801ED3A4
.L_801ED2FC:
/* 801ED2FC 001EA23C  2C 03 00 04 */	cmpwi r3, 4
/* 801ED300 001EA240  40 80 00 A4 */	bge .L_801ED3A4
/* 801ED304 001EA244  48 00 00 54 */	b .L_801ED358
.L_801ED308:
/* 801ED308 001EA248  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 801ED30C 001EA24C  81 83 00 28 */	lwz r12, 0x28(r3)
/* 801ED310 001EA250  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801ED314 001EA254  7D 89 03 A6 */	mtctr r12
/* 801ED318 001EA258  4E 80 04 21 */	bctrl 
/* 801ED31C 001EA25C  2C 03 00 0A */	cmpwi r3, 0xa
/* 801ED320 001EA260  41 82 00 20 */	beq .L_801ED340
/* 801ED324 001EA264  3C 60 80 48 */	lis r3, lbl_804810BC@ha
/* 801ED328 001EA268  3C A0 80 48 */	lis r5, lbl_804810D0@ha
/* 801ED32C 001EA26C  38 63 10 BC */	addi r3, r3, lbl_804810BC@l
/* 801ED330 001EA270  38 80 02 2F */	li r4, 0x22f
/* 801ED334 001EA274  38 A5 10 D0 */	addi r5, r5, lbl_804810D0@l
/* 801ED338 001EA278  4C C6 31 82 */	crclr 6
/* 801ED33C 001EA27C  4B E3 D3 05 */	bl panic_f__12JUTExceptionFPCciPCce
.L_801ED340:
/* 801ED340 001EA280  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 801ED344 001EA284  81 83 00 28 */	lwz r12, 0x28(r3)
/* 801ED348 001EA288  81 8C 00 88 */	lwz r12, 0x88(r12)
/* 801ED34C 001EA28C  7D 89 03 A6 */	mtctr r12
/* 801ED350 001EA290  4E 80 04 21 */	bctrl 
/* 801ED354 001EA294  48 00 00 50 */	b .L_801ED3A4
.L_801ED358:
/* 801ED358 001EA298  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 801ED35C 001EA29C  81 83 00 28 */	lwz r12, 0x28(r3)
/* 801ED360 001EA2A0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801ED364 001EA2A4  7D 89 03 A6 */	mtctr r12
/* 801ED368 001EA2A8  4E 80 04 21 */	bctrl 
/* 801ED36C 001EA2AC  2C 03 00 0A */	cmpwi r3, 0xa
/* 801ED370 001EA2B0  41 82 00 20 */	beq .L_801ED390
/* 801ED374 001EA2B4  3C 60 80 48 */	lis r3, lbl_804810BC@ha
/* 801ED378 001EA2B8  3C A0 80 48 */	lis r5, lbl_804810D0@ha
/* 801ED37C 001EA2BC  38 63 10 BC */	addi r3, r3, lbl_804810BC@l
/* 801ED380 001EA2C0  38 80 02 36 */	li r4, 0x236
/* 801ED384 001EA2C4  38 A5 10 D0 */	addi r5, r5, lbl_804810D0@l
/* 801ED388 001EA2C8  4C C6 31 82 */	crclr 6
/* 801ED38C 001EA2CC  4B E3 D2 B5 */	bl panic_f__12JUTExceptionFPCciPCce
.L_801ED390:
/* 801ED390 001EA2D0  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 801ED394 001EA2D4  81 83 00 28 */	lwz r12, 0x28(r3)
/* 801ED398 001EA2D8  81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 801ED39C 001EA2DC  7D 89 03 A6 */	mtctr r12
/* 801ED3A0 001EA2E0  4E 80 04 21 */	bctrl 
.L_801ED3A4:
/* 801ED3A4 001EA2E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801ED3A8 001EA2E8  38 60 00 01 */	li r3, 1
/* 801ED3AC 001EA2EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801ED3B0 001EA2F0  7C 08 03 A6 */	mtlr r0
/* 801ED3B4 001EA2F4  38 21 00 10 */	addi r1, r1, 0x10
/* 801ED3B8 001EA2F8  4E 80 00 20 */	blr 
.endfn interactAttack__Q34Game15ItemBigFountain4ItemFRQ24Game14InteractAttack

.fn onDamage__Q34Game15ItemBigFountain5StateFPQ34Game15ItemBigFountain4Itemf, weak
/* 801ED3BC 001EA2FC  4E 80 00 20 */	blr 
.endfn onDamage__Q34Game15ItemBigFountain5StateFPQ34Game15ItemBigFountain4Itemf

.fn "getVectorField__Q34Game15ItemBigFountain4ItemFRQ23Sys6SphereR10Vector3<f>", global
/* 801ED3C0 001EA300  C0 23 01 A0 */	lfs f1, 0x1a0(r3)
/* 801ED3C4 001EA304  C0 04 00 04 */	lfs f0, 4(r4)
/* 801ED3C8 001EA308  C0 43 01 A4 */	lfs f2, 0x1a4(r3)
/* 801ED3CC 001EA30C  EC 61 00 28 */	fsubs f3, f1, f0
/* 801ED3D0 001EA310  C0 04 00 08 */	lfs f0, 8(r4)
/* 801ED3D4 001EA314  C0 23 01 9C */	lfs f1, 0x19c(r3)
/* 801ED3D8 001EA318  EC 82 00 28 */	fsubs f4, f2, f0
/* 801ED3DC 001EA31C  C0 04 00 00 */	lfs f0, 0(r4)
/* 801ED3E0 001EA320  EC A3 00 F2 */	fmuls f5, f3, f3
/* 801ED3E4 001EA324  EC 41 00 28 */	fsubs f2, f1, f0
/* 801ED3E8 001EA328  C0 02 B7 3C */	lfs f0, lbl_80519A9C@sda21(r2)
/* 801ED3EC 001EA32C  EC C4 01 32 */	fmuls f6, f4, f4
/* 801ED3F0 001EA330  EC 22 28 BA */	fmadds f1, f2, f2, f5
/* 801ED3F4 001EA334  EC 26 08 2A */	fadds f1, f6, f1
/* 801ED3F8 001EA338  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801ED3FC 001EA33C  40 81 00 14 */	ble .L_801ED410
/* 801ED400 001EA340  40 81 00 14 */	ble .L_801ED414
/* 801ED404 001EA344  FC 00 08 34 */	frsqrte f0, f1
/* 801ED408 001EA348  EC 20 00 72 */	fmuls f1, f0, f1
/* 801ED40C 001EA34C  48 00 00 08 */	b .L_801ED414
.L_801ED410:
/* 801ED410 001EA350  FC 20 00 90 */	fmr f1, f0
.L_801ED414:
/* 801ED414 001EA354  C0 02 B7 3C */	lfs f0, lbl_80519A9C@sda21(r2)
/* 801ED418 001EA358  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801ED41C 001EA35C  40 81 00 1C */	ble .L_801ED438
/* 801ED420 001EA360  C0 02 B7 40 */	lfs f0, lbl_80519AA0@sda21(r2)
/* 801ED424 001EA364  EC 00 08 24 */	fdivs f0, f0, f1
/* 801ED428 001EA368  EC 42 00 32 */	fmuls f2, f2, f0
/* 801ED42C 001EA36C  EC 63 00 32 */	fmuls f3, f3, f0
/* 801ED430 001EA370  EC 84 00 32 */	fmuls f4, f4, f0
/* 801ED434 001EA374  48 00 00 08 */	b .L_801ED43C
.L_801ED438:
/* 801ED438 001EA378  FC 20 00 90 */	fmr f1, f0
.L_801ED43C:
/* 801ED43C 001EA37C  C0 02 B7 74 */	lfs f0, lbl_80519AD4@sda21(r2)
/* 801ED440 001EA380  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801ED444 001EA384  40 81 00 14 */	ble .L_801ED458
/* 801ED448 001EA388  D0 45 00 00 */	stfs f2, 0(r5)
/* 801ED44C 001EA38C  D0 65 00 04 */	stfs f3, 4(r5)
/* 801ED450 001EA390  D0 85 00 08 */	stfs f4, 8(r5)
/* 801ED454 001EA394  48 00 00 2C */	b .L_801ED480
.L_801ED458:
/* 801ED458 001EA398  C0 02 B7 3C */	lfs f0, lbl_80519A9C@sda21(r2)
/* 801ED45C 001EA39C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 801ED460 001EA3A0  41 82 00 14 */	beq .L_801ED474
/* 801ED464 001EA3A4  D0 45 00 00 */	stfs f2, 0(r5)
/* 801ED468 001EA3A8  D0 65 00 04 */	stfs f3, 4(r5)
/* 801ED46C 001EA3AC  D0 85 00 08 */	stfs f4, 8(r5)
/* 801ED470 001EA3B0  48 00 00 10 */	b .L_801ED480
.L_801ED474:
/* 801ED474 001EA3B4  D0 05 00 00 */	stfs f0, 0(r5)
/* 801ED478 001EA3B8  D0 05 00 04 */	stfs f0, 4(r5)
/* 801ED47C 001EA3BC  D0 05 00 08 */	stfs f0, 8(r5)
.L_801ED480:
/* 801ED480 001EA3C0  38 60 00 01 */	li r3, 1
/* 801ED484 001EA3C4  4E 80 00 20 */	blr 
.endfn "getVectorField__Q34Game15ItemBigFountain4ItemFRQ23Sys6SphereR10Vector3<f>"

.fn getWorkDistance__Q34Game15ItemBigFountain4ItemFRQ23Sys6Sphere, global
/* 801ED488 001EA3C8  C0 23 01 A0 */	lfs f1, 0x1a0(r3)
/* 801ED48C 001EA3CC  C0 04 00 04 */	lfs f0, 4(r4)
/* 801ED490 001EA3D0  C0 63 01 A4 */	lfs f3, 0x1a4(r3)
/* 801ED494 001EA3D4  EC 81 00 28 */	fsubs f4, f1, f0
/* 801ED498 001EA3D8  C0 44 00 08 */	lfs f2, 8(r4)
/* 801ED49C 001EA3DC  C0 23 01 9C */	lfs f1, 0x19c(r3)
/* 801ED4A0 001EA3E0  C0 04 00 00 */	lfs f0, 0(r4)
/* 801ED4A4 001EA3E4  EC 43 10 28 */	fsubs f2, f3, f2
/* 801ED4A8 001EA3E8  EC 64 01 32 */	fmuls f3, f4, f4
/* 801ED4AC 001EA3EC  EC 21 00 28 */	fsubs f1, f1, f0
/* 801ED4B0 001EA3F0  C0 02 B7 3C */	lfs f0, lbl_80519A9C@sda21(r2)
/* 801ED4B4 001EA3F4  EC 42 00 B2 */	fmuls f2, f2, f2
/* 801ED4B8 001EA3F8  EC 21 18 7A */	fmadds f1, f1, f1, f3
/* 801ED4BC 001EA3FC  EC 22 08 2A */	fadds f1, f2, f1
/* 801ED4C0 001EA400  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801ED4C4 001EA404  40 81 00 14 */	ble .L_801ED4D8
/* 801ED4C8 001EA408  40 81 00 14 */	ble .L_801ED4DC
/* 801ED4CC 001EA40C  FC 00 08 34 */	frsqrte f0, f1
/* 801ED4D0 001EA410  EC 20 00 72 */	fmuls f1, f0, f1
/* 801ED4D4 001EA414  48 00 00 08 */	b .L_801ED4DC
.L_801ED4D8:
/* 801ED4D8 001EA418  FC 20 00 90 */	fmr f1, f0
.L_801ED4DC:
/* 801ED4DC 001EA41C  C0 02 B7 74 */	lfs f0, lbl_80519AD4@sda21(r2)
/* 801ED4E0 001EA420  EC 21 00 28 */	fsubs f1, f1, f0
/* 801ED4E4 001EA424  4E 80 00 20 */	blr 
.endfn getWorkDistance__Q34Game15ItemBigFountain4ItemFRQ23Sys6Sphere

.fn onKeyEvent__Q34Game15ItemBigFountain4ItemFRCQ28SysShape8KeyEvent, global
/* 801ED4E8 001EA428  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801ED4EC 001EA42C  7C 08 02 A6 */	mflr r0
/* 801ED4F0 001EA430  7C 66 1B 78 */	mr r6, r3
/* 801ED4F4 001EA434  7C 85 23 78 */	mr r5, r4
/* 801ED4F8 001EA438  90 01 00 14 */	stw r0, 0x14(r1)
/* 801ED4FC 001EA43C  7C C4 33 78 */	mr r4, r6
/* 801ED500 001EA440  80 63 01 DC */	lwz r3, 0x1dc(r3)
/* 801ED504 001EA444  81 83 00 00 */	lwz r12, 0(r3)
/* 801ED508 001EA448  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801ED50C 001EA44C  7D 89 03 A6 */	mtctr r12
/* 801ED510 001EA450  4E 80 04 21 */	bctrl 
/* 801ED514 001EA454  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801ED518 001EA458  7C 08 03 A6 */	mtlr r0
/* 801ED51C 001EA45C  38 21 00 10 */	addi r1, r1, 0x10
/* 801ED520 001EA460  4E 80 00 20 */	blr 
.endfn onKeyEvent__Q34Game15ItemBigFountain4ItemFRCQ28SysShape8KeyEvent

.fn "onKeyEvent__Q24Game40ItemState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemRCQ28SysShape8KeyEvent", weak
/* 801ED524 001EA464  4E 80 00 20 */	blr 
.endfn "onKeyEvent__Q24Game40ItemState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemRCQ28SysShape8KeyEvent"

.fn __ct__Q34Game15ItemBigFountain3MgrFv, global
/* 801ED528 001EA468  94 21 FB C0 */	stwu r1, -0x440(r1)
/* 801ED52C 001EA46C  7C 08 02 A6 */	mflr r0
/* 801ED530 001EA470  90 01 04 44 */	stw r0, 0x444(r1)
/* 801ED534 001EA474  7C 80 07 35 */	extsh. r0, r4
/* 801ED538 001EA478  3C 80 80 48 */	lis r4, lbl_804810A0@ha
/* 801ED53C 001EA47C  93 E1 04 3C */	stw r31, 0x43c(r1)
/* 801ED540 001EA480  3B E4 10 A0 */	addi r31, r4, lbl_804810A0@l
/* 801ED544 001EA484  93 C1 04 38 */	stw r30, 0x438(r1)
/* 801ED548 001EA488  7C 7E 1B 78 */	mr r30, r3
/* 801ED54C 001EA48C  41 82 00 0C */	beq .L_801ED558
/* 801ED550 001EA490  38 1E 00 90 */	addi r0, r30, 0x90
/* 801ED554 001EA494  90 1E 00 04 */	stw r0, 4(r30)
.L_801ED558:
/* 801ED558 001EA498  7F C3 F3 78 */	mr r3, r30
/* 801ED55C 001EA49C  38 80 00 00 */	li r4, 0
/* 801ED560 001EA4A0  4B FD FE C1 */	bl __ct__Q24Game12TNodeItemMgrFv
/* 801ED564 001EA4A4  3C 80 80 4C */	lis r4, __vt__Q34Game15ItemBigFountain3Mgr@ha
/* 801ED568 001EA4A8  7F C3 F3 78 */	mr r3, r30
/* 801ED56C 001EA4AC  38 A4 AA 14 */	addi r5, r4, __vt__Q34Game15ItemBigFountain3Mgr@l
/* 801ED570 001EA4B0  38 80 00 01 */	li r4, 1
/* 801ED574 001EA4B4  90 BE 00 00 */	stw r5, 0(r30)
/* 801ED578 001EA4B8  38 05 00 74 */	addi r0, r5, 0x74
/* 801ED57C 001EA4BC  90 1E 00 30 */	stw r0, 0x30(r30)
/* 801ED580 001EA4C0  4B FD F8 4D */	bl setModelSize__Q24Game11BaseItemMgrFi
/* 801ED584 001EA4C4  38 7F 00 8C */	addi r3, r31, 0x8c
/* 801ED588 001EA4C8  38 1F 00 AC */	addi r0, r31, 0xac
/* 801ED58C 001EA4CC  90 7E 00 28 */	stw r3, 0x28(r30)
/* 801ED590 001EA4D0  38 60 01 14 */	li r3, 0x114
/* 801ED594 001EA4D4  90 1E 00 08 */	stw r0, 8(r30)
/* 801ED598 001EA4D8  4B E3 69 0D */	bl __nw__FUl
/* 801ED59C 001EA4DC  7C 60 1B 79 */	or. r0, r3, r3
/* 801ED5A0 001EA4E0  41 82 00 0C */	beq .L_801ED5AC
/* 801ED5A4 001EA4E4  48 00 00 C9 */	bl __ct__Q34Game15ItemBigFountain13FountainParmsFv
/* 801ED5A8 001EA4E8  7C 60 1B 78 */	mr r0, r3
.L_801ED5AC:
/* 801ED5AC 001EA4EC  90 1E 00 8C */	stw r0, 0x8c(r30)
/* 801ED5B0 001EA4F0  38 00 00 00 */	li r0, 0
/* 801ED5B4 001EA4F4  38 7F 00 B8 */	addi r3, r31, 0xb8
/* 801ED5B8 001EA4F8  38 80 00 00 */	li r4, 0
/* 801ED5BC 001EA4FC  90 01 00 08 */	stw r0, 8(r1)
/* 801ED5C0 001EA500  38 A0 00 00 */	li r5, 0
/* 801ED5C4 001EA504  38 C0 00 00 */	li r6, 0
/* 801ED5C8 001EA508  38 E0 00 00 */	li r7, 0
/* 801ED5CC 001EA50C  39 00 00 02 */	li r8, 2
/* 801ED5D0 001EA510  39 20 00 00 */	li r9, 0
/* 801ED5D4 001EA514  39 40 00 00 */	li r10, 0
/* 801ED5D8 001EA518  4B E3 1B B1 */	bl loadToMainRAM__12JKRDvdRipperFPCcPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPiPUl
/* 801ED5DC 001EA51C  7C 7F 1B 79 */	or. r31, r3, r3
/* 801ED5E0 001EA520  41 82 00 4C */	beq .L_801ED62C
/* 801ED5E4 001EA524  7F E4 FB 78 */	mr r4, r31
/* 801ED5E8 001EA528  38 61 00 10 */	addi r3, r1, 0x10
/* 801ED5EC 001EA52C  38 A0 FF FF */	li r5, -1
/* 801ED5F0 001EA530  48 22 83 09 */	bl __ct__9RamStreamFPvi
/* 801ED5F4 001EA534  38 00 00 01 */	li r0, 1
/* 801ED5F8 001EA538  2C 00 00 01 */	cmpwi r0, 1
/* 801ED5FC 001EA53C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801ED600 001EA540  40 82 00 0C */	bne .L_801ED60C
/* 801ED604 001EA544  38 00 00 00 */	li r0, 0
/* 801ED608 001EA548  90 01 04 24 */	stw r0, 0x424(r1)
.L_801ED60C:
/* 801ED60C 001EA54C  80 7E 00 8C */	lwz r3, 0x8c(r30)
/* 801ED610 001EA550  38 81 00 10 */	addi r4, r1, 0x10
/* 801ED614 001EA554  81 83 00 D8 */	lwz r12, 0xd8(r3)
/* 801ED618 001EA558  81 8C 00 08 */	lwz r12, 8(r12)
/* 801ED61C 001EA55C  7D 89 03 A6 */	mtctr r12
/* 801ED620 001EA560  4E 80 04 21 */	bctrl 
/* 801ED624 001EA564  7F E3 FB 78 */	mr r3, r31
/* 801ED628 001EA568  4B E3 6A B1 */	bl __dla__FPv
.L_801ED62C:
/* 801ED62C 001EA56C  80 01 04 44 */	lwz r0, 0x444(r1)
/* 801ED630 001EA570  7F C3 F3 78 */	mr r3, r30
/* 801ED634 001EA574  83 E1 04 3C */	lwz r31, 0x43c(r1)
/* 801ED638 001EA578  83 C1 04 38 */	lwz r30, 0x438(r1)
/* 801ED63C 001EA57C  7C 08 03 A6 */	mtlr r0
/* 801ED640 001EA580  38 21 04 40 */	addi r1, r1, 0x440
/* 801ED644 001EA584  4E 80 00 20 */	blr 
.endfn __ct__Q34Game15ItemBigFountain3MgrFv

.fn read__Q34Game15ItemBigFountain13FountainParmsFR6Stream, weak
/* 801ED648 001EA588  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801ED64C 001EA58C  7C 08 02 A6 */	mflr r0
/* 801ED650 001EA590  38 63 00 DC */	addi r3, r3, 0xdc
/* 801ED654 001EA594  90 01 00 14 */	stw r0, 0x14(r1)
/* 801ED658 001EA598  48 22 61 9D */	bl read__10ParametersFR6Stream
/* 801ED65C 001EA59C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801ED660 001EA5A0  7C 08 03 A6 */	mtlr r0
/* 801ED664 001EA5A4  38 21 00 10 */	addi r1, r1, 0x10
/* 801ED668 001EA5A8  4E 80 00 20 */	blr 
.endfn read__Q34Game15ItemBigFountain13FountainParmsFR6Stream

.fn __ct__Q34Game15ItemBigFountain13FountainParmsFv, weak
/* 801ED66C 001EA5AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801ED670 001EA5B0  7C 08 02 A6 */	mflr r0
/* 801ED674 001EA5B4  3C A0 73 30 */	lis r5, 0x73303030@ha
/* 801ED678 001EA5B8  3C 80 80 4B */	lis r4, __vt__Q24Game13CreatureParms@ha
/* 801ED67C 001EA5BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801ED680 001EA5C0  38 04 AC B0 */	addi r0, r4, __vt__Q24Game13CreatureParms@l
/* 801ED684 001EA5C4  38 A5 30 30 */	addi r5, r5, 0x73303030@l
/* 801ED688 001EA5C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801ED68C 001EA5CC  93 C1 00 08 */	stw r30, 8(r1)
/* 801ED690 001EA5D0  7C 7E 1B 78 */	mr r30, r3
/* 801ED694 001EA5D4  3C 60 80 48 */	lis r3, lbl_804810A0@ha
/* 801ED698 001EA5D8  90 1E 00 D8 */	stw r0, 0xd8(r30)
/* 801ED69C 001EA5DC  3B E3 10 A0 */	addi r31, r3, lbl_804810A0@l
/* 801ED6A0 001EA5E0  38 1E 00 D4 */	addi r0, r30, 0xd4
/* 801ED6A4 001EA5E4  38 60 00 00 */	li r3, 0
/* 801ED6A8 001EA5E8  90 1E 00 00 */	stw r0, 0(r30)
/* 801ED6AC 001EA5EC  38 1F 00 D8 */	addi r0, r31, 0xd8
/* 801ED6B0 001EA5F0  7F C4 F3 78 */	mr r4, r30
/* 801ED6B4 001EA5F4  38 DF 00 EC */	addi r6, r31, 0xec
/* 801ED6B8 001EA5F8  90 7E 00 04 */	stw r3, 4(r30)
/* 801ED6BC 001EA5FC  38 7E 00 0C */	addi r3, r30, 0xc
/* 801ED6C0 001EA600  90 1E 00 08 */	stw r0, 8(r30)
/* 801ED6C4 001EA604  48 22 5F 95 */	bl __ct__8BaseParmFP10ParametersUlPc
/* 801ED6C8 001EA608  3C 60 80 4B */	lis r3, "__vt__7Parm<f>"@ha
/* 801ED6CC 001EA60C  3C A0 73 30 */	lis r5, 0x73303031@ha
/* 801ED6D0 001EA610  38 03 AC BC */	addi r0, r3, "__vt__7Parm<f>"@l
/* 801ED6D4 001EA614  C0 02 B7 78 */	lfs f0, lbl_80519AD8@sda21(r2)
/* 801ED6D8 001EA618  90 1E 00 0C */	stw r0, 0xc(r30)
/* 801ED6DC 001EA61C  7F C4 F3 78 */	mr r4, r30
/* 801ED6E0 001EA620  C0 22 B7 3C */	lfs f1, lbl_80519A9C@sda21(r2)
/* 801ED6E4 001EA624  38 7E 00 34 */	addi r3, r30, 0x34
/* 801ED6E8 001EA628  D0 1E 00 24 */	stfs f0, 0x24(r30)
/* 801ED6EC 001EA62C  38 A5 30 31 */	addi r5, r5, 0x73303031@l
/* 801ED6F0 001EA630  C0 02 B7 40 */	lfs f0, lbl_80519AA0@sda21(r2)
/* 801ED6F4 001EA634  38 DF 01 00 */	addi r6, r31, 0x100
/* 801ED6F8 001EA638  D0 3E 00 2C */	stfs f1, 0x2c(r30)
/* 801ED6FC 001EA63C  D0 1E 00 30 */	stfs f0, 0x30(r30)
/* 801ED700 001EA640  48 22 5F 59 */	bl __ct__8BaseParmFP10ParametersUlPc
/* 801ED704 001EA644  3C 60 80 4B */	lis r3, "__vt__7Parm<f>"@ha
/* 801ED708 001EA648  3C A0 73 30 */	lis r5, 0x73303032@ha
/* 801ED70C 001EA64C  38 03 AC BC */	addi r0, r3, "__vt__7Parm<f>"@l
/* 801ED710 001EA650  C0 02 B7 78 */	lfs f0, lbl_80519AD8@sda21(r2)
/* 801ED714 001EA654  90 1E 00 34 */	stw r0, 0x34(r30)
/* 801ED718 001EA658  7F C4 F3 78 */	mr r4, r30
/* 801ED71C 001EA65C  C0 22 B7 3C */	lfs f1, lbl_80519A9C@sda21(r2)
/* 801ED720 001EA660  38 7E 00 5C */	addi r3, r30, 0x5c
/* 801ED724 001EA664  D0 1E 00 4C */	stfs f0, 0x4c(r30)
/* 801ED728 001EA668  38 A5 30 32 */	addi r5, r5, 0x73303032@l
/* 801ED72C 001EA66C  C0 02 B7 40 */	lfs f0, lbl_80519AA0@sda21(r2)
/* 801ED730 001EA670  38 DF 01 10 */	addi r6, r31, 0x110
/* 801ED734 001EA674  D0 3E 00 54 */	stfs f1, 0x54(r30)
/* 801ED738 001EA678  D0 1E 00 58 */	stfs f0, 0x58(r30)
/* 801ED73C 001EA67C  48 22 5F 1D */	bl __ct__8BaseParmFP10ParametersUlPc
/* 801ED740 001EA680  3C 60 80 4B */	lis r3, "__vt__7Parm<f>"@ha
/* 801ED744 001EA684  3C A0 73 30 */	lis r5, 0x73303033@ha
/* 801ED748 001EA688  38 03 AC BC */	addi r0, r3, "__vt__7Parm<f>"@l
/* 801ED74C 001EA68C  C0 02 B7 7C */	lfs f0, lbl_80519ADC@sda21(r2)
/* 801ED750 001EA690  90 1E 00 5C */	stw r0, 0x5c(r30)
/* 801ED754 001EA694  7F C4 F3 78 */	mr r4, r30
/* 801ED758 001EA698  C0 22 B7 3C */	lfs f1, lbl_80519A9C@sda21(r2)
/* 801ED75C 001EA69C  38 7E 00 84 */	addi r3, r30, 0x84
/* 801ED760 001EA6A0  D0 1E 00 74 */	stfs f0, 0x74(r30)
/* 801ED764 001EA6A4  38 A5 30 33 */	addi r5, r5, 0x73303033@l
/* 801ED768 001EA6A8  C0 02 B7 40 */	lfs f0, lbl_80519AA0@sda21(r2)
/* 801ED76C 001EA6AC  38 C2 B7 80 */	addi r6, r2, lbl_80519AE0@sda21
/* 801ED770 001EA6B0  D0 3E 00 7C */	stfs f1, 0x7c(r30)
/* 801ED774 001EA6B4  D0 1E 00 80 */	stfs f0, 0x80(r30)
/* 801ED778 001EA6B8  48 22 5E E1 */	bl __ct__8BaseParmFP10ParametersUlPc
/* 801ED77C 001EA6BC  3C 60 80 4B */	lis r3, "__vt__7Parm<f>"@ha
/* 801ED780 001EA6C0  3C A0 73 30 */	lis r5, 0x73303034@ha
/* 801ED784 001EA6C4  38 03 AC BC */	addi r0, r3, "__vt__7Parm<f>"@l
/* 801ED788 001EA6C8  C0 02 B7 88 */	lfs f0, lbl_80519AE8@sda21(r2)
/* 801ED78C 001EA6CC  90 1E 00 84 */	stw r0, 0x84(r30)
/* 801ED790 001EA6D0  7F C4 F3 78 */	mr r4, r30
/* 801ED794 001EA6D4  C0 22 B7 8C */	lfs f1, lbl_80519AEC@sda21(r2)
/* 801ED798 001EA6D8  38 7E 00 AC */	addi r3, r30, 0xac
/* 801ED79C 001EA6DC  D0 1E 00 9C */	stfs f0, 0x9c(r30)
/* 801ED7A0 001EA6E0  38 A5 30 34 */	addi r5, r5, 0x73303034@l
/* 801ED7A4 001EA6E4  C0 02 B7 90 */	lfs f0, lbl_80519AF0@sda21(r2)
/* 801ED7A8 001EA6E8  38 DF 01 20 */	addi r6, r31, 0x120
/* 801ED7AC 001EA6EC  D0 3E 00 A4 */	stfs f1, 0xa4(r30)
/* 801ED7B0 001EA6F0  D0 1E 00 A8 */	stfs f0, 0xa8(r30)
/* 801ED7B4 001EA6F4  48 22 5E A5 */	bl __ct__8BaseParmFP10ParametersUlPc
/* 801ED7B8 001EA6F8  3C 80 80 4B */	lis r4, "__vt__7Parm<f>"@ha
/* 801ED7BC 001EA6FC  3C 60 80 4C */	lis r3, __vt__Q34Game15ItemBigFountain13FountainParms@ha
/* 801ED7C0 001EA700  38 04 AC BC */	addi r0, r4, "__vt__7Parm<f>"@l
/* 801ED7C4 001EA704  3C A0 70 30 */	lis r5, 0x70303030@ha
/* 801ED7C8 001EA708  90 1E 00 AC */	stw r0, 0xac(r30)
/* 801ED7CC 001EA70C  39 23 AA D0 */	addi r9, r3, __vt__Q34Game15ItemBigFountain13FountainParms@l
/* 801ED7D0 001EA710  C0 02 B7 94 */	lfs f0, lbl_80519AF4@sda21(r2)
/* 801ED7D4 001EA714  39 1E 01 10 */	addi r8, r30, 0x110
/* 801ED7D8 001EA718  C0 22 B7 8C */	lfs f1, lbl_80519AEC@sda21(r2)
/* 801ED7DC 001EA71C  38 E0 00 00 */	li r7, 0
/* 801ED7E0 001EA720  D0 1E 00 C4 */	stfs f0, 0xc4(r30)
/* 801ED7E4 001EA724  38 1F 01 30 */	addi r0, r31, 0x130
/* 801ED7E8 001EA728  C0 02 B7 90 */	lfs f0, lbl_80519AF0@sda21(r2)
/* 801ED7EC 001EA72C  38 7E 00 E8 */	addi r3, r30, 0xe8
/* 801ED7F0 001EA730  D0 3E 00 CC */	stfs f1, 0xcc(r30)
/* 801ED7F4 001EA734  38 9E 00 DC */	addi r4, r30, 0xdc
/* 801ED7F8 001EA738  38 A5 30 30 */	addi r5, r5, 0x70303030@l
/* 801ED7FC 001EA73C  38 C2 B7 98 */	addi r6, r2, lbl_80519AF8@sda21
/* 801ED800 001EA740  D0 1E 00 D0 */	stfs f0, 0xd0(r30)
/* 801ED804 001EA744  91 3E 00 D8 */	stw r9, 0xd8(r30)
/* 801ED808 001EA748  91 1E 00 DC */	stw r8, 0xdc(r30)
/* 801ED80C 001EA74C  90 FE 00 E0 */	stw r7, 0xe0(r30)
/* 801ED810 001EA750  90 1E 00 E4 */	stw r0, 0xe4(r30)
/* 801ED814 001EA754  48 22 5E 45 */	bl __ct__8BaseParmFP10ParametersUlPc
/* 801ED818 001EA758  3C 60 80 4B */	lis r3, "__vt__7Parm<f>"@ha
/* 801ED81C 001EA75C  C0 42 B7 A0 */	lfs f2, lbl_80519B00@sda21(r2)
/* 801ED820 001EA760  38 03 AC BC */	addi r0, r3, "__vt__7Parm<f>"@l
/* 801ED824 001EA764  C0 22 B7 40 */	lfs f1, lbl_80519AA0@sda21(r2)
/* 801ED828 001EA768  90 1E 00 E8 */	stw r0, 0xe8(r30)
/* 801ED82C 001EA76C  7F C3 F3 78 */	mr r3, r30
/* 801ED830 001EA770  C0 02 B7 A4 */	lfs f0, lbl_80519B04@sda21(r2)
/* 801ED834 001EA774  D0 5E 01 00 */	stfs f2, 0x100(r30)
/* 801ED838 001EA778  D0 3E 01 08 */	stfs f1, 0x108(r30)
/* 801ED83C 001EA77C  D0 1E 01 0C */	stfs f0, 0x10c(r30)
/* 801ED840 001EA780  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801ED844 001EA784  83 C1 00 08 */	lwz r30, 8(r1)
/* 801ED848 001EA788  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801ED84C 001EA78C  7C 08 03 A6 */	mtlr r0
/* 801ED850 001EA790  38 21 00 10 */	addi r1, r1, 0x10
/* 801ED854 001EA794  4E 80 00 20 */	blr 
.endfn __ct__Q34Game15ItemBigFountain13FountainParmsFv

.fn onLoadResources__Q34Game15ItemBigFountain3MgrFv, global
/* 801ED858 001EA798  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801ED85C 001EA79C  7C 08 02 A6 */	mflr r0
/* 801ED860 001EA7A0  3C 80 80 48 */	lis r4, lbl_804810A0@ha
/* 801ED864 001EA7A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801ED868 001EA7A8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801ED86C 001EA7AC  3B E4 10 A0 */	addi r31, r4, lbl_804810A0@l
/* 801ED870 001EA7B0  38 82 B7 A8 */	addi r4, r2, lbl_80519B08@sda21
/* 801ED874 001EA7B4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801ED878 001EA7B8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801ED87C 001EA7BC  7C 7D 1B 78 */	mr r29, r3
/* 801ED880 001EA7C0  4B FD F6 55 */	bl loadArchive__Q24Game11BaseItemMgrFPc
/* 801ED884 001EA7C4  7F A3 EB 78 */	mr r3, r29
/* 801ED888 001EA7C8  38 9F 01 40 */	addi r4, r31, 0x140
/* 801ED88C 001EA7CC  38 A0 00 00 */	li r5, 0
/* 801ED890 001EA7D0  3C C0 20 02 */	lis r6, 0x2002
/* 801ED894 001EA7D4  4B FD F6 BD */	bl loadBmd__Q24Game11BaseItemMgrFPciUl
/* 801ED898 001EA7D8  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 801ED89C 001EA7DC  3C 80 00 04 */	lis r4, 4
/* 801ED8A0 001EA7E0  80 63 00 00 */	lwz r3, 0(r3)
/* 801ED8A4 001EA7E4  4B E9 60 35 */	bl newSharedDisplayList__12J3DModelDataFUl
/* 801ED8A8 001EA7E8  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 801ED8AC 001EA7EC  80 63 00 00 */	lwz r3, 0(r3)
/* 801ED8B0 001EA7F0  4B E9 61 81 */	bl makeSharedDL__12J3DModelDataFv
/* 801ED8B4 001EA7F4  7F A3 EB 78 */	mr r3, r29
/* 801ED8B8 001EA7F8  38 9F 01 50 */	addi r4, r31, 0x150
/* 801ED8BC 001EA7FC  4B FD F9 11 */	bl openTextArc__Q24Game11BaseItemMgrFPc
/* 801ED8C0 001EA800  7C 60 1B 78 */	mr r0, r3
/* 801ED8C4 001EA804  7F A3 EB 78 */	mr r3, r29
/* 801ED8C8 001EA808  7C 1E 03 78 */	mr r30, r0
/* 801ED8CC 001EA80C  38 BF 01 5C */	addi r5, r31, 0x15c
/* 801ED8D0 001EA810  7F C4 F3 78 */	mr r4, r30
/* 801ED8D4 001EA814  4B FD F7 29 */	bl loadAnimMgr__Q24Game11BaseItemMgrFP13JKRFileLoaderPc
/* 801ED8D8 001EA818  7F A3 EB 78 */	mr r3, r29
/* 801ED8DC 001EA81C  7F C4 F3 78 */	mr r4, r30
/* 801ED8E0 001EA820  38 BF 01 68 */	addi r5, r31, 0x168
/* 801ED8E4 001EA824  4B FD F9 BD */	bl loadPlatform__Q24Game11BaseItemMgrFP13JKRFileLoaderPc
/* 801ED8E8 001EA828  90 7D 00 88 */	stw r3, 0x88(r29)
/* 801ED8EC 001EA82C  38 61 00 08 */	addi r3, r1, 8
/* 801ED8F0 001EA830  38 80 00 01 */	li r4, 1
/* 801ED8F4 001EA834  38 A0 00 02 */	li r5, 2
/* 801ED8F8 001EA838  38 C0 00 01 */	li r6, 1
/* 801ED8FC 001EA83C  48 22 EB 5D */	bl setCode__Q27MapCode4CodeFiib
/* 801ED900 001EA840  80 7D 00 88 */	lwz r3, 0x88(r29)
/* 801ED904 001EA844  38 81 00 08 */	addi r4, r1, 8
/* 801ED908 001EA848  4B F4 5D ED */	bl setMapCodeAll__8PlatformFRQ27MapCode4Code
/* 801ED90C 001EA84C  7F A3 EB 78 */	mr r3, r29
/* 801ED910 001EA850  7F C4 F3 78 */	mr r4, r30
/* 801ED914 001EA854  4B FD F9 3D */	bl closeTextArc__Q24Game11BaseItemMgrFP10JKRArchive
/* 801ED918 001EA858  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801ED91C 001EA85C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801ED920 001EA860  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801ED924 001EA864  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801ED928 001EA868  7C 08 03 A6 */	mtlr r0
/* 801ED92C 001EA86C  38 21 00 20 */	addi r1, r1, 0x20
/* 801ED930 001EA870  4E 80 00 20 */	blr 
.endfn onLoadResources__Q34Game15ItemBigFountain3MgrFv

.fn birth__Q34Game15ItemBigFountain3MgrFv, global
/* 801ED934 001EA874  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801ED938 001EA878  7C 08 02 A6 */	mflr r0
/* 801ED93C 001EA87C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801ED940 001EA880  4B FD FE 4D */	bl birth__Q24Game12TNodeItemMgrFv
/* 801ED944 001EA884  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801ED948 001EA888  7C 08 03 A6 */	mtlr r0
/* 801ED94C 001EA88C  38 21 00 10 */	addi r1, r1, 0x10
/* 801ED950 001EA890  4E 80 00 20 */	blr 
.endfn birth__Q34Game15ItemBigFountain3MgrFv

.fn "generatorBirth__Q34Game15ItemBigFountain3MgrFR10Vector3<f>R10Vector3<f>PQ24Game11GenItemParm", global
/* 801ED954 001EA894  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801ED958 001EA898  7C 08 02 A6 */	mflr r0
/* 801ED95C 001EA89C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801ED960 001EA8A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801ED964 001EA8A4  93 C1 00 08 */	stw r30, 8(r1)
/* 801ED968 001EA8A8  7C 9E 23 78 */	mr r30, r4
/* 801ED96C 001EA8AC  4B FD FE 21 */	bl birth__Q24Game12TNodeItemMgrFv
/* 801ED970 001EA8B0  7C 60 1B 78 */	mr r0, r3
/* 801ED974 001EA8B4  38 80 00 00 */	li r4, 0
/* 801ED978 001EA8B8  7C 1F 03 78 */	mr r31, r0
/* 801ED97C 001EA8BC  4B F4 D6 4D */	bl init__Q24Game8CreatureFPQ24Game15CreatureInitArg
/* 801ED980 001EA8C0  7F E3 FB 78 */	mr r3, r31
/* 801ED984 001EA8C4  7F C4 F3 78 */	mr r4, r30
/* 801ED988 001EA8C8  38 A0 00 00 */	li r5, 0
/* 801ED98C 001EA8CC  4B F4 D8 1D */	bl "setPosition__Q24Game8CreatureFR10Vector3<f>b"
/* 801ED990 001EA8D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801ED994 001EA8D4  7F E3 FB 78 */	mr r3, r31
/* 801ED998 001EA8D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801ED99C 001EA8DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 801ED9A0 001EA8E0  7C 08 03 A6 */	mtlr r0
/* 801ED9A4 001EA8E4  38 21 00 10 */	addi r1, r1, 0x10
/* 801ED9A8 001EA8E8  4E 80 00 20 */	blr 
.endfn "generatorBirth__Q34Game15ItemBigFountain3MgrFR10Vector3<f>R10Vector3<f>PQ24Game11GenItemParm"

.fn __dt__Q34Game15ItemBigFountain3MgrFv, weak
/* 801ED9AC 001EA8EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801ED9B0 001EA8F0  7C 08 02 A6 */	mflr r0
/* 801ED9B4 001EA8F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801ED9B8 001EA8F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801ED9BC 001EA8FC  7C 9F 23 78 */	mr r31, r4
/* 801ED9C0 001EA900  93 C1 00 08 */	stw r30, 8(r1)
/* 801ED9C4 001EA904  7C 7E 1B 79 */	or. r30, r3, r3
/* 801ED9C8 001EA908  41 82 00 FC */	beq .L_801EDAC4
/* 801ED9CC 001EA90C  3C 60 80 4C */	lis r3, __vt__Q34Game15ItemBigFountain3Mgr@ha
/* 801ED9D0 001EA910  38 63 AA 14 */	addi r3, r3, __vt__Q34Game15ItemBigFountain3Mgr@l
/* 801ED9D4 001EA914  90 7E 00 00 */	stw r3, 0(r30)
/* 801ED9D8 001EA918  38 03 00 74 */	addi r0, r3, 0x74
/* 801ED9DC 001EA91C  90 1E 00 30 */	stw r0, 0x30(r30)
/* 801ED9E0 001EA920  41 82 00 D4 */	beq .L_801EDAB4
/* 801ED9E4 001EA924  3C 60 80 4B */	lis r3, __vt__Q24Game12TNodeItemMgr@ha
/* 801ED9E8 001EA928  34 1E 00 4C */	addic. r0, r30, 0x4c
/* 801ED9EC 001EA92C  38 63 71 80 */	addi r3, r3, __vt__Q24Game12TNodeItemMgr@l
/* 801ED9F0 001EA930  90 7E 00 00 */	stw r3, 0(r30)
/* 801ED9F4 001EA934  38 03 00 74 */	addi r0, r3, 0x74
/* 801ED9F8 001EA938  90 1E 00 30 */	stw r0, 0x30(r30)
/* 801ED9FC 001EA93C  41 82 00 84 */	beq .L_801EDA80
/* 801EDA00 001EA940  3C 80 80 4B */	lis r4, "__vt__31NodeObjectMgr<Q24Game8BaseItem>"@ha
/* 801EDA04 001EA944  34 7E 00 6C */	addic. r3, r30, 0x6c
/* 801EDA08 001EA948  38 84 72 4C */	addi r4, r4, "__vt__31NodeObjectMgr<Q24Game8BaseItem>"@l
/* 801EDA0C 001EA94C  90 9E 00 4C */	stw r4, 0x4c(r30)
/* 801EDA10 001EA950  38 04 00 2C */	addi r0, r4, 0x2c
/* 801EDA14 001EA954  90 1E 00 68 */	stw r0, 0x68(r30)
/* 801EDA18 001EA958  41 82 00 18 */	beq .L_801EDA30
/* 801EDA1C 001EA95C  3C 80 80 4B */	lis r4, "__vt__29TObjectNode<Q24Game8BaseItem>"@ha
/* 801EDA20 001EA960  38 04 72 3C */	addi r0, r4, "__vt__29TObjectNode<Q24Game8BaseItem>"@l
/* 801EDA24 001EA964  90 1E 00 6C */	stw r0, 0x6c(r30)
/* 801EDA28 001EA968  38 80 00 00 */	li r4, 0
/* 801EDA2C 001EA96C  48 22 3B 5D */	bl __dt__5CNodeFv
.L_801EDA30:
/* 801EDA30 001EA970  34 1E 00 4C */	addic. r0, r30, 0x4c
/* 801EDA34 001EA974  41 82 00 4C */	beq .L_801EDA80
/* 801EDA38 001EA978  3C 60 80 4B */	lis r3, "__vt__27ObjectMgr<Q24Game8BaseItem>"@ha
/* 801EDA3C 001EA97C  34 1E 00 4C */	addic. r0, r30, 0x4c
/* 801EDA40 001EA980  38 63 72 CC */	addi r3, r3, "__vt__27ObjectMgr<Q24Game8BaseItem>"@l
/* 801EDA44 001EA984  90 7E 00 4C */	stw r3, 0x4c(r30)
/* 801EDA48 001EA988  38 03 00 2C */	addi r0, r3, 0x2c
/* 801EDA4C 001EA98C  90 1E 00 68 */	stw r0, 0x68(r30)
/* 801EDA50 001EA990  41 82 00 30 */	beq .L_801EDA80
/* 801EDA54 001EA994  3C 60 80 4B */	lis r3, "__vt__27Container<Q24Game8BaseItem>"@ha
/* 801EDA58 001EA998  34 1E 00 4C */	addic. r0, r30, 0x4c
/* 801EDA5C 001EA99C  38 03 73 48 */	addi r0, r3, "__vt__27Container<Q24Game8BaseItem>"@l
/* 801EDA60 001EA9A0  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 801EDA64 001EA9A4  41 82 00 1C */	beq .L_801EDA80
/* 801EDA68 001EA9A8  3C 80 80 4B */	lis r4, __vt__16GenericContainer@ha
/* 801EDA6C 001EA9AC  38 7E 00 4C */	addi r3, r30, 0x4c
/* 801EDA70 001EA9B0  38 04 AC DC */	addi r0, r4, __vt__16GenericContainer@l
/* 801EDA74 001EA9B4  38 80 00 00 */	li r4, 0
/* 801EDA78 001EA9B8  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 801EDA7C 001EA9BC  48 22 3B 0D */	bl __dt__5CNodeFv
.L_801EDA80:
/* 801EDA80 001EA9C0  34 1E 00 30 */	addic. r0, r30, 0x30
/* 801EDA84 001EA9C4  41 82 00 30 */	beq .L_801EDAB4
/* 801EDA88 001EA9C8  3C 60 80 4B */	lis r3, "__vt__27Container<Q24Game8BaseItem>"@ha
/* 801EDA8C 001EA9CC  34 1E 00 30 */	addic. r0, r30, 0x30
/* 801EDA90 001EA9D0  38 03 73 48 */	addi r0, r3, "__vt__27Container<Q24Game8BaseItem>"@l
/* 801EDA94 001EA9D4  90 1E 00 30 */	stw r0, 0x30(r30)
/* 801EDA98 001EA9D8  41 82 00 1C */	beq .L_801EDAB4
/* 801EDA9C 001EA9DC  3C 80 80 4B */	lis r4, __vt__16GenericContainer@ha
/* 801EDAA0 001EA9E0  38 7E 00 30 */	addi r3, r30, 0x30
/* 801EDAA4 001EA9E4  38 04 AC DC */	addi r0, r4, __vt__16GenericContainer@l
/* 801EDAA8 001EA9E8  38 80 00 00 */	li r4, 0
/* 801EDAAC 001EA9EC  90 1E 00 30 */	stw r0, 0x30(r30)
/* 801EDAB0 001EA9F0  48 22 3A D9 */	bl __dt__5CNodeFv
.L_801EDAB4:
/* 801EDAB4 001EA9F4  7F E0 07 35 */	extsh. r0, r31
/* 801EDAB8 001EA9F8  40 81 00 0C */	ble .L_801EDAC4
/* 801EDABC 001EA9FC  7F C3 F3 78 */	mr r3, r30
/* 801EDAC0 001EAA00  4B E3 65 F5 */	bl __dl__FPv
.L_801EDAC4:
/* 801EDAC4 001EAA04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801EDAC8 001EAA08  7F C3 F3 78 */	mr r3, r30
/* 801EDACC 001EAA0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801EDAD0 001EAA10  83 C1 00 08 */	lwz r30, 8(r1)
/* 801EDAD4 001EAA14  7C 08 03 A6 */	mtlr r0
/* 801EDAD8 001EAA18  38 21 00 10 */	addi r1, r1, 0x10
/* 801EDADC 001EAA1C  4E 80 00 20 */	blr 
.endfn __dt__Q34Game15ItemBigFountain3MgrFv

.fn doNew__Q34Game15ItemBigFountain3MgrFv, weak
/* 801EDAE0 001EAA20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801EDAE4 001EAA24  7C 08 02 A6 */	mflr r0
/* 801EDAE8 001EAA28  38 60 02 04 */	li r3, 0x204
/* 801EDAEC 001EAA2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801EDAF0 001EAA30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801EDAF4 001EAA34  4B E3 63 B1 */	bl __nw__FUl
/* 801EDAF8 001EAA38  7C 7F 1B 79 */	or. r31, r3, r3
/* 801EDAFC 001EAA3C  41 82 00 B4 */	beq .L_801EDBB0
/* 801EDB00 001EAA40  38 80 04 0C */	li r4, 0x40c
/* 801EDB04 001EAA44  4B FD E4 E5 */	bl __ct__Q24Game8BaseItemFi
/* 801EDB08 001EAA48  3C 60 80 4C */	lis r3, "__vt__Q24Game98FSMItem<Q34Game15ItemBigFountain4Item,Q34Game15ItemBigFountain3FSM,Q34Game15ItemBigFountain5State>"@ha
/* 801EDB0C 001EAA4C  38 00 00 00 */	li r0, 0
/* 801EDB10 001EAA50  38 83 AF C4 */	addi r4, r3, "__vt__Q24Game98FSMItem<Q34Game15ItemBigFountain4Item,Q34Game15ItemBigFountain3FSM,Q34Game15ItemBigFountain5State>"@l
/* 801EDB14 001EAA54  38 60 00 1C */	li r3, 0x1c
/* 801EDB18 001EAA58  90 9F 00 00 */	stw r4, 0(r31)
/* 801EDB1C 001EAA5C  38 84 01 B0 */	addi r4, r4, 0x1b0
/* 801EDB20 001EAA60  90 9F 01 78 */	stw r4, 0x178(r31)
/* 801EDB24 001EAA64  90 1F 01 D8 */	stw r0, 0x1d8(r31)
/* 801EDB28 001EAA68  90 1F 01 DC */	stw r0, 0x1dc(r31)
/* 801EDB2C 001EAA6C  4B E3 63 79 */	bl __nw__FUl
/* 801EDB30 001EAA70  28 03 00 00 */	cmplwi r3, 0
/* 801EDB34 001EAA74  41 82 00 30 */	beq .L_801EDB64
/* 801EDB38 001EAA78  3C 80 80 4C */	lis r4, "__vt__Q24Game43StateMachine<Q34Game15ItemBigFountain4Item>"@ha
/* 801EDB3C 001EAA7C  3C A0 80 4C */	lis r5, "__vt__Q24Game38ItemFSM<Q34Game15ItemBigFountain4Item>"@ha
/* 801EDB40 001EAA80  38 04 AF AC */	addi r0, r4, "__vt__Q24Game43StateMachine<Q34Game15ItemBigFountain4Item>"@l
/* 801EDB44 001EAA84  3C 80 80 4C */	lis r4, __vt__Q34Game15ItemBigFountain3FSM@ha
/* 801EDB48 001EAA88  90 03 00 00 */	stw r0, 0(r3)
/* 801EDB4C 001EAA8C  38 C0 FF FF */	li r6, -1
/* 801EDB50 001EAA90  38 A5 AF 94 */	addi r5, r5, "__vt__Q24Game38ItemFSM<Q34Game15ItemBigFountain4Item>"@l
/* 801EDB54 001EAA94  38 04 B3 54 */	addi r0, r4, __vt__Q34Game15ItemBigFountain3FSM@l
/* 801EDB58 001EAA98  90 C3 00 18 */	stw r6, 0x18(r3)
/* 801EDB5C 001EAA9C  90 A3 00 00 */	stw r5, 0(r3)
/* 801EDB60 001EAAA0  90 03 00 00 */	stw r0, 0(r3)
.L_801EDB64:
/* 801EDB64 001EAAA4  90 7F 01 D8 */	stw r3, 0x1d8(r31)
/* 801EDB68 001EAAA8  7F E4 FB 78 */	mr r4, r31
/* 801EDB6C 001EAAAC  80 7F 01 D8 */	lwz r3, 0x1d8(r31)
/* 801EDB70 001EAAB0  81 83 00 00 */	lwz r12, 0(r3)
/* 801EDB74 001EAAB4  81 8C 00 08 */	lwz r12, 8(r12)
/* 801EDB78 001EAAB8  7D 89 03 A6 */	mtctr r12
/* 801EDB7C 001EAABC  4E 80 04 21 */	bctrl 
/* 801EDB80 001EAAC0  3C 80 80 4C */	lis r4, "__vt__Q24Game99WorkItem<Q34Game15ItemBigFountain4Item,Q34Game15ItemBigFountain3FSM,Q34Game15ItemBigFountain5State>"@ha
/* 801EDB84 001EAAC4  38 7F 01 E0 */	addi r3, r31, 0x1e0
/* 801EDB88 001EAAC8  38 84 AD 70 */	addi r4, r4, "__vt__Q24Game99WorkItem<Q34Game15ItemBigFountain4Item,Q34Game15ItemBigFountain3FSM,Q34Game15ItemBigFountain5State>"@l
/* 801EDB8C 001EAACC  90 9F 00 00 */	stw r4, 0(r31)
/* 801EDB90 001EAAD0  38 04 01 B0 */	addi r0, r4, 0x1b0
/* 801EDB94 001EAAD4  90 1F 01 78 */	stw r0, 0x178(r31)
/* 801EDB98 001EAAD8  48 04 10 35 */	bl __ct__Q24Game11TSoundEventFv
/* 801EDB9C 001EAADC  3C 60 80 4C */	lis r3, __vt__Q34Game15ItemBigFountain4Item@ha
/* 801EDBA0 001EAAE0  38 63 AB 4C */	addi r3, r3, __vt__Q34Game15ItemBigFountain4Item@l
/* 801EDBA4 001EAAE4  90 7F 00 00 */	stw r3, 0(r31)
/* 801EDBA8 001EAAE8  38 03 01 B0 */	addi r0, r3, 0x1b0
/* 801EDBAC 001EAAEC  90 1F 01 78 */	stw r0, 0x178(r31)
.L_801EDBB0:
/* 801EDBB0 001EAAF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801EDBB4 001EAAF4  7F E3 FB 78 */	mr r3, r31
/* 801EDBB8 001EAAF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801EDBBC 001EAAFC  7C 08 03 A6 */	mtlr r0
/* 801EDBC0 001EAB00  38 21 00 10 */	addi r1, r1, 0x10
/* 801EDBC4 001EAB04  4E 80 00 20 */	blr 
.endfn doNew__Q34Game15ItemBigFountain3MgrFv

.fn generatorGetID__Q34Game15ItemBigFountain3MgrFv, weak
/* 801EDBC8 001EAB08  3C 60 77 61 */	lis r3, 0x77617270@ha
/* 801EDBCC 001EAB0C  38 63 72 70 */	addi r3, r3, 0x77617270@l
/* 801EDBD0 001EAB10  4E 80 00 20 */	blr 
.endfn generatorGetID__Q34Game15ItemBigFountain3MgrFv

.fn sound_culling__Q34Game15ItemBigFountain4ItemFv, weak
/* 801EDBD4 001EAB14  38 60 00 00 */	li r3, 0
/* 801EDBD8 001EAB18  4E 80 00 20 */	blr 
.endfn sound_culling__Q34Game15ItemBigFountain4ItemFv

.fn getCreatureName__Q34Game15ItemBigFountain4ItemFv, weak
/* 801EDBDC 001EAB1C  3C 60 80 48 */	lis r3, lbl_80481218@ha
/* 801EDBE0 001EAB20  38 63 12 18 */	addi r3, r3, lbl_80481218@l
/* 801EDBE4 001EAB24  4E 80 00 20 */	blr 
.endfn getCreatureName__Q34Game15ItemBigFountain4ItemFv

.fn "doAI__Q24Game98FSMItem<Q34Game15ItemBigFountain4Item,Q34Game15ItemBigFountain3FSM,Q34Game15ItemBigFountain5State>Fv", weak
/* 801EDBE8 001EAB28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801EDBEC 001EAB2C  7C 08 02 A6 */	mflr r0
/* 801EDBF0 001EAB30  7C 64 1B 78 */	mr r4, r3
/* 801EDBF4 001EAB34  90 01 00 14 */	stw r0, 0x14(r1)
/* 801EDBF8 001EAB38  80 63 01 D8 */	lwz r3, 0x1d8(r3)
/* 801EDBFC 001EAB3C  81 83 00 00 */	lwz r12, 0(r3)
/* 801EDC00 001EAB40  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801EDC04 001EAB44  7D 89 03 A6 */	mtctr r12
/* 801EDC08 001EAB48  4E 80 04 21 */	bctrl 
/* 801EDC0C 001EAB4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801EDC10 001EAB50  7C 08 03 A6 */	mtlr r0
/* 801EDC14 001EAB54  38 21 00 10 */	addi r1, r1, 0x10
/* 801EDC18 001EAB58  4E 80 00 20 */	blr 
.endfn "doAI__Q24Game98FSMItem<Q34Game15ItemBigFountain4Item,Q34Game15ItemBigFountain3FSM,Q34Game15ItemBigFountain5State>Fv"

.fn canRide__Q34Game15ItemBigFountain8OutStateFv, weak
/* 801EDC1C 001EAB5C  38 60 00 01 */	li r3, 1
/* 801EDC20 001EAB60  4E 80 00 20 */	blr 
.endfn canRide__Q34Game15ItemBigFountain8OutStateFv

.fn "onKeyEvent__Q24Game98FSMItem<Q34Game15ItemBigFountain4Item,Q34Game15ItemBigFountain3FSM,Q34Game15ItemBigFountain5State>FRCQ28SysShape8KeyEvent", weak
/* 801EDC24 001EAB64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801EDC28 001EAB68  7C 08 02 A6 */	mflr r0
/* 801EDC2C 001EAB6C  7C 66 1B 78 */	mr r6, r3
/* 801EDC30 001EAB70  7C 85 23 78 */	mr r5, r4
/* 801EDC34 001EAB74  90 01 00 14 */	stw r0, 0x14(r1)
/* 801EDC38 001EAB78  80 63 01 DC */	lwz r3, 0x1dc(r3)
/* 801EDC3C 001EAB7C  28 03 00 00 */	cmplwi r3, 0
/* 801EDC40 001EAB80  41 82 00 18 */	beq .L_801EDC58
/* 801EDC44 001EAB84  81 83 00 00 */	lwz r12, 0(r3)
/* 801EDC48 001EAB88  7C C4 33 78 */	mr r4, r6
/* 801EDC4C 001EAB8C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801EDC50 001EAB90  7D 89 03 A6 */	mtctr r12
/* 801EDC54 001EAB94  4E 80 04 21 */	bctrl 
.L_801EDC58:
/* 801EDC58 001EAB98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801EDC5C 001EAB9C  7C 08 03 A6 */	mtlr r0
/* 801EDC60 001EABA0  38 21 00 10 */	addi r1, r1, 0x10
/* 801EDC64 001EABA4  4E 80 00 20 */	blr 
.endfn "onKeyEvent__Q24Game98FSMItem<Q34Game15ItemBigFountain4Item,Q34Game15ItemBigFountain3FSM,Q34Game15ItemBigFountain5State>FRCQ28SysShape8KeyEvent"

.fn "onDamage__Q24Game40ItemState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4Itemf", weak
/* 801EDC68 001EABA8  4E 80 00 20 */	blr 
.endfn "onDamage__Q24Game40ItemState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4Itemf"

.fn "onBounce__Q24Game40ItemState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemPQ23Sys8Triangle", weak
/* 801EDC6C 001EABAC  4E 80 00 20 */	blr 
.endfn "onBounce__Q24Game40ItemState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemPQ23Sys8Triangle"

.fn "onPlatCollision__Q24Game40ItemState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemRQ24Game9PlatEvent", weak
/* 801EDC70 001EABB0  4E 80 00 20 */	blr 
.endfn "onPlatCollision__Q24Game40ItemState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemRQ24Game9PlatEvent"

.fn "onCollision__Q24Game40ItemState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemRQ24Game9CollEvent", weak
/* 801EDC74 001EABB4  4E 80 00 20 */	blr 
.endfn "onCollision__Q24Game40ItemState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemRQ24Game9CollEvent"

.fn "init__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemPQ24Game8StateArg", weak
/* 801EDC78 001EABB8  4E 80 00 20 */	blr 
.endfn "init__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemPQ24Game8StateArg"

.fn "exec__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4Item", weak
/* 801EDC7C 001EABBC  4E 80 00 20 */	blr 
.endfn "exec__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4Item"

.fn "cleanup__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4Item", weak
/* 801EDC80 001EABC0  4E 80 00 20 */	blr 
.endfn "cleanup__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4Item"

.fn "resume__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4Item", weak
/* 801EDC84 001EABC4  4E 80 00 20 */	blr 
.endfn "resume__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4Item"

.fn "restart__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4Item", weak
/* 801EDC88 001EABC8  4E 80 00 20 */	blr 
.endfn "restart__Q24Game39FSMState<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4Item"

.fn "init__Q24Game43StateMachine<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4Item", weak
/* 801EDC8C 001EABCC  4E 80 00 20 */	blr 
.endfn "init__Q24Game43StateMachine<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4Item"

.fn "exec__Q24Game43StateMachine<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4Item", weak
/* 801EDC90 001EABD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801EDC94 001EABD4  7C 08 02 A6 */	mflr r0
/* 801EDC98 001EABD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801EDC9C 001EABDC  80 64 01 DC */	lwz r3, 0x1dc(r4)
/* 801EDCA0 001EABE0  28 03 00 00 */	cmplwi r3, 0
/* 801EDCA4 001EABE4  41 82 00 14 */	beq .L_801EDCB8
/* 801EDCA8 001EABE8  81 83 00 00 */	lwz r12, 0(r3)
/* 801EDCAC 001EABEC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801EDCB0 001EABF0  7D 89 03 A6 */	mtctr r12
/* 801EDCB4 001EABF4  4E 80 04 21 */	bctrl 
.L_801EDCB8:
/* 801EDCB8 001EABF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801EDCBC 001EABFC  7C 08 03 A6 */	mtlr r0
/* 801EDCC0 001EAC00  38 21 00 10 */	addi r1, r1, 0x10
/* 801EDCC4 001EAC04  4E 80 00 20 */	blr 
.endfn "exec__Q24Game43StateMachine<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4Item"

.fn "create__Q24Game43StateMachine<Q34Game15ItemBigFountain4Item>Fi", weak
/* 801EDCC8 001EAC08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801EDCCC 001EAC0C  7C 08 02 A6 */	mflr r0
/* 801EDCD0 001EAC10  90 01 00 14 */	stw r0, 0x14(r1)
/* 801EDCD4 001EAC14  38 00 00 00 */	li r0, 0
/* 801EDCD8 001EAC18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801EDCDC 001EAC1C  7C 7F 1B 78 */	mr r31, r3
/* 801EDCE0 001EAC20  90 83 00 0C */	stw r4, 0xc(r3)
/* 801EDCE4 001EAC24  90 03 00 08 */	stw r0, 8(r3)
/* 801EDCE8 001EAC28  80 03 00 0C */	lwz r0, 0xc(r3)
/* 801EDCEC 001EAC2C  54 03 10 3A */	slwi r3, r0, 2
/* 801EDCF0 001EAC30  4B E3 62 BD */	bl __nwa__FUl
/* 801EDCF4 001EAC34  90 7F 00 04 */	stw r3, 4(r31)
/* 801EDCF8 001EAC38  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 801EDCFC 001EAC3C  54 03 10 3A */	slwi r3, r0, 2
/* 801EDD00 001EAC40  4B E3 62 AD */	bl __nwa__FUl
/* 801EDD04 001EAC44  90 7F 00 10 */	stw r3, 0x10(r31)
/* 801EDD08 001EAC48  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 801EDD0C 001EAC4C  54 03 10 3A */	slwi r3, r0, 2
/* 801EDD10 001EAC50  4B E3 62 9D */	bl __nwa__FUl
/* 801EDD14 001EAC54  90 7F 00 14 */	stw r3, 0x14(r31)
/* 801EDD18 001EAC58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801EDD1C 001EAC5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801EDD20 001EAC60  7C 08 03 A6 */	mtlr r0
/* 801EDD24 001EAC64  38 21 00 10 */	addi r1, r1, 0x10
/* 801EDD28 001EAC68  4E 80 00 20 */	blr 
.endfn "create__Q24Game43StateMachine<Q34Game15ItemBigFountain4Item>Fi"

.fn "transit__Q24Game43StateMachine<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemiPQ24Game8StateArg", weak
/* 801EDD2C 001EAC6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801EDD30 001EAC70  7C 08 02 A6 */	mflr r0
/* 801EDD34 001EAC74  90 01 00 24 */	stw r0, 0x24(r1)
/* 801EDD38 001EAC78  54 A0 10 3A */	slwi r0, r5, 2
/* 801EDD3C 001EAC7C  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 801EDD40 001EAC80  7C 7B 1B 78 */	mr r27, r3
/* 801EDD44 001EAC84  7C 9C 23 78 */	mr r28, r4
/* 801EDD48 001EAC88  7C DD 33 78 */	mr r29, r6
/* 801EDD4C 001EAC8C  83 C4 01 DC */	lwz r30, 0x1dc(r4)
/* 801EDD50 001EAC90  80 63 00 14 */	lwz r3, 0x14(r3)
/* 801EDD54 001EAC94  28 1E 00 00 */	cmplwi r30, 0
/* 801EDD58 001EAC98  7F E3 00 2E */	lwzx r31, r3, r0
/* 801EDD5C 001EAC9C  41 82 00 20 */	beq .L_801EDD7C
/* 801EDD60 001EACA0  7F C3 F3 78 */	mr r3, r30
/* 801EDD64 001EACA4  81 9E 00 00 */	lwz r12, 0(r30)
/* 801EDD68 001EACA8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801EDD6C 001EACAC  7D 89 03 A6 */	mtctr r12
/* 801EDD70 001EACB0  4E 80 04 21 */	bctrl 
/* 801EDD74 001EACB4  80 1E 00 04 */	lwz r0, 4(r30)
/* 801EDD78 001EACB8  90 1B 00 18 */	stw r0, 0x18(r27)
.L_801EDD7C:
/* 801EDD7C 001EACBC  80 1B 00 0C */	lwz r0, 0xc(r27)
/* 801EDD80 001EACC0  7C 1F 00 00 */	cmpw r31, r0
/* 801EDD84 001EACC4  41 80 00 08 */	blt .L_801EDD8C
.L_801EDD88:
/* 801EDD88 001EACC8  48 00 00 00 */	b .L_801EDD88
.L_801EDD8C:
/* 801EDD8C 001EACCC  80 7B 00 04 */	lwz r3, 4(r27)
/* 801EDD90 001EACD0  57 E0 10 3A */	slwi r0, r31, 2
/* 801EDD94 001EACD4  7F 84 E3 78 */	mr r4, r28
/* 801EDD98 001EACD8  7F A5 EB 78 */	mr r5, r29
/* 801EDD9C 001EACDC  7C 63 00 2E */	lwzx r3, r3, r0
/* 801EDDA0 001EACE0  90 7C 01 DC */	stw r3, 0x1dc(r28)
/* 801EDDA4 001EACE4  81 83 00 00 */	lwz r12, 0(r3)
/* 801EDDA8 001EACE8  81 8C 00 08 */	lwz r12, 8(r12)
/* 801EDDAC 001EACEC  7D 89 03 A6 */	mtctr r12
/* 801EDDB0 001EACF0  4E 80 04 21 */	bctrl 
/* 801EDDB4 001EACF4  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 801EDDB8 001EACF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801EDDBC 001EACFC  7C 08 03 A6 */	mtlr r0
/* 801EDDC0 001EAD00  38 21 00 20 */	addi r1, r1, 0x20
/* 801EDDC4 001EAD04  4E 80 00 20 */	blr 
.endfn "transit__Q24Game43StateMachine<Q34Game15ItemBigFountain4Item>FPQ34Game15ItemBigFountain4ItemiPQ24Game8StateArg"

.fn "registerState__Q24Game43StateMachine<Q34Game15ItemBigFountain4Item>FPQ24Game39FSMState<Q34Game15ItemBigFountain4Item>", weak
/* 801EDDC8 001EAD08  80 C3 00 08 */	lwz r6, 8(r3)
/* 801EDDCC 001EAD0C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 801EDDD0 001EAD10  7C 06 00 00 */	cmpw r6, r0
/* 801EDDD4 001EAD14  4C 80 00 20 */	bgelr 
/* 801EDDD8 001EAD18  80 A3 00 04 */	lwz r5, 4(r3)
/* 801EDDDC 001EAD1C  54 C0 10 3A */	slwi r0, r6, 2
/* 801EDDE0 001EAD20  7C 85 01 2E */	stwx r4, r5, r0
/* 801EDDE4 001EAD24  80 A4 00 04 */	lwz r5, 4(r4)
/* 801EDDE8 001EAD28  2C 05 00 00 */	cmpwi r5, 0
/* 801EDDEC 001EAD2C  41 80 00 10 */	blt .L_801EDDFC
/* 801EDDF0 001EAD30  80 03 00 0C */	lwz r0, 0xc(r3)
/* 801EDDF4 001EAD34  7C 05 00 00 */	cmpw r5, r0
/* 801EDDF8 001EAD38  41 80 00 0C */	blt .L_801EDE04
.L_801EDDFC:
/* 801EDDFC 001EAD3C  38 00 00 00 */	li r0, 0
/* 801EDE00 001EAD40  48 00 00 08 */	b .L_801EDE08
.L_801EDE04:
/* 801EDE04 001EAD44  38 00 00 01 */	li r0, 1
.L_801EDE08:
/* 801EDE08 001EAD48  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 801EDE0C 001EAD4C  4D 82 00 20 */	beqlr 
/* 801EDE10 001EAD50  90 64 00 08 */	stw r3, 8(r4)
/* 801EDE14 001EAD54  80 03 00 08 */	lwz r0, 8(r3)
/* 801EDE18 001EAD58  80 C4 00 04 */	lwz r6, 4(r4)
/* 801EDE1C 001EAD5C  80 A3 00 10 */	lwz r5, 0x10(r3)
/* 801EDE20 001EAD60  54 00 10 3A */	slwi r0, r0, 2
/* 801EDE24 001EAD64  7C C5 01 2E */	stwx r6, r5, r0
/* 801EDE28 001EAD68  80 04 00 04 */	lwz r0, 4(r4)
/* 801EDE2C 001EAD6C  80 A3 00 08 */	lwz r5, 8(r3)
/* 801EDE30 001EAD70  80 83 00 14 */	lwz r4, 0x14(r3)
/* 801EDE34 001EAD74  54 00 10 3A */	slwi r0, r0, 2
/* 801EDE38 001EAD78  7C A4 01 2E */	stwx r5, r4, r0
/* 801EDE3C 001EAD7C  80 83 00 08 */	lwz r4, 8(r3)
/* 801EDE40 001EAD80  38 04 00 01 */	addi r0, r4, 1
/* 801EDE44 001EAD84  90 03 00 08 */	stw r0, 8(r3)
/* 801EDE48 001EAD88  4E 80 00 20 */	blr 
.endfn "registerState__Q24Game43StateMachine<Q34Game15ItemBigFountain4Item>FPQ24Game39FSMState<Q34Game15ItemBigFountain4Item>"

.fn "getStateID__Q24Game98FSMItem<Q34Game15ItemBigFountain4Item,Q34Game15ItemBigFountain3FSM,Q34Game15ItemBigFountain5State>Fv", weak
/* 801EDE4C 001EAD8C  80 63 01 DC */	lwz r3, 0x1dc(r3)
/* 801EDE50 001EAD90  28 03 00 00 */	cmplwi r3, 0
/* 801EDE54 001EAD94  41 82 00 0C */	beq .L_801EDE60
/* 801EDE58 001EAD98  80 63 00 04 */	lwz r3, 4(r3)
/* 801EDE5C 001EAD9C  4E 80 00 20 */	blr 
.L_801EDE60:
/* 801EDE60 001EADA0  38 60 FF FF */	li r3, -1
/* 801EDE64 001EADA4  4E 80 00 20 */	blr 
.endfn "getStateID__Q24Game98FSMItem<Q34Game15ItemBigFountain4Item,Q34Game15ItemBigFountain3FSM,Q34Game15ItemBigFountain5State>Fv"

.fn "platCallback__Q24Game98FSMItem<Q34Game15ItemBigFountain4Item,Q34Game15ItemBigFountain3FSM,Q34Game15ItemBigFountain5State>FRQ24Game9PlatEvent", weak
/* 801EDE68 001EADA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801EDE6C 001EADAC  7C 08 02 A6 */	mflr r0
/* 801EDE70 001EADB0  7C 66 1B 78 */	mr r6, r3
/* 801EDE74 001EADB4  7C 85 23 78 */	mr r5, r4
/* 801EDE78 001EADB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801EDE7C 001EADBC  80 63 01 DC */	lwz r3, 0x1dc(r3)
/* 801EDE80 001EADC0  28 03 00 00 */	cmplwi r3, 0
/* 801EDE84 001EADC4  41 82 00 18 */	beq .L_801EDE9C
/* 801EDE88 001EADC8  81 83 00 00 */	lwz r12, 0(r3)
/* 801EDE8C 001EADCC  7C C4 33 78 */	mr r4, r6
/* 801EDE90 001EADD0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801EDE94 001EADD4  7D 89 03 A6 */	mtctr r12
/* 801EDE98 001EADD8  4E 80 04 21 */	bctrl 
.L_801EDE9C:
/* 801EDE9C 001EADDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801EDEA0 001EADE0  7C 08 03 A6 */	mtlr r0
/* 801EDEA4 001EADE4  38 21 00 10 */	addi r1, r1, 0x10
/* 801EDEA8 001EADE8  4E 80 00 20 */	blr 
.endfn "platCallback__Q24Game98FSMItem<Q34Game15ItemBigFountain4Item,Q34Game15ItemBigFountain3FSM,Q34Game15ItemBigFountain5State>FRQ24Game9PlatEvent"

.fn "collisionCallback__Q24Game98FSMItem<Q34Game15ItemBigFountain4Item,Q34Game15ItemBigFountain3FSM,Q34Game15ItemBigFountain5State>FRQ24Game9CollEvent", weak
/* 801EDEAC 001EADEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801EDEB0 001EADF0  7C 08 02 A6 */	mflr r0
/* 801EDEB4 001EADF4  7C 66 1B 78 */	mr r6, r3
/* 801EDEB8 001EADF8  7C 85 23 78 */	mr r5, r4
/* 801EDEBC 001EADFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801EDEC0 001EAE00  80 63 01 DC */	lwz r3, 0x1dc(r3)
/* 801EDEC4 001EAE04  28 03 00 00 */	cmplwi r3, 0
/* 801EDEC8 001EAE08  41 82 00 18 */	beq .L_801EDEE0
/* 801EDECC 001EAE0C  81 83 00 00 */	lwz r12, 0(r3)
/* 801EDED0 001EAE10  7C C4 33 78 */	mr r4, r6
/* 801EDED4 001EAE14  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 801EDED8 001EAE18  7D 89 03 A6 */	mtctr r12
/* 801EDEDC 001EAE1C  4E 80 04 21 */	bctrl 
.L_801EDEE0:
/* 801EDEE0 001EAE20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801EDEE4 001EAE24  7C 08 03 A6 */	mtlr r0
/* 801EDEE8 001EAE28  38 21 00 10 */	addi r1, r1, 0x10
/* 801EDEEC 001EAE2C  4E 80 00 20 */	blr 
.endfn "collisionCallback__Q24Game98FSMItem<Q34Game15ItemBigFountain4Item,Q34Game15ItemBigFountain3FSM,Q34Game15ItemBigFountain5State>FRQ24Game9CollEvent"

.fn "bounceCallback__Q24Game98FSMItem<Q34Game15ItemBigFountain4Item,Q34Game15ItemBigFountain3FSM,Q34Game15ItemBigFountain5State>FPQ23Sys8Triangle", weak
/* 801EDEF0 001EAE30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801EDEF4 001EAE34  7C 08 02 A6 */	mflr r0
/* 801EDEF8 001EAE38  7C 66 1B 78 */	mr r6, r3
/* 801EDEFC 001EAE3C  7C 85 23 78 */	mr r5, r4
/* 801EDF00 001EAE40  90 01 00 14 */	stw r0, 0x14(r1)
/* 801EDF04 001EAE44  80 63 01 DC */	lwz r3, 0x1dc(r3)
/* 801EDF08 001EAE48  28 03 00 00 */	cmplwi r3, 0
/* 801EDF0C 001EAE4C  41 82 00 18 */	beq .L_801EDF24
/* 801EDF10 001EAE50  81 83 00 00 */	lwz r12, 0(r3)
/* 801EDF14 001EAE54  7C C4 33 78 */	mr r4, r6
/* 801EDF18 001EAE58  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 801EDF1C 001EAE5C  7D 89 03 A6 */	mtctr r12
/* 801EDF20 001EAE60  4E 80 04 21 */	bctrl 
.L_801EDF24:
/* 801EDF24 001EAE64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801EDF28 001EAE68  7C 08 03 A6 */	mtlr r0
/* 801EDF2C 001EAE6C  38 21 00 10 */	addi r1, r1, 0x10
/* 801EDF30 001EAE70  4E 80 00 20 */	blr 
.endfn "bounceCallback__Q24Game98FSMItem<Q34Game15ItemBigFountain4Item,Q34Game15ItemBigFountain3FSM,Q34Game15ItemBigFountain5State>FPQ23Sys8Triangle"

.fn __sinit_itemBigFountain_cpp, local
/* 801EDF34 001EAE74  3C 80 80 51 */	lis r4, __float_nan@ha
/* 801EDF38 001EAE78  38 00 FF FF */	li r0, -1
/* 801EDF3C 001EAE7C  C0 04 48 B0 */	lfs f0, __float_nan@l(r4)
/* 801EDF40 001EAE80  3C 60 80 4C */	lis r3, govNAN___Q24Game5P2JST@ha
/* 801EDF44 001EAE84  90 0D 94 A8 */	stw r0, gu32NAN___Q24Game5P2JST@sda21(r13)
/* 801EDF48 001EAE88  D4 03 AA 08 */	stfsu f0, govNAN___Q24Game5P2JST@l(r3)
/* 801EDF4C 001EAE8C  D0 0D 94 AC */	stfs f0, gfNAN___Q24Game5P2JST@sda21(r13)
/* 801EDF50 001EAE90  D0 03 00 04 */	stfs f0, 4(r3)
/* 801EDF54 001EAE94  D0 03 00 08 */	stfs f0, 8(r3)
/* 801EDF58 001EAE98  4E 80 00 20 */	blr 
.endfn __sinit_itemBigFountain_cpp

.fn "@376@onKeyEvent__Q24Game98FSMItem<Q34Game15ItemBigFountain4Item,Q34Game15ItemBigFountain3FSM,Q34Game15ItemBigFountain5State>FRCQ28SysShape8KeyEvent", weak
/* 801EDF5C 001EAE9C  38 63 FE 88 */	addi r3, r3, -376
/* 801EDF60 001EAEA0  4B FF FC C4 */	b "onKeyEvent__Q24Game98FSMItem<Q34Game15ItemBigFountain4Item,Q34Game15ItemBigFountain3FSM,Q34Game15ItemBigFountain5State>FRCQ28SysShape8KeyEvent"
.endfn "@376@onKeyEvent__Q24Game98FSMItem<Q34Game15ItemBigFountain4Item,Q34Game15ItemBigFountain3FSM,Q34Game15ItemBigFountain5State>FRCQ28SysShape8KeyEvent"

.fn "@376@onKeyEvent__Q34Game15ItemBigFountain4ItemFRCQ28SysShape8KeyEvent", weak
/* 801EDF64 001EAEA4  38 63 FE 88 */	addi r3, r3, -376
/* 801EDF68 001EAEA8  4B FF F5 80 */	b onKeyEvent__Q34Game15ItemBigFountain4ItemFRCQ28SysShape8KeyEvent
.endfn "@376@onKeyEvent__Q34Game15ItemBigFountain4ItemFRCQ28SysShape8KeyEvent"

.fn "@48@__dt__Q34Game15ItemBigFountain3MgrFv", weak
/* 801EDF6C 001EAEAC  38 63 FF D0 */	addi r3, r3, -48
/* 801EDF70 001EAEB0  4B FF FA 3C */	b __dt__Q34Game15ItemBigFountain3MgrFv
.endfn "@48@__dt__Q34Game15ItemBigFountain3MgrFv"
