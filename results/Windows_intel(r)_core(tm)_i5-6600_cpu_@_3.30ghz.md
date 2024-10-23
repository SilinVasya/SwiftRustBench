**Processor (cpuinfo brand_raw):** Intel(R) Core(TM) i5-6600 CPU @ 3.30GHz
**Architecture - bit architecture:** 64bit
**Architecture - linkage format used for the executable:** WindowsPE
**Machine type:** AMD64
**Platform:** Windows-10-10.0.19045-SP0
**Platform aliased:** Windows-10-10.0.19045-SP0
**System:** Windows
**System's release:** 10
**System's version:** 10.0.19045
**Processor:** Intel64 Family 6 Model 94 Stepping 3, GenuineIntel
**Processor (cpuinfo full):** {'python_version': '3.13.0.final.0 (64 bit)', 'cpuinfo_version': [9, 0, 0], 'cpuinfo_version_string': '9.0.0', 'arch': 'X86_64', 'bits': 64, 'count': 4, 'arch_string_raw': 'AMD64', 'vendor_id_raw': 'GenuineIntel', 'brand_raw': 'Intel(R) Core(TM) i5-6600 CPU @ 3.30GHz', 'hz_advertised_friendly': '3.3000 GHz', 'hz_actual_friendly': '3.3010 GHz', 'hz_advertised': [3300000000, 0], 'hz_actual': [3301000000, 0], 'l2_cache_size': 1048576, 'stepping': 3, 'model': 94, 'family': 6, 'l3_cache_size': 6291456, 'flags': ['3dnow', '3dnowprefetch', 'abm', 'acpi', 'adx', 'aes', 'apic', 'avx', 'avx2', 'bmi1', 'bmi2', 'clflush', 'clflushopt', 'cmov', 'cx16', 'cx8', 'de', 'ds_cpl', 'dtes64', 'dts', 'erms', 'est', 'f16c', 'fma', 'fpu', 'fxsr', 'hle', 'ht', 'ia64', 'intel_pt', 'invpcid', 'lahf_lm', 'mca', 'mce', 'mmx', 'monitor', 'movbe', 'mpx', 'msr', 'mtrr', 'osxsave', 'pae', 'pat', 'pbe', 'pcid', 'pclmulqdq', 'pdcm', 'pge', 'pni', 'popcnt', 'pse', 'pse36', 'rdrnd', 'rdseed', 'rtm', 'sep', 'serial', 'sgx', 'smap', 'smep', 'smx', 'ss', 'sse', 'sse2', 'sse4_1', 'sse4_2', 'ssse3', 'tm', 'tm2', 'tsc', 'tscdeadline', 'vme', 'vmx', 'x2apic', 'xsave', 'xtpr'], 'l2_cache_line_size': 256, 'l2_cache_associativity': 6}

==============================================================

Circular Deque
| Field name  | Swift          | RUST         |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 8.210000 ms  | 3.8503229 ms  |
| Diff | 0.001000 ms  | 0.00021420000000027528 ms  |
| Max | 0.026000 ms  | 0.0054525 ms  |
| Min | 0.007000 ms  | 0.00357 ms  |
| Avg | 0.008209 ms  | 0.0038501087000000003 ms  |
| Median | 0.008000 ms  | 0.0037844 ms  |
    
==============================================================

Divide Intervals Into Minimum Number of Groups (Heap solution): https://leetcode.com/problems/divide-intervals-into-minimum-number-of-groups/description/?envType=daily-question&envId=2024-10-12
| Field name  | Swift          | RUST         |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 12.604000 ms  | 4.223348 ms  |
| Diff | 0.000000 ms  | 0.00018539999999944712 ms  |
| Max | 0.017000 ms  | 0.0060628 ms  |
| Min | 0.011000 ms  | 0.0037913 ms  |
| Avg | 0.012604 ms  | 0.004223162599999999 ms  |
| Median | 0.013000 ms  | 0.0041331 ms  |
    
==============================================================

Divide Intervals Into Minimum Number of Groups (Sort borders): https://leetcode.com/problems/divide-intervals-into-minimum-number-of-groups/description/?envType=daily-question&envId=2024-10-12
| Field name  | Swift          | RUST         |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 16.736000 ms  | 5.2262868 ms  |
| Diff | 0.002000 ms  | 0.00022789999999961452 ms  |
| Max | 0.020000 ms  | 0.0072805 ms  |
| Min | 0.015000 ms  | 0.0046833 ms  |
| Avg | 0.016734 ms  | 0.0052260589 ms  |
| Median | 0.017000 ms  | 0.0051381 ms  |
    
