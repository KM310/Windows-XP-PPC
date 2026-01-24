//Copyright Julius (KM310)
//written by Julius
#include "ke.h"

static ETHREAD* CurrentThread = 0;

void KeInitializeScheduler(void) {
    CurrentThread = 0;
}

void KeSchedule(void) {
}
