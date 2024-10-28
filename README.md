# memory-tools-dtrace
[![License](https://img.shields.io/badge/License-BSD%203--Clause-blue.svg)](https://github.com/yvoinov/memory-tools-dtrace/blob/master/LICENSE)

## DTrace memory tracing and profiling tools

Instrumentation scripts are prepared for tracing and profiling process allocation and deallocation functions.

To use, copy the scripts and grant execute permissions.

To perform tracing or profiling, call the script using the process ID as an argument.

The scripts run as an infinite loop until interrupted. Profiling scripts print results upon interruption or termination. Tracing scripts print results as they run and continue to run until interrupted or terminated.
