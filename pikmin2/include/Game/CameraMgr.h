#ifndef _GAME_CAMERAMGR_H
#define _GAME_CAMERAMGR_H

#include "CNode.h"
#include "BaseParm.h"
#include "Parameters.h"
#include "IDelegate.h"
#include "Vector3.h"
#include "Camera.h"

struct Viewport;

namespace Game {
struct CameraArg;
struct Navi;

struct CameraArg {
	u32 state;
};

struct CameraData {
	f32 mTargetDistance;      // _00
	f32 mCameraAngle;         // _04
	f32 mVerticalAngle;       // _08
	f32 mFieldofView;         // _0C
	f32 mNearZ;               // _10
	f32 mFarZ;                // _14
	Vector3f mLookAtPosition; // _18
	int mZoomLevel;           // _24
	int mSelAngle;            // _28
};

/**
 * @size{0x998}
 */
struct CameraParms : public Parameters {
	CameraParms()
	    : Parameters(nullptr, "CameraParms")
	    , mNearLowDist(this, 'cnld', "Near(Low)����", 600.0f, 10.0f, 5000.0f)          // 'near(low) distance'
	    , mNearLowAngle(this, 'cnla', "Near(Low)�A���O��", 20.0f, 0.0f, 90.0f)         // 'near(low) angle'
	    , mNearLowFOV(this, 'cnlf', "Near(Low)�e�n�u", 10.0f, 1.0f, 60.0f)             // 'near(low) fov'
	    , mNearLowOffset(this, 'cnlo', "Near(Low)�I�t�Z�b�g", 25.0f, 10.0f, 500.0f)    // 'near(low) offset'
	    , mNearLowWeight(this, 'cnlw', "Near(Low)�E�F�C�g", 1000.0f, 10.0f, 5000.0f)   // 'near(low) weight'
	    , mNearLowDetached(this, 'nldt', "Near(Low)Detached", 17.5f, 0.0f, 1000.0f)    // 'near(low) detached'
	    , mNearLowNear(this, 'nlnc', "Near(Low)Near", 1.0f, 1.0f, 12800.0f)            // 'near(low) near'
	    , mNearLowFar(this, 'nlfc', "Near(Low)Far", 12800.0f, 1.0f, 12800.0f)          // 'near(low) far'
	    , mMidLowDist(this, 'cmld', "Mid(Low)����", 600.0f, 10.0f, 5000.0f)            // 'mid(low) distance'
	    , mMidLowAngle(this, 'cmla', "Mid(Low)�A���O��", 21.0f, 0.0f, 90.0f)           // 'mid(low) angle'
	    , mMidLowFOV(this, 'cmlf', "Mid(Low)�e�n�u", 23.0f, 1.0f, 60.0f)               // 'mid(low) fov'
	    , mMidLowOffset(this, 'cmlo', "Mid(Low)�I�t�Z�b�g", 38.0f, 10.0f, 500.0f)      // 'mid(low) offset'
	    , mMidLowWeight(this, 'cmlw', "Mid(Low)�E�F�C�g", 500.0f, 10.0f, 5000.0f)      // 'mid(low) weight'
	    , mMidLowDetached(this, 'mldt', "Mid(Low)Detached", 55.0f, 0.0f, 1000.0f)      // 'mid(low) detached'
	    , mMidLowNear(this, 'mlnc', "Mid(Low)Near", 1.0f, 1.0f, 12800.0f)              // 'mid(low) near'
	    , mMidLowFar(this, 'mlfc', "Mid(Low)Far", 12800.0f, 1.0f, 12800.0f)            // 'mid(low) far'
	    , mFarLowDist(this, 'cfld', "Far(Low)����", 900.0f, 10.0f, 5000.0f)            // 'far(low) distance'
	    , mFarLowAngle(this, 'cfla', "Far(Low)�A���O��", 25.0f, 0.0f, 90.0f)           // 'far(low) angle'
	    , mFarLowFOV(this, 'cflf', "Far(Low)�e�n�u", 26.0f, 1.0f, 60.0f)               // 'far(low) fov'
	    , mFarLowOffset(this, 'cflo', "Far(Low)�I�t�Z�b�g", 33.0f, 10.0f, 500.0f)      // 'far(low) offset'
	    , mFarLowWeight(this, 'cflw', "Far(Low)�E�F�C�g", 400.0f, 10.0f, 5000.0f)      // 'far(low) weight'
	    , mFarLowDetached(this, 'fldt', "Far(Low)Detached", 130.0f, 0.0f, 1000.0f)     // 'far(low) detached'
	    , mFarLowNear(this, 'flnc', "Far(Low)Near", 1.0f, 1.0f, 12800.0f)              // 'far(low) near'
	    , mFarLowFar(this, 'flfc', "Far(Low)Far", 12800.0f, 1.0f, 12800.0f)            // 'far(low) far'
	    , mNearHighDist(this, 'cnhd', "Near(High)����", 900.0f, 10.0f, 5000.0f)        // 'near(high) distance'
	    , mNearHighAngle(this, 'cnha', "Near(High)�A���O��", 60.0f, 0.0f, 90.0f)       // 'near(high) angle'
	    , mNearHighFOV(this, 'cnhf', "Near(High)�e�n�u", 10.0f, 1.0f, 60.0f)           // 'near(high) fov'
	    , mNearHighOffset(this, 'cnho', "Near(High)�I�t�Z�b�g", 40.0f, 10.0f, 500.0f)  // 'near(high) offset'
	    , mNearHighWeight(this, 'cnhw', "Near(High)�E�F�C�g", 1000.0f, 10.0f, 5000.0f) // 'near(high) weight'
	    , mNearHighDetached(this, 'nhdt', "Near(High)Detached", 27.5f, 0.0f, 1000.0f)  // 'near(high) detached'
	    , mNearHighNear(this, 'nhnc', "Near(High)Near", 1.0f, 1.0f, 12800.0f)          // 'near(high) near'
	    , mNearHighFar(this, 'nhfc', "Near(High)Far", 12800.0f, 1.0f, 12800.0f)        // 'near(high) far'
	    , mMidHighDist(this, 'cmhd', "Mid(High)����", 900.0f, 10.0f, 5000.0f)          // 'mid(high) distance'
	    , mMidHighAngle(this, 'cmha', "Mid(High)�A���O��", 60.0f, 0.0f, 90.0f)         // 'mid(high) angle'
	    , mMidHighFOV(this, 'cmhf', "Mid(High)�e�n�u", 20.0f, 1.0f, 60.0f)             // 'mid(high) fov'
	    , mMidHighOffset(this, 'cmho', "Mid(High)�I�t�Z�b�g", 70.0f, 10.0f, 500.0f)    // 'mid(high) offset'
	    , mMidHighWeight(this, 'cmhw', "Mid(High)�E�F�C�g", 500.0f, 10.0f, 5000.0f)    // 'mid(high) weight'
	    , mMidHighDetached(this, 'mhdt', "Mid(High)Detached", 75.0f, 0.0f, 1000.0f)    // 'mid(high) detached'
	    , mMidHighNear(this, 'mhnc', "Mid(High)Near", 1.0f, 1.0f, 12800.0f)            // 'mid(high) near'
	    , mMidHighFar(this, 'mhfc', "Mid(High)Far", 12800.0f, 1.0f, 12800.0f)          // 'mid(high) far'
	    , mFarHighDist(this, 'cfhd', "Far(High)����", 1200.0f, 10.0f, 5000.0f)         // 'far(high) distance'
	    , mFarHighAngle(this, 'cfha', "Far(High)�A���O��", 60.0f, 0.0f, 90.0f)         // 'far(high) angle'
	    , mFarHighFOV(this, 'cfhf', "Far(High)�e�n�u", 30.0f, 1.0f, 60.0f)             // 'far(high) fov'
	    , mFarHighOffset(this, 'cfho', "Far(High)�I�t�Z�b�g", 100.0f, 10.0f, 500.0f)   // 'far(high) offset'
	    , mFarHighWeight(this, 'cfhw', "Far(High)�E�F�C�g", 200.0f, 10.0f, 5000.0f)    // 'far(high) weight'
	    , mFarHighDetached(this, 'fhdt', "Far(High)Detached", 165.0f, 0.0f, 1000.0f)   // 'far(high) detached'
	    , mFarHighNear(this, 'fhnc', "Far(High)Near", 1.0f, 1.0f, 12800.0f)            // 'far(high) near'
	    , mFarHighFar(this, 'fhfc', "Far(High)Far", 12800.0f, 1.0f, 12800.0f)          // 'far(high) far'
	    , mZoomDist(this, 'zmdt', "ZOOM ����", 250.0f, 10.0f, 5000.0f)                 // 'ZOOM distance'
	    , mZoomAngle(this, 'zman', "ZOOM �A���O��", 12.0f, 0.0f, 90.0f)                // 'ZOOM angle'
	    , mZoomFOV(this, 'zmfv', "ZOOM �e�n�u", 35.0f, 1.0f, 60.0f)                    // 'ZOOM fov'
	    , mCollRadius(this, 'clcr', "�R���W�������a", 300.0f, 0.0f, 500.0f)            // 'collision radius'
	    , mCollInterpSpeed(this, 'clms', "�R���W������ԑ��x", 0.005f, 0.001f, 1.0f)   // 'collision interpolation speed'
	    , mCollCorrHeight(this, 'clmh', "�R���W�����␳��", 5.0f, 0.0f, 100.0f)        // 'collision correction height'
	    , mNoCollHeight(this, 'clnh', "�R���W����������", 25.0f, 0.0f, 500.0f)         // 'no collision height'
	    , mSettingChangeSpeed(this, 'cpmd', "�ݒ�ύX���x", 0.1f, 0.0f, 1.0f)          // 'setting change speed'
	    , mRotSpeed(this, 'cmmt', "��]���x", 0.2f, 0.0f, 1.0f)                        // 'rotation speed'
	    , mRotFollowTime(this, 'cmft', "��]�Ǐ]����", 0.6f, 0.0f, 3.0f)               // 'rotation follow time'
	    , mRotAccel(this, 'cmta', "��]�����x", 0.005f, 0.0f, 1.0f)                    // 'rotation acceleration'
	    , mMaxRotSpeed(this, 'cmtm', "��]�ō����x", 0.9f, 0.0f, 5.0f)                 // 'max rotation speed'
	    , mRotDampRate(this, 'cmtb', "��]������", 0.85f, 0.0f, 1.0f)                  // 'rotation damping rate'
	{
	}