==============================================================

Divide Intervals Into Minimum Number of Groups (Sweep window): https://leetcode.com/problems/divide-intervals-into-minimum-number-of-groups/description/?envType=daily-question&envId=2024-10-12
| Field name  | Swift          | RUST         |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 5.315000 ms  | 2.0279435 ms  |
| Diff | 0.000000 ms  | 0.0001866999999999841 ms  |
| Max | 0.010000 ms  | 0.0032805 ms  |
| Min | 0.003000 ms  | 0.0016932 ms  |
| Avg | 0.005315 ms  | 0.0020277568 ms  |
| Median | 0.005000 ms  | 0.0019314 ms  |
    
==============================================================

Maximum Width Ramp: https://leetcode.com/problems/maximum-width-ramp/description/?envType=daily-question&envId=2024-10-10
| Field name  | Swift          | RUST         |
| ------------- | ------------- | ------------- |
| Measures count      | 1000000 | 1000000 |
| Total time      | 55.557000 ms  | 34.648331 ms  |
| Diff | 0.088000 ms  | 0.08241350000000125 ms  |
| Max | 0.002000 ms  | 0.000766 ms  |
| Min | 0.000000 ms  | 3.23e-05 ms  |
| Avg | 0.000055 ms  | 3.4565917500000005e-05 ms  |
| Median | 0.000000 ms  | 3.25e-05 ms  |
    
==============================================================

Minimum Number of Swaps to Make the String Balanced https://leetcode.com/problems/minimum-number-of-swaps-to-make-the-string-balanced/description/?envType=daily-question&envId=2024-10-08
| Field name  | Swift          | RUST         |
| ------------- | ------------- | ------------- |
| Measures count      | 1000000 | 1000000 |
| Total time      | 24.125000 ms  | 11.2681841 ms  |
| Diff | 0.068000 ms  | 0.08077379999999934 ms  |
| Max | 0.002000 ms  | 0.001551 ms  |
| Min | 0.000000 ms  | 1.04e-05 ms  |
| Avg | 0.000024 ms  | 1.11874103e-05 ms  |
| Median | 0.000000 ms  | 1.06e-05 ms  |
    
==============================================================

Minimum Add to Make Parentheses Valid: https://leetcode.com/problems/minimum-add-to-make-parentheses-valid/?envType=daily-question&envId=2024-10-09
| Field name  | Swift          | RUST         |
| ------------- | ------------- | ------------- |
| Measures count      | 1000000 | 1000000 |
| Total time      | 0.958000 ms  | 0.8049165 ms  |
| Diff | 0.048000 ms  | 0.07855640000000008 ms  |
| Max | 0.002000 ms  | 0.0002306 ms  |
| Min | 0.000000 ms  | 6e-07 ms  |
| Avg | 0.000001 ms  | 7.263600999999999e-07 ms  |
| Median | 0.000000 ms  | 7e-07 ms  |
    
==============================================================

The Number of the Smallest Unoccupied Chair: https://leetcode.com/problems/the-number-of-the-smallest-unoccupied-chair/description/?envType=daily-question&envId=2024-10-11
| Field name  | Swift          | RUST         |
| ------------- | ------------- | ------------- |
| Measures count      | 100000 | 100000 |
| Total time      | 253.703000 ms  | 113.4830443 ms  |
| Diff | 0.025000 ms  | 0.01093670000000202 ms  |
| Max | 0.042000 ms  | 0.0031416 ms  |
| Min | 0.001000 ms  | 0.0010523 ms  |
| Avg | 0.002537 ms  | 0.001134721076 ms  |
| Median | 0.003000 ms  | 0.0010941 ms  |
    
==============================================================

Binary tree
| Field name  | Swift          | RUST         |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 8.205000 ms  | 7.8830356 ms  |
| Diff | 0.000000 ms  | 0.00020580000000069987 ms  |
| Max | 0.012000 ms  | 0.0101834 ms  |
| Min | 0.006000 ms  | 0.0072751 ms  |
| Avg | 0.008205 ms  | 0.0078828298 ms  |
| Median | 0.008000 ms  | 0.0077889 ms  |
    
