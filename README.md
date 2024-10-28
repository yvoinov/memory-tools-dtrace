# memory-tools-dtrace
[![License](https://img.shields.io/badge/License-BSD%203--Clause-blue.svg)](https://github.com/yvoinov/memory-tools-dtrace/blob/master/LICENSE)

## DTrace memory tracing and profiling tools

Instrumentation scripts are prepared for tracing and profiling process allocation and deallocation functions.

To use, copy the scripts and grant execute permissions.

To perform tracing or profiling, call the script using the process ID as an argument and let it run for a while.

The scripts run as an infinite loop until interrupted. Profiling scripts print results upon interruption or termination. Tracing scripts print results as they run and continue to run until interrupted or terminated.

Example:
```sh
# profile-calloc.d 48218
dtrace: script './profile-calloc.d' matched 6 probes
^C


           value  ------------- Distribution ------------- count    
               0 |                                         0        
               1 |@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@      25712    
               2 |                                         283      
               4 |@@@                                      1921     
               8 |                                         243      
              16 |                                         0        
              32 |@                                        567      
              64 |                                         73       
             128 |                                         68       
             256 |                                         82       
             512 |                                         0        
            1024 |                                         7        
            2048 |                                         0        
            4096 |                                         0        
            8192 |                                         0        
           16384 |                                         355      
           32768 |                                         0        
```
