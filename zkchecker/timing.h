#pragma once
#include <stdint.h>
#include <stdio.h>

void fprint_nanos(FILE* file, int64_t nanos);

void timer_init();
void timer_end_section(char *section);
void timer_end_all();

void alt_timer_start();
void alt_timer_stop();
void alt_timer_finish(char *name);

void array_timer_start();
void array_timer_stop(int index);
void array_timer_print(int index);
uint64_t array_timer_get(int index);
void array_timer_reset(int index);