	Parm<f32> mNearLowDist;        // _00C, cnld
	Parm<f32> mNearLowAngle;       // _034, cnla
	Parm<f32> mNearLowFOV;         // _05C, cnlf
	Parm<f32> mNearLowOffset;      // _084, cnlo
	Parm<f32> mNearLowWeight;      // _0AC, cnlw
	Parm<f32> mNearLowDetached;    // _0D4, nldt
	Parm<f32> mNearLowNear;        // _0FC, nlnc
	Parm<f32> mNearLowFar;         // _124, nlfc
	Parm<f32> mMidLowDist;         // _14C, cmld
	Parm<f32> mMidLowAngle;        // _174, cmla
	Parm<f32> mMidLowFOV;          // _19C, cmlf
	Parm<f32> mMidLowOffset;       // _1C4, cmlo
	Parm<f32> mMidLowWeight;       // _1EC, cmlw
	Parm<f32> mMidLowDetached;     // _214, mldt
	Parm<f32> mMidLowNear;         // _23C, mlnc
	Parm<f32> mMidLowFar;          // _264, mlfc
	Parm<f32> mFarLowDist;         // _28C, cfld
	Parm<f32> mFarLowAngle;        // _2B4, cfla
	Parm<f32> mFarLowFOV;          // _2DC, cflf
	Parm<f32> mFarLowOffset;       // _304, cflo
	Parm<f32> mFarLowWeight;       // _32C, clfw
	Parm<f32> mFarLowDetached;     // _354, fldt
	Parm<f32> mFarLowNear;         // _37C, flnc
	Parm<f32> mFarLowFar;          // _3A4, flfc
	Parm<f32> mNearHighDist;       // _3CC, cnhd
	Parm<f32> mNearHighAngle;      // _3F4, cnha
	Parm<f32> mNearHighFOV;        // _41C, cnhf
	Parm<f32> mNearHighOffset;     // _444, cnho
	Parm<f32> mNearHighWeight;     // _46C, cnhw
	Parm<f32> mNearHighDetached;   // _494, nhdt
	Parm<f32> mNearHighNear;       // _4BC, nhnc
	Parm<f32> mNearHighFar;        // _4E4, nhfc
	Parm<f32> mMidHighDist;        // _50C, cmhd
	Parm<f32> mMidHighAngle;       // _534, cmha
	Parm<f32> mMidHighFOV;         // _55C, cmhf
	Parm<f32> mMidHighOffset;      // _584, cmho
	Parm<f32> mMidHighWeight;      // _5AC, cmhw
	Parm<f32> mMidHighDetached;    // _5D4, mhdt
	Parm<f32> mMidHighNear;        // _5FC, mhnc
	Parm<f32> mMidHighFar;         // _624, mhfc
	Parm<f32> mFarHighDist;        // _64C, cfhd
	Parm<f32> mFarHighAngle;       // _674, cfha
	Parm<f32> mFarHighFOV;         // _69C, cfhf
	Parm<f32> mFarHighOffset;      // _6C4, cfho
	Parm<f32> mFarHighWeight;      // _6EC, cfhw
	Parm<f32> mFarHighDetached;    // _714, fhdt
	Parm<f32> mFarHighNear;        // _73C, fhnc
	Parm<f32> mFarHighFar;         // _764, fhfc
	Parm<f32> mZoomDist;           // _78C, zmdt
	Parm<f32> mZoomAngle;          // _7B4, zman
	Parm<f32> mZoomFOV;            // _7DC, zmfv
	Parm<f32> mCollRadius;         // _804, clcr
	Parm<f32> mCollInterpSpeed;    // _82C, clms
	Parm<f32> mCollCorrHeight;     // _854, clmh
	Parm<f32> mNoCollHeight;       // _87C, clnh
	Parm<f32> mSettingChangeSpeed; // _8A4, cpmd
	Parm<f32> mRotSpeed;           // _8CC, cmmt
	Parm<f32> mRotFollowTime;      // _8F4, cmft
	Parm<f32> mRotAccel;           // _91C, cmta
	Parm<f32> mMaxRotSpeed;        // _944, cmtm
	Parm<f32> mRotDampRate;        // _96C, cmtb
};

/**
 * @size{0x308}
 */
struct VibrationParms : public Parameters {
	VibrationParms()
	    : Parameters(nullptr, "VibrationParms")
	    , mElevationLightVib(this, 'celv', "ELEVATION_LIGHT(vib)", 1.0f, 0.0f, 10.0f)
	    , mElevationMiddleVib(this, 'cemv', "ELEVATION_MIDDLE(vib)", 3.0f, 0.0f, 10.0f)
	    , mElevationHardVib(this, 'cehv', "ELEVATION_HARD(vib)", 5.0f, 0.0f, 10.0f)
	    , mElevationSlowSpeed(this, 'cess', "ELEVATION_SLOW(speed)", 15.0f, 0.0f, 100.0f)
	    , mElevationMiddleSpeed(this, 'cems', "ELEVATION_MIDDLE(speed)", 25.0f, 0.0f, 100.0f)
	    , mElevationFastSpeed(this, 'cefs', "ELEVATION_FAST(speed)", 35.0f, 0.0f, 100.0f)
	    , mElevationShortTime(this, 'cest', "ELEVATION_SHORT(time)", 0.3f, 0.0f, 5.0f)
	    , mElevationMiddleTime(this, 'cemt', "ELEVATION_MIDDLE(time)", 0.75f, 0.0f, 5.0f)
	    , mElevationLongTime(this, 'celt', "ELEVATION_LONG(time)", 1.5f, 0.0f, 5.0f)
	    , mElevationHardVib2(this, 'ceqv', "ELEVATION_HARD(Vib)", 20.0f, 0.0f, 50.0f)
	    , mElevationHardSpeed(this, 'ceqs', "ELEVATION_HARD(Speed)", 35.0f, 0.0f, 100.0f)
	    , mElevationHardTime(this, 'ceqt', "ELEVATION_HARD(Time)", 0.25f, 0.0f, 5.0f)
	    , mZoomShortVib(this, 'czsv', "ZOOM_SHORT(Vib)", 25.0f, 0.0f, 100.0f)
	    , mZoomShortSpeed(this, 'czss', "ZOOM_SHORT(Speed)", 35.0f, 0.0f, 50.0f)
	    , mZoomShortTime(this, 'czst', "ZOOM_SHORT(Time)", 0.75f, 0.0f, 5.0f)
	    , mAzimuthShortVib(this, 'casv', "AZIMUTH_SHORT(Vib)", 0.06f, 0.0f, 1.0f)
	    , mAzimuthShortSpeed(this, 'cass', "AZIMUTH_SHORT(Speed)", 40.0f, 0.0f, 50.0f)
	    , mAzimuthShortTime(this, 'cast', "AZIMUTH_SHORT(Time)", 0.75f, 0.0f, 5.0f)
	    , mVibMaxDistance(this, 'cmdm', "Vib Max Distance", 750.0f, 0.0f, 1000.0f)
	{
	}

