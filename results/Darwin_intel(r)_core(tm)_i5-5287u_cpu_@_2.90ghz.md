**Processor (cpuinfo brand_raw):** Intel(R) Core(TM) i5-5287U CPU @ 2.90GHz\
**Architecture - bit architecture:** 64bit\
**Architecture - linkage format used for the executable:** \
**Machine type:** x86_64\
**Platform:** macOS-12.6.5-x86_64-i386-64bit\
**Platform aliased:** macOS-12.6.5-x86_64-i386-64bit\
**System:** Darwin\
**System's release:** 21.6.0\
**System's version:** Darwin Kernel Version 21.6.0: Thu Mar  9 20:08:59 PST 2023; root:xnu-8020.240.18.700.8~1/RELEASE_X86_64\
**Processor:** i386\
**Processor (cpuinfo full):** {'python_version': '3.10.0.final.0 (64 bit)', 'cpuinfo_version': [9, 0, 0], 'cpuinfo_version_string': '9.0.0', 'arch': 'X86_64', 'bits': 64, 'count': 4, 'arch_string_raw': 'x86_64', 'vendor_id_raw': 'GenuineIntel', 'brand_raw': 'Intel(R) Core(TM) i5-5287U CPU @ 2.90GHz', 'hz_advertised_friendly': '2.9000 GHz', 'hz_actual_friendly': '2.9000 GHz', 'hz_advertised': [2900000000, 0], 'hz_actual': [2900000000, 0], 'l2_cache_size': 262144, 'stepping': 4, 'model': 61, 'family': 6, 'flags': ['1gbpage', '3dnowprefetch', 'abm', 'acpi', 'adx', 'aes', 'apic', 'avx', 'avx1.0', 'avx2', 'bmi1', 'bmi2', 'clflush', 'clfsh', 'cmov', 'cx16', 'cx8', 'de', 'ds', 'ds_cpl', 'dscpl', 'dtes64', 'dts', 'em64t', 'erms', 'est', 'f16c', 'fma', 'fpu', 'fpu_csds', 'fxsr', 'ht', 'htt', 'ibrs', 'intel_pt', 'invpcid', 'ipt', 'l1df', 'lahf', 'lahf_lm', 'lzcnt', 'mca', 'mce', 'mdclear', 'mmx', 'mon', 'monitor', 'movbe', 'msr', 'mtrr', 'osxsave', 'pae', 'pat', 'pbe', 'pcid', 'pclmulqdq', 'pdcm', 'pge', 'pni', 'popcnt', 'prefetchw', 'pse', 'pse36', 'rdrand', 'rdrnd', 'rdseed', 'rdtscp', 'rdwrfsgs', 'seglim64', 'sep', 'smap', 'smep', 'ss', 'ssbd', 'sse', 'sse2', 'sse3', 'sse4.1', 'sse4.2', 'sse4_1', 'sse4_2', 'ssse3', 'stibp', 'syscall', 'tm', 'tm2', 'tpr', 'tsc', 'tsc_thread_offset', 'tscdeadline', 'tsci', 'tsctmr', 'vme', 'vmx', 'x2apic', 'xd', 'xsave', 'xtpr'], 'l2_cache_line_size': 256, 'l2_cache_associativity': 6}\

==============================================================\
Binary tree\

**Swift class**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 6332.844 ms  | 5455.096724 ms  |
| Diff | 0.329 ms  | 0.4036529999993377 ms  |
| Max | 10.609 ms  | 9.355472 ms  |
| Min | 6.121 ms  | 5.179935 ms  |
| Avg | 6.333 ms  | 5.454693071 ms  |
| Median | 6.225 ms  | 5.296032 ms  |
    
**Swift class with protocol**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 13327.656 ms  | 5802.067371 ms  |
| Diff | 0.461 ms  | 0.407309999994169 ms  |
| Max | 33.673 ms  | 11.542215 ms  |
| Min | 12.174 ms  | 5.183097 ms  |
| Avg | 13.327 ms  | 5.80162664 ms  |
| Median | 12.659 ms  | 5.301577 ms  |
    
**Swift struct with protocol**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 14838.149 ms  | 5942.13925 ms  |
| Diff | 0.437 ms  | 0.4307890000001535 ms  |
| Max | 142.768 ms  | 13.088908 ms  |
| Min | 13.573 ms  | 5.178388 ms  |
| Avg | 14.838 ms  | 5.941708461 ms  |
| Median | 14.295 ms  | 5.414623 ms  |
    
**Swift struct with reference**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 10475.893 ms  | 5445.195029 ms  |
| Diff | 0.183 ms  | 0.47581599999979574 ms  |
| Max | 16.871 ms  | 9.458648 ms  |
| Min | 9.321 ms  | 5.173243 ms  |
| Avg | 10.476 ms  | 5.444719213 ms  |
| Median | 10.571 ms  | 5.30357 ms  |
    
==============================================================\
Circular Deque\


| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 15091.916 ms  | 4896.182188 ms  |
| Diff | 0.241 ms  | 0.4366869999996581 ms  |
| Max | 36.915 ms  | 10.511462 ms  |
| Min | 13.983 ms  | 4.335625 ms  |
| Avg | 15.092 ms  | 4.895745501 ms  |
| Median | 14.269 ms  | 4.507969 ms  |
    
==============================================================\
Count Square Submatrices with All Ones: https://leetcode.com/problems/count-square-submatrices-with-all-ones/description/?envType=daily-question&envId=2024-10-27\

**Dynamic programming**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 1524.283 ms  | 1217.701582 ms  |
| Diff | 0.108 ms  | 0.18282499999999757 ms  |
| Max | 6.130 ms  | 2.380352 ms  |
| Min | 1.448 ms  | 1.185623 ms  |
| Avg | 1.524 ms  | 1.217518757 ms  |
| Median | 1.476 ms  | 1.192707 ms  |
    
**Sum rows**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 8761.958 ms  | 13891.29507 ms  |
| Diff | 0.131 ms  | 0.3436079999996622 ms  |
| Max | 16.264 ms  | 21.261423 ms  |
| Min | 8.325 ms  | 13.703955 ms  |
| Avg | 8.762 ms  | 13.890951462 ms  |
| Median | 8.696 ms  | 13.835123 ms  |
    
==============================================================\
Divide Intervals Into Minimum Number of Groups: https://leetcode.com/problems/divide-intervals-into-minimum-number-of-groups/description/?envType=daily-question&envId=2024-10-12\

**Heap solution**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 11072.782 ms  | 4286.09779 ms  |
| Diff | 0.289 ms  | 0.198342000000018 ms  |
| Max | 18.878 ms  | 8.45452 ms  |
| Min | 10.920 ms  | 4.128193 ms  |
| Avg | 11.072 ms  | 4.285899448 ms  |
| Median | 10.995 ms  | 4.218598 ms  |
    
**Sort borders**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 14702.471 ms  | 5159.817408 ms  |
| Diff | 0.385 ms  | 0.31577699999996156 ms  |
| Max | 20.679 ms  | 11.312305 ms  |
| Min | 14.541 ms  | 5.04403 ms  |
| Avg | 14.702 ms  | 5.159501631 ms  |
| Median | 14.635 ms  | 5.097706 ms  |
    
**Sweep window**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 5221.667 ms  | 1480.773133 ms  |
| Diff | 0.267 ms  | 0.44472499999992365 ms  |
| Max | 9.953 ms  | 6.12927 ms  |
| Min | 4.561 ms  | 1.388848 ms  |
| Avg | 5.221 ms  | 1.480328408 ms  |
| Median | 5.116 ms  | 1.449065 ms  |
    
==============================================================\
Maximum Width Ramp: https://leetcode.com/problems/maximum-width-ramp/description/?envType=daily-question&envId=2024-10-10\


| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000000 | 1000000 |
| Total time      | 39800.416 ms  | 31888.849196 ms  |
| Diff | 55.417 ms  | 108.56882899999931 ms  |
| Max | 1.655 ms  | 34.221835 ms  |
| Min | 0.036 ms  | 0.031169 ms  |
| Avg | 0.040 ms  | 0.03178028 ms  |
| Median | 0.039 ms  | 0.031259 ms  |
    
==============================================================\
Minimum Add to Make Parentheses Valid: https://leetcode.com/problems/minimum-add-to-make-parentheses-valid/?envType=daily-question&envId=2024-10-09\


| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000000 | 1000000 |
| Total time      | 960.882 ms  | 985.746665 ms  |
| Diff | 32.486 ms  | 97.92631200000002 ms  |
| Max | 0.158 ms  | 0.221956 ms  |
| Min | 0.000 ms  | 0.000838 ms  |
| Avg | 0.001 ms  | 0.000888 ms  |
| Median | 0.001 ms  | 0.00087 ms  |
    
==============================================================\
Minimum Number of Swaps to Make the String Balanced https://leetcode.com/problems/minimum-number-of-swaps-to-make-the-string-balanced/description/?envType=daily-question&envId=2024-10-08\


| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000000 | 1000000 |
| Total time      | 31994.841 ms  | 12694.171074 ms  |
| Diff | 43.227 ms  | 106.68570300000013 ms  |
| Max | 3.890 ms  | 1.019318 ms  |
| Min | 0.030 ms  | 0.012444 ms  |
| Avg | 0.032 ms  | 0.012587 ms  |
| Median | 0.032 ms  | 0.0125 ms  |
    
==============================================================\
The Number of the Smallest Unoccupied Chair: https://leetcode.com/problems/the-number-of-the-smallest-unoccupied-chair/description/?envType=daily-question&envId=2024-10-11\


| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 100000 | 100000 |
| Total time      | 246131.290 ms  | 132063.029526 ms  |
| Diff | 16.891 ms  | 16.56035800002087 ms  |
| Max | 20.742 ms  | 10.755721 ms  |
| Min | 2.404 ms  | 1.295927 ms  |
| Avg | 2.461 ms  | 1.3204646916799999 ms  |
| Median | 2.437 ms  | 1.304211 ms  |
    
