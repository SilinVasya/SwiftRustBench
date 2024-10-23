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

==============================================================

Binary tree
| Field name  | Swift          | RUST         |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 19.568861 ms  | 10.101205719 ms  |
| Diff | 0.000074 ms  | 0.0002644319999998146 ms  |
| Max | 0.027683 ms  | 0.017135494 ms  |
| Min | 0.019332 ms  | 0.009951658 ms  |
| Avg | 0.019569 ms  | 0.010100941287 ms  |
| Median | 0.019498 ms  | 0.010023977 ms  |
    
==============================================================

Circular Deque
| Field name  | Swift          | RUST         |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 13.993148 ms  | 4.434630058 ms  |
| Diff | 0.000084 ms  | 0.00022848199999980778 ms  |
| Max | 0.022202 ms  | 0.006689434 ms  |
| Min | 0.013926 ms  | 0.004351902 ms  |
| Avg | 0.013993 ms  | 0.0044344015760000004 ms  |
| Median | 0.013952 ms  | 0.004379122 ms  |
    
==============================================================

Divide Intervals Into Minimum Number of Groups (Heap solution): https://leetcode.com/problems/divide-intervals-into-minimum-number-of-groups/description/?envType=daily-question&envId=2024-10-12
| Field name  | Swift          | RUST         |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 11.025319 ms  | 4.20200146 ms  |
| Diff | 0.000206 ms  | 0.00022281000000035078 ms  |
| Max | 0.017500 ms  | 0.006247979 ms  |
| Min | 0.010924 ms  | 0.004129835 ms  |
| Avg | 0.011025 ms  | 0.004201778650000001 ms  |
| Median | 0.010955 ms  | 0.004177066 ms  |
    
==============================================================

Divide Intervals Into Minimum Number of Groups (Sort borders): https://leetcode.com/problems/divide-intervals-into-minimum-number-of-groups/description/?envType=daily-question&envId=2024-10-12
| Field name  | Swift          | RUST         |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 14.567287 ms  | 5.063222214 ms  |
| Diff | 0.000306 ms  | 0.0002679450000000472 ms  |
| Max | 0.020765 ms  | 0.011145686 ms  |
| Min | 0.014457 ms  | 0.004988555 ms  |
| Avg | 0.014567 ms  | 0.005062954269 ms  |
| Median | 0.014529 ms  | 0.005017079 ms  |
    
==============================================================

Divide Intervals Into Minimum Number of Groups (Sweep window): https://leetcode.com/problems/divide-intervals-into-minimum-number-of-groups/description/?envType=daily-question&envId=2024-10-12
| Field name  | Swift          | RUST         |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 5.095737 ms  | 1.431079684 ms  |
| Diff | 0.000221 ms  | 0.0002825109999999853 ms  |
| Max | 0.011533 ms  | 0.003375106 ms  |
| Min | 0.004562 ms  | 0.001383184 ms  |
| Avg | 0.005096 ms  | 0.0014307971729999999 ms  |
| Median | 0.005020 ms  | 0.001402328 ms  |
    
==============================================================

Maximum Width Ramp: https://leetcode.com/problems/maximum-width-ramp/description/?envType=daily-question&envId=2024-10-10
| Field name  | Swift          | RUST         |
| ------------- | ------------- | ------------- |
| Measures count      | 1000000 | 1000000 |
| Total time      | 39.821101 ms  | 32.39802858 ms  |
| Diff | 0.053203 ms  | 0.11227113700000046 ms  |
| Max | 0.003753 ms  | 0.002527524 ms  |
| Min | 0.000037 ms  | 3.1087e-05 ms  |
| Avg | 0.000040 ms  | 3.2285757443e-05 ms  |
| Median | 0.000039 ms  | 3.1205e-05 ms  |
    
==============================================================

Minimum Add to Make Parentheses Valid: https://leetcode.com/problems/minimum-add-to-make-parentheses-valid/?envType=daily-question&envId=2024-10-09
| Field name  | Swift          | RUST         |
| ------------- | ------------- | ------------- |
| Measures count      | 1000000 | 1000000 |
| Total time      | 1.051622 ms  | 1.04477321 ms  |
| Diff | 0.036822 ms  | 0.10297762399999999 ms  |
| Max | 0.003637 ms  | 0.000215102 ms  |
| Min | 0.000000 ms  | 8.48e-07 ms  |
| Avg | 0.000001 ms  | 9.41795586e-07 ms  |
| Median | 0.000001 ms  | 9.23e-07 ms  |
    
==============================================================

Minimum Number of Swaps to Make the String Balanced https://leetcode.com/problems/minimum-number-of-swaps-to-make-the-string-balanced/description/?envType=daily-question&envId=2024-10-08
| Field name  | Swift          | RUST         |
| ------------- | ------------- | ------------- |
| Measures count      | 1000000 | 1000000 |
| Total time      | 31.296189 ms  | 12.620955491 ms  |
| Diff | 0.044612 ms  | 0.10536073099999932 ms  |
| Max | 0.007096 ms  | 0.002268579 ms  |
| Min | 0.000029 ms  | 1.2443e-05 ms  |
| Avg | 0.000031 ms  | 1.251559476e-05 ms  |
| Median | 0.000031 ms  | 1.2491e-05 ms  |
    
==============================================================

The Number of the Smallest Unoccupied Chair: https://leetcode.com/problems/the-number-of-the-smallest-unoccupied-chair/description/?envType=daily-question&envId=2024-10-11
| Field name  | Swift          | RUST         |
| ------------- | ------------- | ------------- |
| Measures count      | 100000 | 100000 |
| Total time      | 243.195832 ms  | 130.261170545 ms  |
| Diff | 0.009526 ms  | 0.014514920999999958 ms  |
| Max | 0.008513 ms  | 0.068153826 ms  |
| Min | 0.002400 ms  | 0.001284017 ms  |
| Avg | 0.002432 ms  | 0.00130246655624 ms  |
| Median | 0.002416 ms  | 0.001291156 ms  |
    
