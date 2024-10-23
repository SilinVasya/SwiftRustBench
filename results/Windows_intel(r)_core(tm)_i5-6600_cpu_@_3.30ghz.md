**Processor (cpuinfo brand_raw):** Intel(R) Core(TM) i5-6600 CPU @ 3.30GHz\
**Architecture - bit architecture:** 64bit\
**Architecture - linkage format used for the executable:** WindowsPE\
**Machine type:** AMD64\
**Platform:** Windows-10-10.0.19045-SP0\
**Platform aliased:** Windows-10-10.0.19045-SP0\
**System:** Windows\
**System's release:** 10\
**System's version:** 10.0.19045\
**Processor:** Intel64 Family 6 Model 94 Stepping 3, GenuineIntel\
**Processor (cpuinfo full):** {'python_version': '3.13.0.final.0 (64 bit)', 'cpuinfo_version': [9, 0, 0], 'cpuinfo_version_string': '9.0.0', 'arch': 'X86_64', 'bits': 64, 'count': 4, 'arch_string_raw': 'AMD64', 'vendor_id_raw': 'GenuineIntel', 'brand_raw': 'Intel(R) Core(TM) i5-6600 CPU @ 3.30GHz', 'hz_advertised_friendly': '3.3000 GHz', 'hz_actual_friendly': '3.3010 GHz', 'hz_advertised': [3300000000, 0], 'hz_actual': [3301000000, 0], 'l2_cache_size': 1048576, 'stepping': 3, 'model': 94, 'family': 6, 'l3_cache_size': 6291456, 'flags': ['3dnow', '3dnowprefetch', 'abm', 'acpi', 'adx', 'aes', 'apic', 'avx', 'avx2', 'bmi1', 'bmi2', 'clflush', 'clflushopt', 'cmov', 'cx16', 'cx8', 'de', 'ds_cpl', 'dtes64', 'dts', 'erms', 'est', 'f16c', 'fma', 'fpu', 'fxsr', 'hle', 'ht', 'ia64', 'intel_pt', 'invpcid', 'lahf_lm', 'mca', 'mce', 'mmx', 'monitor', 'movbe', 'mpx', 'msr', 'mtrr', 'osxsave', 'pae', 'pat', 'pbe', 'pcid', 'pclmulqdq', 'pdcm', 'pge', 'pni', 'popcnt', 'pse', 'pse36', 'rdrnd', 'rdseed', 'rtm', 'sep', 'serial', 'sgx', 'smap', 'smep', 'smx', 'ss', 'sse', 'sse2', 'sse4_1', 'sse4_2', 'ssse3', 'tm', 'tm2', 'tsc', 'tscdeadline', 'vme', 'vmx', 'x2apic', 'xsave', 'xtpr'], 'l2_cache_line_size': 256, 'l2_cache_associativity': 6}\

==============================================================

Binary tree
| Field name  | Swift          | RUST         |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 8.414000 ms  | 8.0212216 ms  |
| Diff | 0.000000 ms  | 0.0002854000000009904 ms  |
| Max | 0.012000 ms  | 0.0098232 ms  |
| Min | 0.007000 ms  | 0.0072881 ms  |
| Avg | 0.008414 ms  | 0.0080209362 ms  |
| Median | 0.008000 ms  | 0.0079811 ms  |
    
==============================================================

Circular Deque
| Field name  | Swift          | RUST         |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 8.309000 ms  | 3.8990881 ms  |
| Diff | 0.000000 ms  | 0.0002465000000002604 ms  |
| Max | 0.010000 ms  | 0.0060865 ms  |
| Min | 0.006000 ms  | 0.0035722 ms  |
| Avg | 0.008309 ms  | 0.0038988416 ms  |
| Median | 0.008000 ms  | 0.0037579 ms  |
    
==============================================================

Divide Intervals Into Minimum Number of Groups (Heap solution): https://leetcode.com/problems/divide-intervals-into-minimum-number-of-groups/description/?envType=daily-question&envId=2024-10-12
| Field name  | Swift          | RUST         |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 12.749000 ms  | 4.2081718 ms  |
| Diff | 0.001000 ms  | 0.00041439999999948185 ms  |
| Max | 0.016000 ms  | 0.0057225 ms  |
| Min | 0.010000 ms  | 0.0037981 ms  |
| Avg | 0.012748 ms  | 0.0042077574000000005 ms  |
| Median | 0.013000 ms  | 0.004092 ms  |
    
