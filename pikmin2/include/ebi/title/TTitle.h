#ifndef _EBI_TITLE_TTITLE_H
#define _EBI_TITLE_TTITLE_H

#include "FogMgr.h"
#include "Light.h"
#include "Camera.h"
#include "Parameters.h"
#include "BaseParm.h"
#include "ebi/title/TObjects.h"
#include "ebi/title/Entities/TPikmin.h"
#include "ebi/title/Entities/TChappy.h"
#include "ebi/title/Entities/TKogane.h"
#include "ebi/title/TCoordMgr.h"
#include "Viewport.h"
#include "JSystem/JKernel/JKRArchive.h"

struct Controller;

namespace ebi {
namespace title {
struct TTitleParameters : public Parameters {
	TTitleParameters()
	    // shoutouts to Scruffys video: https://youtu.be/Z11RFTE_vow
	    : Parameters(nullptr, "TTitleParameters")
	    , mBoundsMinX(this, 'tp04', "���͈�X�ŏ�", -400.0f, -2000.0f, 2000.0f)
	    , mBoundsMaxX(this, 'tp05', "���͈�X�ő�", 400.0f, -2000.0f, 2000.0f)
	    , mBoundsMinY(this, 'tp06', "���͈�Y�ŏ�", -250.0f, -2000.0f, 2000.0f)
	    , mBoundsMaxY(this, 'tp07', "���͈�Y�ő�", 340.0f, -2000.0f, 2000.0f)
	    , mPikiScatterOriginX(this, 'tp08', "�s�N�~�����U���S���WX", 0.0f, -640.0f, 640.0f)
	    , mPikiScatterOriginY(this, 'tp09', "�s�N�~�����U���S���WY", 0.0f, -480.0f, 480.0f)
	    , mMinPikminScatterRadius(this, 'tp10', "�s�N�~�����U���a�ŏ�", 500.0f, 0.0f, 1000.0f)
	    , mMaxPikminScatterRadius(this, 'tp11', "�s�N�~�����U���a�ő�(�I�u�W�F�N�g�z�u���E���a)", 600.0f, 0.0f, 1000.0f)
	    , mWindProbability(this, 'tp13', "��������͈̗͂���", 30.0f, 0.0f, 100.0f)
	    , mPlantMoveDuration(this, 'tp50', "BG����Ԏ���(�b)", 8.0f, 0.0f, 100.0f)
	    , mBoidDurationDisperse(this, 'tp15', "BOID1��Ԏ���(�b)", 3.0f, 0.0f, 60.0f)
	    , mBoidDurationRegroup(this, 'tp16', "BOID2��Ԏ���(�b)", 3.0f, 0.0f, 60.0f)
	    , mBoidDurationSwirl(this, 'tp17', "BOID3��Ԏ���(�b)", 10.0f, 0.0f, 60.0f)
	    , mWindMoveDuration(this, 'tp19', "����Ԏ���(�b)", 3.0f, 0.0f, 60.0f)
	    , mEnemyStayDuration(this, 'tp20', "�G��Ԏ���(�b)", 10.0f, 0.0f, 60.0f)
	    , mPressStartDelay(this, 'tp21', "PressStart�J�n����(�b)", 2.0f, 0.0f, 60.0f)
	    , mCanOpenMenuDelay(this, 'tp22', "�L�[�󂯂��J�n����(�b)", 3.5f, 0.0f, 60.0f)
	{
	}

