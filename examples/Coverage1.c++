// -------------
// Coverage1.c++
// -------------

// http://gcc.gnu.org/onlinedocs/gcc/Gcov.html

#include <cassert>  // assert
#include <iostream> // cout, endl

#include "gtest/gtest.h"

#include "Collatz2.h"

TEST(CoverageFixture, test) {
    ASSERT_EQ(cycle_length(1), 1);}

/*
% g++-4.8 -fprofile-arcs -ftest-coverage -pedantic -std=c++11 -Wall Coverage1.c++ -o Coverage1 /usr/local/lib/gtest_main.a



% Coverage1
Running main() from gtest_main.cc
[==========] Running 1 test from 1 test case.
[----------] Global test environment set-up.
[----------] 1 test from CoverageFixture
[ RUN      ] CoverageFixture.test
[       OK ] CoverageFixture.test (0 ms)
[----------] 1 test from CoverageFixture (0 ms total)

[----------] Global test environment tear-down
[==========] 1 test from 1 test case ran. (0 ms total)
[  PASSED  ] 1 test.



% gcov-4.8 -version
gcov (Ubuntu 4.8.2-19ubuntu1) 4.8.2
Copyright (C) 2013 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.
There is NO warranty; not even for MERCHANTABILITY or
FITNESS FOR A PARTICULAR PURPOSE.



% gcov -b Coverage1.c++ | grep -A 5 "File 'Coverage2.h'"
File './Collatz2.h'
Lines executed:55.56% of 9
Branches executed:75.00% of 8
Taken at least once:37.50% of 8
No calls
./Collatz2.h:creating 'Collatz2.h.gcov'
*/