	Parm<f32> mElevationLightVib;    // _00C, celv
	Parm<f32> mElevationMiddleVib;   // _034, cemv
	Parm<f32> mElevationHardVib;     // _05C, cehv
	Parm<f32> mElevationSlowSpeed;   // _084, cess
	Parm<f32> mElevationMiddleSpeed; // _0AC, cems
	Parm<f32> mElevationFastSpeed;   // _0D4, cefs
	Parm<f32> mElevationShortTime;   // _0FC, cest
	Parm<f32> mElevationMiddleTime;  // _124, cemt
	Parm<f32> mElevationLongTime;    // _14C, celt
	Parm<f32> mElevationHardVib2;    // _174, ceqv
	Parm<f32> mElevationHardSpeed;   // _19C, ceqs
	Parm<f32> mElevationHardTime;    // _1C4, ceqt
	Parm<f32> mZoomShortVib;         // _1EC, czsv
	Parm<f32> mZoomShortSpeed;       // _214, czss
	Parm<f32> mZoomShortTime;        // _23C, czst
	Parm<f32> mAzimuthShortVib;      // _264, casv
	Parm<f32> mAzimuthShortSpeed;    // _28C, cass
	Parm<f32> mAzimuthShortTime;     // _2B4, cast
	Parm<f32> mVibMaxDistance;       // _2DC, cmdm
};

struct PlayCamera : public LookAtCamera {
	PlayCamera(Navi* target);

