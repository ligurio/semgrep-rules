#include <time.h>

void realtime_clock(struct timespec *ts)
{
	// ruleid: libc_clock
	clock_gettime(CLOCK_REALTIME, ts);
}

void monotonic_clock(struct timespec *ts)
{
	// ok: libc_clock
	clock_gettime(CLOCK_MONOTONIC, ts);
}
