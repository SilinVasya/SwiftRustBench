**Processor (cpuinfo brand_raw):** Intel(R) Core(TM) i5-8500 CPU @ 3.00GHz\
**Architecture - bit architecture:** 64bit\
**Architecture - linkage format used for the executable:** \
**Machine type:** x86_64\
**Platform:** macOS-10.16-x86_64-i386-64bit\
**Platform aliased:** macOS-10.16-x86_64-i386-64bit\
**System:** Darwin\
**System's release:** 24.0.0\
**System's version:** Darwin Kernel Version 24.0.0: Tue Sep 24 23:36:30 PDT 2024; root:xnu-11215.1.12~1/RELEASE_X86_64\
**Processor:** i386\
**Processor (cpuinfo full):** {'python_version': '3.8.0.final.0 (64 bit)', 'cpuinfo_version': [9, 0, 0], 'cpuinfo_version_string': '9.0.0', 'arch': 'X86_64', 'bits': 64, 'count': 6, 'arch_string_raw': 'x86_64', 'vendor_id_raw': 'GenuineIntel', 'brand_raw': 'Intel(R) Core(TM) i5-8500 CPU @ 3.00GHz', 'hz_advertised_friendly': '3.0000 GHz', 'hz_actual_friendly': '3.0000 GHz', 'hz_advertised': [3000000000, 0], 'hz_actual': [3000000000, 0], 'l2_cache_size': 262144, 'stepping': 10, 'model': 158, 'family': 6, 'flags': ['1gbpage', '3dnowprefetch', 'abm', 'acapmsr', 'acpi', 'adx', 'aes', 'apic', 'avx', 'avx1.0', 'avx2', 'bmi1', 'bmi2', 'clflush', 'clflushopt', 'clfsh', 'clfsopt', 'cmov', 'cx16', 'cx8', 'de', 'ds', 'ds_cpl', 'dscpl', 'dtes64', 'dts', 'em64t', 'erms', 'est', 'f16c', 'fma', 'fpu', 'fpu_csds', 'fxsr', 'hle', 'ht', 'htt', 'ibrs', 'intel_pt', 'invpcid', 'ipt', 'l1df', 'lahf', 'lahf_lm', 'lzcnt', 'mca', 'mce', 'mdclear', 'mmx', 'mon', 'monitor', 'movbe', 'mpx', 'msr', 'mtrr', 'osxsave', 'pae', 'pat', 'pbe', 'pcid', 'pclmulqdq', 'pdcm', 'pge', 'pni', 'popcnt', 'prefetchw', 'pse', 'pse36', 'rdrand', 'rdrnd', 'rdseed', 'rdtscp', 'rdwrfsgs', 'rtm', 'seglim64', 'sep', 'sgx', 'sgx_lc', 'sgxlc', 'smap', 'smep', 'smx', 'ss', 'ssbd', 'sse', 'sse2', 'sse3', 'sse4.1', 'sse4.2', 'sse4_1', 'sse4_2', 'ssse3', 'stibp', 'syscall', 'tm', 'tm2', 'tpr', 'tsc', 'tsc_thread_offset', 'tscdeadline', 'tsci', 'tsctmr', 'tsxfa', 'vme', 'vmx', 'x2apic', 'xd', 'xsave', 'xtpr'], 'l2_cache_line_size': 256, 'l2_cache_associativity': 6}\

==============================================================\
Binary tree\

**Swift class**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 7231.014 ms  | 3205.128809 ms  |
| Diff | 0.079 ms  | 0.195007999999941 ms  |
| Max | 8.969 ms  | 4.072833 ms  |
| Min | 7.107 ms  | 3.124925 ms  |
| Avg | 7.231 ms  | 3.204933801 ms  |
| Median | 7.201 ms  | 3.206267 ms  |
    
**Swift class with protocol**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 11425.444 ms  | 3211.909418 ms  |
| Diff | 0.095 ms  | 0.1769169999996656 ms  |
| Max | 13.564 ms  | 3.855483 ms  |
| Min | 11.241 ms  | 3.121613 ms  |
| Avg | 11.425 ms  | 3.2117325010000003 ms  |
| Median | 11.357 ms  | 3.209693 ms  |
    
**Swift struct with protocol**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 9653.080 ms  | 3186.196014 ms  |
| Diff | 0.099 ms  | 0.18231800000023668 ms  |
| Max | 11.909 ms  | 4.12608 ms  |
| Min | 9.432 ms  | 3.122752 ms  |
| Avg | 9.653 ms  | 3.186013696 ms  |
| Median | 9.582 ms  | 3.164096 ms  |
    
**Swift struct with reference**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 3282.353 ms  | 3243.111413 ms  |
| Diff | 0.083 ms  | 0.1809310000000508 ms  |
| Max | 3.769 ms  | 3.867204 ms  |
| Min | 3.206 ms  | 3.184889 ms  |
| Avg | 3.282 ms  | 3.242930482 ms  |
| Median | 3.295 ms  | 3.222654 ms  |
    
==============================================================\
Circular Deque\


| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 5465.286 ms  | 4349.173056 ms  |
| Diff | 0.054 ms  | 0.17073199999995126 ms  |
| Max | 6.155 ms  | 5.374535 ms  |
| Min | 5.337 ms  | 4.228818 ms  |
| Avg | 5.465 ms  | 4.349002324 ms  |
| Median | 5.481 ms  | 4.340452 ms  |
    
==============================================================\
Count Square Submatrices with All Ones: https://leetcode.com/problems/count-square-submatrices-with-all-ones/description/?envType=daily-question&envId=2024-10-27\

**Dynamic programming**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 1475.817 ms  | 1266.832413 ms  |
| Diff | 0.046 ms  | 0.16374599999990913 ms  |
| Max | 1.996 ms  | 1.614004 ms  |
| Min | 1.423 ms  | 1.224602 ms  |
| Avg | 1.476 ms  | 1.2666686669999998 ms  |
| Median | 1.467 ms  | 1.258887 ms  |
    
**Sum rows**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 10473.415 ms  | 11681.194328 ms  |
| Diff | 0.072 ms  | 0.19970900000032543 ms  |
| Max | 11.724 ms  | 13.353271 ms  |
| Min | 9.698 ms  | 11.333632 ms  |
| Avg | 10.473 ms  | 11.680994619 ms  |
| Median | 10.466 ms  | 11.62968 ms  |
    
==============================================================\
Divide Intervals Into Minimum Number of Groups: https://leetcode.com/problems/divide-intervals-into-minimum-number-of-groups/description/?envType=daily-question&envId=2024-10-12\

**Heap solution**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 10189.551 ms  | 3521.891262 ms  |
| Diff | 0.190 ms  | 0.14817899999997053 ms  |
| Max | 11.681 ms  | 4.263784 ms  |
| Min | 9.789 ms  | 3.353503 ms  |
| Avg | 10.189 ms  | 3.521743083 ms  |
| Median | 10.176 ms  | 3.494366 ms  |
    
**Sort borders**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 15711.345 ms  | 4313.735585 ms  |
| Diff | 0.110 ms  | 0.16217699999998558 ms  |
| Max | 17.240 ms  | 5.137231 ms  |
| Min | 15.205 ms  | 4.20877 ms  |
| Avg | 15.711 ms  | 4.3135734079999995 ms  |
| Median | 15.645 ms  | 4.284494 ms  |
    
**Sweep window**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 3282.590 ms  | 923.090602 ms  |
| Diff | 0.196 ms  | 0.20184100000009142 ms  |
| Max | 4.684 ms  | 2.164653 ms  |
| Min | 3.167 ms  | 0.884172 ms  |
| Avg | 3.282 ms  | 0.9228887610000001 ms  |
| Median | 3.240 ms  | 0.906948 ms  |
    
==============================================================\
Maximum Width Ramp: https://leetcode.com/problems/maximum-width-ramp/description/?envType=daily-question&envId=2024-10-10\


| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000000 | 1000000 |
| Total time      | 31318.661 ms  | 26414.271535 ms  |
| Diff | 41.917 ms  | 81.61794200000116 ms  |
| Max | 0.246 ms  | 0.137447 ms  |
| Min | 0.030 ms  | 0.025383 ms  |
| Avg | 0.031 ms  | 0.02633265 ms  |
| Median | 0.031 ms  | 0.026144 ms  |
    
==============================================================\
Minimum Add to Make Parentheses Valid: https://leetcode.com/problems/minimum-add-to-make-parentheses-valid/?envType=daily-question&envId=2024-10-09\


| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000000 | 1000000 |
| Total time      | 1115.998 ms  | 1165.544174 ms  |
| Diff | 32.133 ms  | 82.02938100000012 ms  |
| Max | 0.062 ms  | 0.074603 ms  |
| Min | 0.001 ms  | 0.001026 ms  |
| Avg | 0.001 ms  | 0.00108351 ms  |
| Median | 0.001 ms  | 0.001067 ms  |
    
==============================================================\
Minimum Number of Swaps to Make the String Balanced https://leetcode.com/problems/minimum-number-of-swaps-to-make-the-string-balanced/description/?envType=daily-question&envId=2024-10-08\


| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000000 | 1000000 |
| Total time      | 33357.726 ms  | 10597.123762 ms  |
| Diff | 37.158 ms  | 0.08560085200000067 ms  |
| Max | 3.698 ms  | 0.20211 ms  |
| Min | 0.031 ms  | 0.010025 ms  |
| Avg | 0.033 ms  | 0.01051152 ms  |
| Median | 0.033 ms  | 0.010357 ms  |
    
==============================================================\
The Number of the Smallest Unoccupied Chair: https://leetcode.com/problems/the-number-of-the-smallest-unoccupied-chair/description/?envType=daily-question&envId=2024-10-11\


| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 100000 | 100000 |
| Total time      | 211330.707 ms  | 100623.011777 ms  |
| Diff | 4.557 ms  | 9.960747000008041 ms  |
| Max | 3.404 ms  | 1.607239 ms  |
| Min | 2.000 ms  | 0.986373 ms  |
| Avg | 2.113 ms  | 1.0061305103 ms  |
| Median | 2.114 ms  | 0.995342 ms  |
    