	virtual ~PlayCamera() { }                                         // _08 (weak)
	virtual Vector3f getLookAtPosition_() { return mLookAtPosition; } // _58 (weak)
	virtual bool isSpecialCamera();                                   // _70
	virtual void updateMatrix();                                      // _74
	virtual bool doUpdate();                                          // _78
	virtual void startVibration(int) { }                              // _7C (weak)
	virtual void init();                                              // _80

	void setCameraParms(CameraParms* parms);
	void setVibrationParms(VibrationParms* parms);
	void setCameraAngle(f32 angle);
	void getCameraData(CameraData& data);
	void setCameraData(CameraData& data);
	void changePlayerMode(bool updateDir);
	void noUpdate();
	bool isVibration();
	void startVibration(int type, f32 strength);
	void startDemoCamera(int type);
	void finishDemoCamera();
	u32 updateCameraMode();
	void startZoomCamera();
	void startGameCamera(int);
	void setTargetParms();
	void setTargetThetaToWhistle();
	void setFollowTime();
	void setSmoothThetaSpeed();
	void changeTargetTheta();
	void changeTargetAtPosition();
	void updateParms(int flag);
	void updateVibration(int id);
	void otherVibFinished(int id);
	bool isModCameraFinished();
	void setCollisionCameraTargetPhi(int);
	f32 getCollisionCameraTargetPhi(f32, f32);

