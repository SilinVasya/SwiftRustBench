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
| Total time      | 7.231014 ms  | 3.205128809 ms  |
| Diff | 0.000079 ms  | 0.000195007999999941 ms  |
| Max | 0.008969 ms  | 0.004072833 ms  |
| Min | 0.007107 ms  | 0.003124925 ms  |
| Avg | 0.007231 ms  | 0.003204933801 ms  |
| Median | 0.007201 ms  | 0.003206267 ms  |
    
**Swift class with protocol**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 11.425444 ms  | 3.211909418 ms  |
| Diff | 0.000095 ms  | 0.0001769169999996656 ms  |
| Max | 0.013564 ms  | 0.003855483 ms  |
| Min | 0.011241 ms  | 0.003121613 ms  |
| Avg | 0.011425 ms  | 0.0032117325010000003 ms  |
| Median | 0.011357 ms  | 0.003209693 ms  |
    
**Swift struct with protocol**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 9.653080 ms  | 3.186196014 ms  |
| Diff | 0.000099 ms  | 0.00018231800000023668 ms  |
| Max | 0.011909 ms  | 0.00412608 ms  |
| Min | 0.009432 ms  | 0.003122752 ms  |
| Avg | 0.009653 ms  | 0.003186013696 ms  |
| Median | 0.009582 ms  | 0.003164096 ms  |
    
**Swift struct with reference**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 3.282353 ms  | 3.243111413 ms  |
| Diff | 0.000083 ms  | 0.0001809310000000508 ms  |
| Max | 0.003769 ms  | 0.003867204 ms  |
| Min | 0.003206 ms  | 0.003184889 ms  |
| Avg | 0.003282 ms  | 0.003242930482 ms  |
| Median | 0.003295 ms  | 0.003222654 ms  |
    
==============================================================\
Circular Deque\


| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 5.465286 ms  | 4.349173056 ms  |
| Diff | 0.000054 ms  | 0.00017073199999995126 ms  |
| Max | 0.006155 ms  | 0.005374535 ms  |
| Min | 0.005337 ms  | 0.004228818 ms  |
| Avg | 0.005465 ms  | 0.004349002324 ms  |
| Median | 0.005481 ms  | 0.004340452 ms  |
    
==============================================================\
Count Square Submatrices with All Ones: https://leetcode.com/problems/count-square-submatrices-with-all-ones/description/?envType=daily-question&envId=2024-10-27\

**Dynamic programming**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 1.475817 ms  | 1.266832413 ms  |
| Diff | 0.000046 ms  | 0.00016374599999990913 ms  |
| Max | 0.001996 ms  | 0.001614004 ms  |
| Min | 0.001423 ms  | 0.001224602 ms  |
| Avg | 0.001476 ms  | 0.0012666686669999998 ms  |
| Median | 0.001467 ms  | 0.001258887 ms  |
    
**Sum rows**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 10.473415 ms  | 11.681194328 ms  |
| Diff | 0.000072 ms  | 0.00019970900000032543 ms  |
| Max | 0.011724 ms  | 0.013353271 ms  |
| Min | 0.009698 ms  | 0.011333632 ms  |
| Avg | 0.010473 ms  | 0.011680994619 ms  |
| Median | 0.010466 ms  | 0.01162968 ms  |
    
==============================================================\
Divide Intervals Into Minimum Number of Groups: https://leetcode.com/problems/divide-intervals-into-minimum-number-of-groups/description/?envType=daily-question&envId=2024-10-12\

**Heap solution**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 10.189551 ms  | 3.521891262 ms  |
| Diff | 0.000190 ms  | 0.00014817899999997053 ms  |
| Max | 0.011681 ms  | 0.004263784 ms  |
| Min | 0.009789 ms  | 0.003353503 ms  |
| Avg | 0.010189 ms  | 0.003521743083 ms  |
| Median | 0.010176 ms  | 0.003494366 ms  |
    
**Sort borders**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 15.711345 ms  | 4.313735585 ms  |
| Diff | 0.000110 ms  | 0.00016217699999998558 ms  |
| Max | 0.017240 ms  | 0.005137231 ms  |
| Min | 0.015205 ms  | 0.00420877 ms  |
| Avg | 0.015711 ms  | 0.0043135734079999995 ms  |
| Median | 0.015645 ms  | 0.004284494 ms  |
    
**Sweep window**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 3.282590 ms  | 0.923090602 ms  |
| Diff | 0.000196 ms  | 0.00020184100000009142 ms  |
| Max | 0.004684 ms  | 0.002164653 ms  |
| Min | 0.003167 ms  | 0.000884172 ms  |
| Avg | 0.003282 ms  | 0.0009228887610000001 ms  |
| Median | 0.003240 ms  | 0.000906948 ms  |
    
==============================================================\
Maximum Width Ramp: https://leetcode.com/problems/maximum-width-ramp/description/?envType=daily-question&envId=2024-10-10\


| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000000 | 1000000 |
| Total time      | 31.318661 ms  | 26.414271535 ms  |
| Diff | 0.041917 ms  | 0.08161794200000116 ms  |
| Max | 0.000246 ms  | 0.000137447 ms  |
| Min | 0.000030 ms  | 2.5383e-05 ms  |
| Avg | 0.000031 ms  | 2.6332653593e-05 ms  |
| Median | 0.000031 ms  | 2.6144e-05 ms  |
    
==============================================================\
Minimum Add to Make Parentheses Valid: https://leetcode.com/problems/minimum-add-to-make-parentheses-valid/?envType=daily-question&envId=2024-10-09\


| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000000 | 1000000 |
| Total time      | 1.115998 ms  | 1.165544174 ms  |
| Diff | 0.032133 ms  | 0.08202938100000012 ms  |
| Max | 0.000062 ms  | 7.4603e-05 ms  |
| Min | 0.000001 ms  | 1.026e-06 ms  |
| Avg | 0.000001 ms  | 1.083514793e-06 ms  |
| Median | 0.000001 ms  | 1.067e-06 ms  |
    
==============================================================\
Minimum Number of Swaps to Make the String Balanced https://leetcode.com/problems/minimum-number-of-swaps-to-make-the-string-balanced/description/?envType=daily-question&envId=2024-10-08\


| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000000 | 1000000 |
| Total time      | 33.357726 ms  | 10.597123762 ms  |
| Diff | 0.037158 ms  | 0.08560085200000067 ms  |
| Max | 0.003698 ms  | 0.00020211 ms  |
| Min | 0.000031 ms  | 1.0025e-05 ms  |
| Avg | 0.000033 ms  | 1.051152291e-05 ms  |
| Median | 0.000033 ms  | 1.0357e-05 ms  |
    
==============================================================\
The Number of the Smallest Unoccupied Chair: https://leetcode.com/problems/the-number-of-the-smallest-unoccupied-chair/description/?envType=daily-question&envId=2024-10-11\


| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 100000 | 100000 |
| Total time      | 211.330707 ms  | 100.623011777 ms  |
| Diff | 0.004557 ms  | 0.009960747000008041 ms  |
| Max | 0.003404 ms  | 0.001607239 ms  |
| Min | 0.002000 ms  | 0.000986373 ms  |
| Avg | 0.002113 ms  | 0.0010061305103 ms  |
| Median | 0.002114 ms  | 0.000995342 ms  |
    
