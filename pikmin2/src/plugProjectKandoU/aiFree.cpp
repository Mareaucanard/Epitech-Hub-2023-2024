#include "Dolphin/rand.h"
#include "string.h"

#include "Game/Navi.h"
#include "Game/Piki.h"
#include "Game/rumble.h"
#include "Game/CollEvent.h"
#include "Game/Interaction.h"

#include "P2Macros.h"
#include "PikiAI.h"

namespace PikiAI {

/*
 * --INFO--
 * Address:	8019FF38
 * Size:	0000D0
 */
ActFree::ActFree(Game::Piki* p)
    : Action(p)
    , mGather(new ActGather(p))
    , mBore(new ActBore(p))
{
	mName = "Free";
}

/*
 * --INFO--
 * Address:	801A0008
 * Size:	000190
 */
void ActFree::init(ActionArg* settings)
{
	mParent->mNavi = nullptr;
	mParent->mSoundObj->becomeFree();

	ActFreeArg* freeArg = static_cast<ActFreeArg*>(settings);

	mState = PIKIAI_FREE_DEFAULT;
	if (freeArg) {
		bool isFreeArg = strcmp("ActFreeArg", settings->getName()) == 0;
		P2ASSERTLINE(119, isFreeArg);

		freeArg = static_cast<ActFreeArg*>(settings);
		if (freeArg->mToGather) {
			mState = PIKIAI_FREE_GATHER;
		}
	}

	switch (mState) {
	case PIKIAI_FREE_GATHER:
		GatherActionArg gatherArg(freeArg);
		mGather->init(&gatherArg);
		break;

	default:
		mParent->startMotion(Game::IPikiAnims::WAIT, Game::IPikiAnims::WAIT, nullptr, nullptr);
		mParent->mVelocity = Vector3f(0.0f);
		break;
	}

	mParent->setPastel(true);
	mParent->setFreeLightEffect(true);
	mParent->attachRadar(true);

	mDelayTimer = 0;
}

/*
 * --INFO--
 * Address:	801A0198
 * Size:	0001D0
 */
int ActFree::exec()
{
	switch (mState) {
	case PIKIAI_FREE_GATHER: {
		// If we finished the gather state
		if (mGather->exec() == ACTEXEC_Success) {
			mState = PIKIAI_FREE_DEFAULT;

			// Wait for a bit of time to cool off
			u16 frameDelay = 30 * randFloat();
			mDelayTimer    = frameDelay + 150;
		}
		break;
	}

	case PIKIAI_FREE_BORE: {
		int status = mBore->exec();

		// if another action is available, stop being bored.
		Game::Piki::InvokeAIFreeArg settings;
		settings.mDoSimpleCheck = true; // just check if something is available - don't start it yet
		if (mParent->invokeAIFree(settings)) {
			mBore->finish();
		}

		// Assuming we finished or failed being bored, we'll be free again
		if (status == 0 || status == 2) {
			mState      = PIKIAI_FREE_DEFAULT;
			mDelayTimer = 90;
		}
		break;
	}

	default: {
		// We aren't moving anywhere anymore
		mParent->mVelocity = Vector3f(0.0f);

		Game::Piki::InvokeAIFreeArg settings;
		// this will start the next available action (if there is one, and if piki is updateable)
		if (mParent->invokeAIFree(settings)) {
			return ACTEXEC_Success;
		}

		// If the delay timer is done we have a 50/50 chance of starting a boredom state
		if (mDelayTimer) {
			mDelayTimer--;
		} else if (randFloat() > 0.5f) {
			mBore->init(nullptr);
			mState = PIKIAI_FREE_BORE;
		}

		break;
	}
	}

	return ACTEXEC_Continue;
}

/*
 * --INFO--
 * Address:	801A0368
 * Size:	00004C
 */
void ActFree::cleanup()
{
	mParent->setFreeLightEffect(false);
	mParent->attachRadar(false);
	mParent->mSoundObj->becomeNotFree();
}

/*
 * --INFO--
 * Address:	801A03B4
 * Size:	000004
 */
void ActFree::onKeyEvent(SysShape::KeyEvent const&) { }

/*
 * --INFO--
 * Address:	801A03B8
 * Size:	0000EC
 */
void ActFree::collisionCallback(Game::Piki* p, Game::CollEvent& event)
{
	if (!event.mCollidingCreature->isNavi()) {
		return;
	}

	Game::Navi* navi = static_cast<Game::Navi*>(event.mCollidingCreature);
	if (!navi->isAlive()) {
		return;
	}

	// If the Navi who touched us isn't being used right now (by controller)
	if (!navi->mController1) {
		return;
	}

	// If the Navi can't call us into formation
	if (!navi->formationable()) {
		return;
	}

	// Assuming the Navi touched us, rumble and call to squad (eventually)
	Game::rumbleMgr->startRumble(2, navi->mNaviIndex);
	Game::InteractFue fue(event.mCollidingCreature, 0, 1);
	p->stimulate(fue);
}

} // namespace PikiAI
