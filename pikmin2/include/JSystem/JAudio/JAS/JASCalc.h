#ifndef _JSYSTEM_JAS_JASCALC_H
#define _JSYSTEM_JAS_JASCALC_H

#include "stl/limits.h"
#include "types.h"

namespace JASCalc {
void imixcopy(const short*, const short*, short*, u32);
void bcopy(const void*, void*, u32);
void bzero(void*, u32);

f32 clamp_0_1(f32);

/*
 * --INFO--
 * Address:	800A64D8
 * Size:	000028
 */
template <typename A, typename B>
A clamp(B x)
{
	if (std::numeric_limits<A>::min() >= x) {
		return std::numeric_limits<A>::min();
	}
	if (x >= std::numeric_limits<A>::max()) {
		return std::numeric_limits<A>::max();
	}
	return x;
}

inline f32 clamp01(f32 value)
{
	if (value <= 0.0f) {
		return 0.0f;
	}
	if (value >= 1.0f) {
		return 1.0f;
	}
	return value;
}

// unused/inlined:
void mixcopy(const short*, const short*, short*, u32);
void bcopyfast(const void*, void*, u32);
void bzerofast(void*, u32);
void hannWindow(short*, u32);
void hammWindow(short*, u32);
void fft(f32*, f32*, u32, long);
} // namespace JASCalc

#endif