	// _00 		= VTBL
	// _00-_198	= LookAtCamera
	Navi* mTargetObj;                // _198
	int mChangePlayerState;          // _19C (is 1 during a player transition, 0 otherwise)
	int mCameraZoomLevel;            // _1A0 (what's toggled between when you press R)
	int mCameraSelAngle;             // _1A4 (what's toggled between when you press Z)
	f32 mCurrTargetDistance;         // _1A8
	f32 mGoalTargetDistance;         // _1AC
	f32 mCameraAngleCurrent;         // _1B0
	f32 mCameraAngleGoal;            // _1B4
	f32 mCurrVerticalAngle;          // _1B8
	f32 mGoalVerticalAngle;          // _1BC
	f32 mGoalFOV;                    // _1C0
	f32 mNearZPlane;                 // _1C4
	f32 mFarZPlane;                  // _1C8
	f32 mYOffset;                    // _1CC
	f32 mDetachedWeight;             // _1D0
	f32 mDetachedParm;               // _1D4 (used to offset camera position to put pikmin squad in frame)
	f32 mSmoothMoveSpeed;            // _1D8 (used in holding L mode)
	f32 mFollowTime;                 // _1DC
	f32 mHoldRTimer;                 // _1E0
	Vector3f mGoalPosition;          // _1E4
	bool mVibrateEnabled[3];         // _1F0
	f32 mVibrateSpeedParm[3];        // _1F4, vibration azimuth short speed?
	f32 mVibrateRollAngle[3];        // _200
	f32 mVibrateAngle[3];            // _20C
	f32 mVibrateTimer[3];            // _218
	f32 mVibrateTimeParm[3];         // _224, vibration azimuth short time?
	f32 mVibrateScaleParm[3];        // _230
	f32 mVibrateAzimuthParm[3];      // _23C, vibration azimuth short vib?
	u8 mCanInput;                    // _248
	u8 _249;                         // _249
	CameraParms* mCameraParms;       // _24C
	VibrationParms* mVibrationParms; // _250
};

/**
 * @size{0x3C}
 */
struct CameraMgr : public CNode {
	CameraMgr();