	// _00-_0C = Parameters
	Parm<f32> mBoundsMinX;             // _0C tp04
	Parm<f32> mBoundsMaxX;             // _34 tp05
	Parm<f32> mBoundsMinY;             // _5C tp06
	Parm<f32> mBoundsMaxY;             // _84 tp07
	Parm<f32> mPikiScatterOriginX;     // _AC tp08
	Parm<f32> mPikiScatterOriginY;     // _D4 tp09
	Parm<f32> mMinPikminScatterRadius; // _FC tp10
	Parm<f32> mMaxPikminScatterRadius; // _124 tp11
	Parm<f32> mWindProbability;        // _14C tp13
	Parm<f32> mPlantMoveDuration;      // _174 tp50
	Parm<f32> mBoidDurationDisperse;   // _19C tp15
	Parm<f32> mBoidDurationRegroup;    // _1C4 tp16
	Parm<f32> mBoidDurationSwirl;      // _1EC tp17
	Parm<f32> mWindMoveDuration;       // _214
	Parm<f32> mEnemyStayDuration;      // _23C
	Parm<f32> mPressStartDelay;        // _264
	Parm<f32> mCanOpenMenuDelay;       // _28C tp22
};

struct TTitleCameraMgr : public LookAtCamera {
	struct Parms : public Parameters {
		Parms()
		    : Parameters(nullptr, "TTitleCameraParameters")
		    , mYOffset(this, 'cam1', "�J�����������S", 15.0f, -1000.0f, 10000.0f) // "camera distance logo"
		    , mFOVY(this, 'cam4', "Fovy", 35.0f, 1.0f, 180.0f)
		{
		}

		Parm<f32> mYOffset; // _1A4, cam1
		Parm<f32> mFOVY;    // _1CC, cam4
	};

	virtual ~TTitleCameraMgr() { } // _08 (weak)
	virtual void read(Stream&);    // _38 (weak)

	void update();

	// _00      = VTBL
	// _00-_198 = LookAtCamera
	Parms mParms; // _198
};

/**
 * @size{0x140}
 */
struct TTitleFogMgr : public FogMgr {
	struct Parms : public Parameters {
		Parms()
		    : Parameters(nullptr, "TTitleFogParameters")
		    , mIsFogActive(this, 'fg10', "�t�H�O�L������", true, false, true)
		    , mStartDist(this, 'fg00', "start z", 100.0f, 0.0f, 1024.0f)
		    , mEndDist(this, 'fg01', "end z", 2000.0f, 0.0f, 12800.0f)
		    , mColR(this, 'fg02', "�F�@R", 255, 0, 255)
		    , mColG(this, 'fg03', "�F�@G", 255, 0, 255)
		    , mColB(this, 'fg04', "�F�@B", 255, 0, 255)
		    , mColA(this, 'fg05', "�F�@A", 255, 0, 255)
		{
		}

		// fabricated
		// offsets relative to TTitleFogMgr
		Parm<bool> mIsFogActive; // _34
		Parm<f32> mStartDist;    // _50
		Parm<f32> mEndDist;      // _78
		Parm<int> mColR;         // _A0
		Parm<int> mColG;         // _C8
		Parm<int> mColB;         // _F0
		Parm<int> mColA;         // _118
	};

	virtual ~TTitleFogMgr() { } // _08 (weak)

	void setGX(Camera& camera);
	void loadSettingFile(JKRArchive* archive, char* file);

	// _00        = VTBL
	// _00-_28    = FogMgr
	Parms mParms; // _28
};

struct TTitleLightSetting {
	TTitleLightSetting() { }

	struct TAmbParms : public Parameters {
		inline TAmbParms()
		    : Parameters(nullptr, "TAmbParms")
		    , mRed(this, 'tl00', "�A���r�G���g�FR", 0, 0, 255)
		    , mGreen(this, 'tl01', "�A���r�G���g�FG", 0, 0, 255)
		    , mBlue(this, 'tl02', "�A���r�G���g�FB", 0, 0, 255)
		    , mAlpha(this, 'tl03', "�A���r�G���g�FA", 0, 0, 255)
		{
		}

		Parm<int> mRed;   // _0C
		Parm<int> mGreen; // _34
		Parm<int> mBlue;  // _5C
		Parm<int> mAlpha; // _84
	};

