Processor (cpuinfo brand_raw): Intel(R) Core(TM) i5-8500 CPU @ 3.00GHz
Architecture - bit architecture: 64bit
Architecture - linkage format used for the executable: 
Machine type: x86_64
Platform: macOS-10.16-x86_64-i386-64bit
Platform aliased: macOS-10.16-x86_64-i386-64bit
System: Darwin
System's release: 24.0.0
System's version: Darwin Kernel Version 24.0.0: Tue Sep 24 23:36:30 PDT 2024; root:xnu-11215.1.12~1/RELEASE_X86_64
Processor: i386
Processor (cpuinfo full): {'python_version': '3.8.0.final.0 (64 bit)', 'cpuinfo_version': [9, 0, 0], 'cpuinfo_version_string': '9.0.0', 'arch': 'X86_64', 'bits': 64, 'count': 6, 'arch_string_raw': 'x86_64', 'vendor_id_raw': 'GenuineIntel', 'brand_raw': 'Intel(R) Core(TM) i5-8500 CPU @ 3.00GHz', 'hz_advertised_friendly': '3.0000 GHz', 'hz_actual_friendly': '3.0000 GHz', 'hz_advertised': [3000000000, 0], 'hz_actual': [3000000000, 0], 'l2_cache_size': 262144, 'stepping': 10, 'model': 158, 'family': 6, 'flags': ['1gbpage', '3dnowprefetch', 'abm', 'acapmsr', 'acpi', 'adx', 'aes', 'apic', 'avx', 'avx1.0', 'avx2', 'bmi1', 'bmi2', 'clflush', 'clflushopt', 'clfsh', 'clfsopt', 'cmov', 'cx16', 'cx8', 'de', 'ds', 'ds_cpl', 'dscpl', 'dtes64', 'dts', 'em64t', 'erms', 'est', 'f16c', 'fma', 'fpu', 'fpu_csds', 'fxsr', 'hle', 'ht', 'htt', 'ibrs', 'intel_pt', 'invpcid', 'ipt', 'l1df', 'lahf', 'lahf_lm', 'lzcnt', 'mca', 'mce', 'mdclear', 'mmx', 'mon', 'monitor', 'movbe', 'mpx', 'msr', 'mtrr', 'osxsave', 'pae', 'pat', 'pbe', 'pcid', 'pclmulqdq', 'pdcm', 'pge', 'pni', 'popcnt', 'prefetchw', 'pse', 'pse36', 'rdrand', 'rdrnd', 'rdseed', 'rdtscp', 'rdwrfsgs', 'rtm', 'seglim64', 'sep', 'sgx', 'sgx_lc', 'sgxlc', 'smap', 'smep', 'smx', 'ss', 'ssbd', 'sse', 'sse2', 'sse3', 'sse4.1', 'sse4.2', 'sse4_1', 'sse4_2', 'ssse3', 'stibp', 'syscall', 'tm', 'tm2', 'tpr', 'tsc', 'tsc_thread_offset', 'tscdeadline', 'tsci', 'tsctmr', 'tsxfa', 'vme', 'vmx', 'x2apic', 'xd', 'xsave', 'xtpr'], 'l2_cache_line_size': 256, 'l2_cache_associativity': 6}

==============================================================

Circular Deque
| Field name  | Swift          | RUST         |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 5.595097 ms  | 4.269092519 ms  |
| Diff | 0.000050 ms  | 0.00015543000000040053 ms  |
| Max | 0.029890 ms  | 0.004752198 ms  |
| Min | 0.005436 ms  | 0.004197797 ms  |
| Avg | 0.005595 ms  | 0.004268937089 ms  |
| Median | 0.005579 ms  | 0.004248139 ms  |
    
==============================================================

Binary tree
| Field name  | Swift          | RUST         |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 6.745862 ms  | 6.415537195 ms  |
| Diff | 0.000102 ms  | 0.00020232600000014145 ms  |
| Max | 0.029158 ms  | 0.008303539 ms  |
| Min | 0.006379 ms  | 0.006058639 ms  |
| Avg | 0.006746 ms  | 0.0064153348689999995 ms  |
| Median | 0.006689 ms  | 0.006374148 ms  |
    
==============================================================

Divide Intervals Into Minimum Number of Groups (Sort borders): https://leetcode.com/problems/divide-intervals-into-minimum-number-of-groups/description/?envType=daily-question&envId=2024-10-12
| Field name  | Swift          | RUST         |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 15.824591 ms  | 4.230723623 ms  |
| Diff | 0.000093 ms  | 0.00017756800000068296 ms  |
| Max | 0.017390 ms  | 0.005025503 ms  |
| Min | 0.015306 ms  | 0.004101803 ms  |
| Avg | 0.015824 ms  | 0.004230546054999999 ms  |
| Median | 0.015791 ms  | 0.004217542 ms  |
    
