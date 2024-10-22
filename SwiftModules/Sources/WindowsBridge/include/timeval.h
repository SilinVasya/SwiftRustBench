#ifdef _WIN32

#include <Windows.h>
#include <stdint.h>

// MSVC defines this in winsock2.h!?
typedef struct timeval {
    long tv_sec;
    long tv_usec;
} timeval;

int gettimeofday(struct timeval *, struct timezone *);

#endif