	struct TMainParms : public Parameters {
		TMainParms()
		    : Parameters(nullptr, "TMainParms")
		    , mLightColR(this, 'tl04', "���C�g�FR", 255, 0, 255)
		    , mLightColG(this, 'tl05', "���C�g�FG", 255, 0, 255)
		    , mLightColB(this, 'tl06', "���C�g�FB", 255, 0, 255)
		    , mLightColA(this, 'tl07', "���C�g�FA", 255, 0, 255)
		    , mPosX(this, 'tl50', "�ʒuX", 0.0f, -10000.0f, 10000.0f)
		    , mPosY(this, 'tl51', "�ʒuY", 1000.0f, -10000.0f, 50000.0f)
		    , mPosZ(this, 'tl52', "�ʒuZ", 0.0f, -10000.0f, 10000.0f)
		    , mRotX(this, 'tl53', "����X", 0.0f, -1.0f, 1.0f)
		    , mRotY(this, 'tl54', "����Y", -1.0f, -1.0f, 1.0f)
		    , mRotZ(this, 'tl55', "����Z", 0.0f, -1.0f, 1.0f)
		    , mLightRange(this, 'tl56', "��������-����", 10000.0f, 1.0f, 50000.0f)
		    , mLightBrightness(this, 'tl57', "��������-���邳", 1.0f, 0.0f, 1.0f)
		    , mCutoffAngle(this, 'tl58', "�J�b�g�I�t�p�x", 25.0f, 1.0f, 180.0f)
		{
		}

		Parm<int> mLightColR;       // _0C, _BC
		Parm<int> mLightColG;       // _34, _E4
		Parm<int> mLightColB;       // _5C, _10C
		Parm<int> mLightColA;       // _84, _134
		Parm<f32> mPosX;            // _AC, _15C
		Parm<f32> mPosY;            // _D4, _184
		Parm<f32> mPosZ;            // _FC, _1AC
		Parm<f32> mRotX;            // _124, _1D4
		Parm<f32> mRotY;            // _14C, _1FC
		Parm<f32> mRotZ;            // _174, _224
		Parm<f32> mLightRange;      // _19C, _24C
		Parm<f32> mLightBrightness; // _1C4, _274
		Parm<f32> mCutoffAngle;     // _1EC, _29C
	};

	struct TSpecParms : public Parameters {
		TSpecParms()
		    : Parameters(nullptr, "TSpecParms")
		    , mLightColR(this, 'sp04', "���C�g�FR", 255, 0, 255)
		    , mLightColG(this, 'sp05', "���C�g�FG", 255, 0, 255)
		    , mLightColB(this, 'sp06', "���C�g�FB", 255, 0, 255)
		    , mLightColA(this, 'sp07', "���C�g�FA", 255, 0, 255)
		    , mRotX(this, 'sp53', "����X", 0.0f, -1.0f, 1.0f)
		    , mRotY(this, 'sp54', "����Y", -1.0f, -1.0f, 1.0f)
		    , mRotZ(this, 'sp55', "����Z", 0.0f, -1.0f, 1.0f)
		    , mGlossAmount(this, 'sp56', "����", 64.0f, 0.0f, 512.0f) // Luster?
		{
		}

		Parm<int> mLightColR;   // _0C, _2D4
		Parm<int> mLightColG;   // _34, _2FC
		Parm<int> mLightColB;   // _5C, _324
		Parm<int> mLightColA;   // _84, _34C
		Parm<f32> mRotX;        // _AC, _374
		Parm<f32> mRotY;        // _D4, _39C
		Parm<f32> mRotZ;        // _FC, _3C4
		Parm<f32> mGlossAmount; // _124, _3EC
	};

	TAmbParms mAmbParms;   // _00
	TMainParms mMainParms; // _B0
	TSpecParms mSpecParms; // _2C8
};

struct TTitleLightMgr : public LightMgr {
	TTitleLightMgr()
	    : LightMgr("LightMgr")
	    , mLightObjMain("���C�����C�g", GX_LIGHT0, TYPE_2, JUtility::TColor(255, 255, 255, 255))
	    , mLightObjSpec("�X�y�L�������C�g", GX_LIGHT7, TYPE_4, JUtility::TColor(255, 255, 255, 255))
	    , mSetting()
	{
		registLightObj(&mLightObjMain);
		registLightObj(&mLightObjSpec);
	}

	virtual ~TTitleLightMgr() { } // _08 (weak)
	virtual void update();        // _10

	void loadSettingFile(JKRArchive*, char*);
	void setParam_();
	void setCameraMtx(Mtx);