==============================================================

Divide Intervals Into Minimum Number of Groups (Heap solution): https://leetcode.com/problems/divide-intervals-into-minimum-number-of-groups/description/?envType=daily-question&envId=2024-10-12
| Field name  | Swift          | RUST         |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 9.778149 ms  | 3.52047084 ms  |
| Diff | 0.000156 ms  | 0.00010129900000022118 ms  |
| Max | 0.011455 ms  | 0.004044533 ms  |
| Min | 0.009465 ms  | 0.003407657 ms  |
| Avg | 0.009778 ms  | 0.003520369541 ms  |
| Median | 0.009762 ms  | 0.003489841 ms  |
    
==============================================================

Divide Intervals Into Minimum Number of Groups (Sweep window): https://leetcode.com/problems/divide-intervals-into-minimum-number-of-groups/description/?envType=daily-question&envId=2024-10-12
| Field name  | Swift          | RUST         |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 3.374408 ms  | 0.918829208 ms  |
| Diff | 0.000183 ms  | 0.00016159800000004054 ms  |
| Max | 0.004514 ms  | 0.002167416 ms  |
| Min | 0.003229 ms  | 0.000864624 ms  |
| Avg | 0.003374 ms  | 0.00091866761 ms  |
| Median | 0.003337 ms  | 0.000898764 ms  |
    
==============================================================

The Number of the Smallest Unoccupied Chair: https://leetcode.com/problems/the-number-of-the-smallest-unoccupied-chair/description/?envType=daily-question&envId=2024-10-11
| Field name  | Swift          | RUST         |
| ------------- | ------------- | ------------- |
| Measures count      | 100000 | 100000 |
| Total time      | 210.381036 ms  | 102.591024177 ms  |
| Diff | 0.005499 ms  | 0.010480056999995213 ms  |
| Max | 0.020663 ms  | 0.002187078 ms  |
| Min | 0.002000 ms  | 0.000977905 ms  |
| Avg | 0.002104 ms  | 0.0010258054412 ms  |
| Median | 0.002082 ms  | 0.001012658 ms  |
    
==============================================================

Minimum Add to Make Parentheses Valid: https://leetcode.com/problems/minimum-add-to-make-parentheses-valid/?envType=daily-question&envId=2024-10-09
| Field name  | Swift          | RUST         |
| ------------- | ------------- | ------------- |
| Measures count      | 1000000 | 1000000 |
| Total time      | 1.083411 ms  | 0.806390247 ms  |
| Diff | 0.030865 ms  | 0.07935402199999997 ms  |
| Max | 0.002870 ms  | 6.4949e-05 ms  |
| Min | 0.000000 ms  | 6.64e-07 ms  |
| Avg | 0.000001 ms  | 7.27036225e-07 ms  |
| Median | 0.000001 ms  | 7.25e-07 ms  |
    
==============================================================

Minimum Number of Swaps to Make the String Balanced https://leetcode.com/problems/minimum-number-of-swaps-to-make-the-string-balanced/description/?envType=daily-question&envId=2024-10-08
| Field name  | Swift          | RUST         |
| ------------- | ------------- | ------------- |
| Measures count      | 1000000 | 1000000 |
| Total time      | 26.589212 ms  | 10.375920675 ms  |
| Diff | 0.037116 ms  | 0.081894844999999 ms  |
| Max | 0.006497 ms  | 0.000154465 ms  |
| Min | 0.000025 ms  | 9.977e-06 ms  |
| Avg | 0.000027 ms  | 1.029402583e-05 ms  |
| Median | 0.000026 ms  | 1.0296e-05 ms  |
    
==============================================================

Maximum Width Ramp: https://leetcode.com/problems/maximum-width-ramp/description/?envType=daily-question&envId=2024-10-10
| Field name  | Swift          | RUST         |
| ------------- | ------------- | ------------- |
| Measures count      | 1000000 | 1000000 |
| Total time      | 31.030184 ms  | 26.036515375 ms  |
| Diff | 0.039546 ms  | 0.0835727559999988 ms  |
| Max | 0.002145 ms  | 0.00019769 ms  |
| Min | 0.000030 ms  | 2.535e-05 ms  |
| Avg | 0.000031 ms  | 2.5952942619e-05 ms  |
| Median | 0.000031 ms  | 2.5541e-05 ms  |
    
