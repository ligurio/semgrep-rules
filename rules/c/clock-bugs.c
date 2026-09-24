#include <time.h>

void realtime_clock(struct timespec *ts)
{
	// ruleid: clock-bugs
	clock_gettime(CLOCK_REALTIME, ts);
}

void monotonic_clock(struct timespec *ts)
{
	// ok: clock-bugs
	clock_gettime(CLOCK_MONOTONIC, ts);
}
