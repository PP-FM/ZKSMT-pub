#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <chrono>

using namespace std::chrono;

static bool initialized = false;
static time_point<steady_clock> first_timer;
static time_point<steady_clock> latest_timer;

static uint64_t alt_nanos = 0;
static time_point<steady_clock> alt_timer;

static time_point<steady_clock> array_timer;
static uint64_t nano_array[4096] = {0};

#define BILLION (1000000000)

// Time in nanoseconds 
int64_t nano_time(time_point<steady_clock> start, time_point<steady_clock> end) {
    int64_t full_time = duration_cast<nanoseconds>(end - start).count();

    return full_time;
}

// Prints nanoseconds, with decimal places.
void fprint_nanos(FILE* file, int64_t nanos) {
    fprintf(file, "%3d.%09d", nanos / BILLION, nanos % BILLION);
}

void timer_init() {
    if (initialized) {
        printf("error: initialized timer twice\n");
        exit(1);
    }

    initialized = true;
    first_timer = steady_clock::now();
    latest_timer = first_timer;
}

void timer_end_section(char *section) {
    time_point<steady_clock> old_timer = latest_timer;
    latest_timer = steady_clock::now();

    int64_t nanos = nano_time(old_timer, latest_timer);
    printf("%30s : ", section);
    fprint_nanos(stdout, nanos);
    printf("\n");
}

void timer_end_all() {
    time_point<steady_clock> latest_timer = steady_clock::now();

    int64_t nanos = nano_time(first_timer, latest_timer);
    printf("%30s : ", "total");
    fprint_nanos(stdout, nanos);
    printf("\n");
}

void alt_timer_start() {
    alt_timer = steady_clock::now();
}

void alt_timer_stop() {
    time_point<steady_clock> timer = steady_clock::now();

    alt_nanos += nano_time(alt_timer, timer);
}

void array_timer_start() {
    array_timer = steady_clock::now();
}

void array_timer_stop(int index) {
    time_point<steady_clock> timer = steady_clock::now();

    int64_t new_time = nano_time(array_timer, timer);

    nano_array[index] += new_time;
}

void array_timer_print(int index) {
    printf("rule : %23d : ", index);
    fprint_nanos(stdout, nano_array[index]);
    printf("\n");
}

uint64_t array_timer_get(int index) {
    return nano_array[index];
}

void alt_timer_finish(char *name) {
    printf("%30s : ", name);
    fprint_nanos(stdout, alt_nanos);
    printf("\n");
}

void array_timer_reset(int index) {
    nano_array[index] = 0;
}