	virtual ~CameraMgr() {}; // _08
	// virtual void _10() = 0;       // _10

	void loadResource();
	void setViewport(Viewport* vp, int id);
	void init(int state);
	void setCameraAngle(f32 angle, int id);
	void update();
	void startVibration(int type, Vector3f& pos, int camID);
	void startVibration(int type, int camID);
	void controllerLock(int camID);
	void controllerUnLock(int camID);
	void startDemoCamera(int camID, int type);
	void finishDemoCamera(int camID);
	void changePlayerMode(int state, IDelegate1<CameraArg*>* delegate);
	bool isChangePlayer();
	void setZukanCamera(LookAtCamera* cam);
	bool isCameraUpdateOn();
	bool isStartAndEnd(int* data, int type);
	bool isVibrationStart(int type, int camID);
	void readCameraParms(char* path);
	void readParameter(Stream& stream);

	// _00 		= VTBL
	// _00-_18	= CNode
	int mCurrPlayerMode;               // _18 (0 = olimar, 1 = louie, 2 = multiplayer)
	int* mCameraVibrateState;          // _1C
	Viewport** mViewportList;          // _20
	PlayCamera** mCameraObjList;       // _24
	CameraParms* mCameraParms[2];      // _28
	VibrationParms* mVibrationParms;   // _30
	IDelegate1<CameraArg*>* mDelegate; // _34
	LookAtCamera* mZukanCamera;        // _38
};

extern CameraMgr* cameraMgr;
} // namespace Game

#endif