	inline void setRefValues(f32 dist, f32 brightness, f32 angle)
	{
		mLightObjMain.mRefDistance   = dist;
		mLightObjMain.mRefBrightness = brightness;
		mLightObjMain.mCutoffAngle   = angle;
	}

	// _00     = VTBL
	// _00-_50 = LightMgr
	LightObj mLightObjMain;      // _50
	LightObj mLightObjSpec;      // _A8
	TTitleLightSetting mSetting; // _100
};

struct TTitleMgr : public CNode, JKRDisposer {
	enum enumState { UNKNOWN, STATE1, StartWind, Enemy, BoidDisperse, BoidRegroup, BoidSwirl };

	enum levelSetting { Spring, Summer, Autumn, Winter };

	TTitleMgr();

	inline bool controllerOK()
	{
		if (mCounterControl == 0) {
			return true;
		}
		return false;
	}

	inline bool pressStartOK()
	{
		if (mCounterPressStart == 0) {
			return true;
		}
		return false;
	}

	virtual ~TTitleMgr(); // _08 (weak)

	static void globalInstance();
	static TTitleMgr* Instance();
	static void deleteInstance();
	void init();
	void setLogo();
	void loadResource();
	void initAfterLoadRes();
	void setController(Controller*);
	bool inField(TObjBase*);
	bool inViewField(TObjBase*);
	bool isInViewField(TObjBase*);
	bool isOutViewField(Vector2f&, f32);
	bool isOutViewField(TObjBase*);
	Vector2f getPosOutOfViewField();
	void start();
	bool breakup();
	bool startKogane();
	bool startChappy();
	bool boidToAssemble(long);
	bool isControllerOK();
	bool isPressStart();
	void startState(enumState);
	bool update();
	void updateState();
	void checkEncounter_();
	void draw();
	void readTitleParam(JKRArchive*, char*);
	void setDestToPiki(long);
	void setPosToPiki(long);
	Vector2f setStartPosToPiki();
	void calcBreakupDestination();
	void calcDestination(long);
	bool isAssemble();
	void setDrawBufferToJ3DSys();
	void inField(Vector2f&);
	void inViewField(Vector2f&, f32);
	void isInViewField(Vector2f&, f32);
	void windBlow();
	void boid3ToAssemble();
	void isAnyKey();
	void showInfo(long, long, long, long);

	// _00     = VTBL
	// _00-_18 = CNode
	// JKRDisposer mDisposer;        // _18
	TMapBase mMapBase;            // _30
	TBGEnemyBase mBgEnemyBase;    // _A4
	TBlackPlane mBlackPlane;      // _F0
	Pikmin::TMgr mPikminMgr;      // _154
	Kogane::TMgr mKoganeMgr;      // _AE4
	Chappy::TMgr mChappyMgr;      // _CF4
	u8 _F54;                      // _F54
	int mState;                   // _F58
	int mLevelSetting;            // _F5C
	u32 mCounterCommon;           // _F60
	u32 mCounterCommonMax;        // _F64
	u32 mCounter2;                // _F68
	u32 mCounter2Max;             // _F6C
	u8 _F70;                      // _F70
	u8 _F71;                      // _F71
	u32 mCounterControl;          // _F74
	u32 mCounterControlMax;       // _F78
	u32 mCounterPressStart;       // _F7C
	u32 mCounterPressStartMax;    // _F80
	Vector2f mPikiPosList[500];   // _F84
	TCoordMgr mCoordMgr[2];       // _1F24, 0 = main, 1 = sub
	Controller* mController;      // _401C
	Viewport mViewport;           // _4020
	TTitleCameraMgr mCameraMgr;   // _4078
	TTitleLightMgr mLightMgr;     // _4270
	TTitleFogMgr mFogMgr;         // _4788
	J3DDrawBuffer* mDrawBufferA;  // _48CC
	J3DDrawBuffer* mDrawBufferB;  // _48D0
	TTitleParameters mTitleParms; // _48D4

	static TTitleMgr* _instance;
};

extern TTitleMgr* titleMgr;
} // namespace title
} // namespace ebi

#endif