==============================================================

Divide Intervals Into Minimum Number of Groups (Sort borders): https://leetcode.com/problems/divide-intervals-into-minimum-number-of-groups/description/?envType=daily-question&envId=2024-10-12
| Field name  | Swift          | RUST         |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 16.958000 ms  | 5.28142 ms  |
| Diff | 0.001000 ms  | 0.0003004999999998148 ms  |
| Max | 0.021000 ms  | 0.0071134 ms  |
| Min | 0.015000 ms  | 0.0047186 ms  |
| Avg | 0.016957 ms  | 0.0052811195 ms  |
| Median | 0.017000 ms  | 0.0051377 ms  |
    
==============================================================

Divide Intervals Into Minimum Number of Groups (Sweep window): https://leetcode.com/problems/divide-intervals-into-minimum-number-of-groups/description/?envType=daily-question&envId=2024-10-12
| Field name  | Swift          | RUST         |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 5.087000 ms  | 2.0185384 ms  |
| Diff | 0.000000 ms  | 0.00048420000000026775 ms  |
| Max | 0.009000 ms  | 0.0058457 ms  |
| Min | 0.003000 ms  | 0.0016139 ms  |
| Avg | 0.005087 ms  | 0.0020180542 ms  |
| Median | 0.005000 ms  | 0.0019779 ms  |
    
==============================================================

Maximum Width Ramp: https://leetcode.com/problems/maximum-width-ramp/description/?envType=daily-question&envId=2024-10-10
| Field name  | Swift          | RUST         |
| ------------- | ------------- | ------------- |
| Measures count      | 1000000 | 1000000 |
| Total time      | 56.849000 ms  | 35.0824577 ms  |
| Diff | 0.098000 ms  | 0.08391280000000023 ms  |
| Max | 0.004000 ms  | 0.0005809 ms  |
| Min | 0.000000 ms  | 3.23e-05 ms  |
| Avg | 0.000057 ms  | 3.49985449e-05 ms  |
| Median | 0.000000 ms  | 3.25e-05 ms  |
    
==============================================================

Minimum Add to Make Parentheses Valid: https://leetcode.com/problems/minimum-add-to-make-parentheses-valid/?envType=daily-question&envId=2024-10-09
| Field name  | Swift          | RUST         |
| ------------- | ------------- | ------------- |
| Measures count      | 1000000 | 1000000 |
| Total time      | 0.956000 ms  | 0.7874674 ms  |
| Diff | 0.056000 ms  | 0.07202740000000007 ms  |
| Max | 0.002000 ms  | 0.0002373 ms  |
| Min | 0.000000 ms  | 6e-07 ms  |
| Avg | 0.000001 ms  | 7.1544e-07 ms  |
| Median | 0.000000 ms  | 7e-07 ms  |
    
==============================================================

Minimum Number of Swaps to Make the String Balanced https://leetcode.com/problems/minimum-number-of-swaps-to-make-the-string-balanced/description/?envType=daily-question&envId=2024-10-08
| Field name  | Swift          | RUST         |
| ------------- | ------------- | ------------- |
| Measures count      | 1000000 | 1000000 |
| Total time      | 24.597000 ms  | 11.421638 ms  |
| Diff | 0.073000 ms  | 0.0810063999999997 ms  |
| Max | 0.002000 ms  | 0.00095 ms  |
| Min | 0.000000 ms  | 1.04e-05 ms  |
| Avg | 0.000025 ms  | 1.13406316e-05 ms  |
| Median | 0.000000 ms  | 1.05e-05 ms  |
    
==============================================================

The Number of the Smallest Unoccupied Chair: https://leetcode.com/problems/the-number-of-the-smallest-unoccupied-chair/description/?envType=daily-question&envId=2024-10-11
| Field name  | Swift          | RUST         |
| ------------- | ------------- | ------------- |
| Measures count      | 100000 | 100000 |
| Total time      | 264.569000 ms  | 119.5215745 ms  |
| Diff | 0.037000 ms  | 0.011904400000005921 ms  |
| Max | 0.007000 ms  | 0.0034998 ms  |
| Min | 0.001000 ms  | 0.0010541 ms  |
| Avg | 0.002645 ms  | 0.001195096701 ms  |
| Median | 0.003000 ms  | 0.0011374 ms  |
    
