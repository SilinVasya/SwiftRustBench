**Processor (cpuinfo brand_raw): Intel(R) Core(TM) i5-6600 CPU @ 3.30GHz**\
**Architecture - bit architecture: 64bit**\
**Architecture - linkage format used for the executable: ELF**\
**Machine type: x86_64**\
**Platform: Linux-5.4.0-150-generic-x86_64-with-Ubuntu-18.04-bionic**\
**Platform aliased: Linux-5.4.0-150-generic-x86_64-with-Ubuntu-18.04-bionic**\
**System: Linux**\
**System's release: 5.4.0-150-generic**\
**System's version: #167~18.04.1-Ubuntu SMP Wed May 24 00:51:42 UTC 2023**\
**Processor: x86_64**\
**Processor (cpuinfo full): {'python_version': '3.6.9.final.0 (64 bit)', 'cpuinfo_version': [9, 0, 0], 'cpuinfo_version_string': '9.0.0', 'arch': 'X86_64', 'bits': 64, 'count': 4, 'arch_string_raw': 'x86_64', 'vendor_id_raw': 'GenuineIntel', 'brand_raw': 'Intel(R) Core(TM) i5-6600 CPU @ 3.30GHz', 'hz_advertised_friendly': '3.3000 GHz', 'hz_actual_friendly': '3.7248 GHz', 'hz_advertised': [3300000000, 0], 'hz_actual': [3724798000, 0], 'stepping': 3, 'model': 94, 'family': 6, 'flags': ['3dnowprefetch', 'abm', 'acpi', 'adx', 'aes', 'aperfmperf', 'apic', 'arat', 'arch_capabilities', 'arch_perfmon', 'art', 'avx', 'avx2', 'bmi1', 'bmi2', 'bts', 'clflush', 'clflushopt', 'cmov', 'constant_tsc', 'cpuid', 'cpuid_fault', 'cx16', 'cx8', 'de', 'ds_cpl', 'dtes64', 'dtherm', 'dts', 'epb', 'ept', 'ept_ad', 'erms', 'est', 'f16c', 'flexpriority', 'flush_l1d', 'fma', 'fpu', 'fsgsbase', 'fxsr', 'hle', 'ht', 'hwp', 'hwp_act_window', 'hwp_epp', 'hwp_notify', 'ibpb', 'ibrs', 'ida', 'intel_pt', 'invpcid', 'invpcid_single', 'lahf_lm', 'lm', 'mca', 'mce', 'md_clear', 'mmx', 'monitor', 'movbe', 'mpx', 'msr', 'mtrr', 'nonstop_tsc', 'nopl', 'nx', 'osxsave', 'pae', 'pat', 'pbe', 'pcid', 'pclmulqdq', 'pdcm', 'pdpe1gb', 'pebs', 'pge', 'pln', 'pni', 'popcnt', 'pse', 'pse36', 'pti', 'pts', 'rdrand', 'rdrnd', 'rdseed', 'rdtscp', 'rep_good', 'rtm', 'sdbg', 'sep', 'sgx', 'smap', 'smep', 'smx', 'ss', 'ssbd', 'sse', 'sse2', 'sse4_1', 'sse4_2', 'ssse3', 'stibp', 'syscall', 'tm', 'tm2', 'tpr_shadow', 'tsc', 'tsc_adjust', 'tsc_deadline_timer', 'tscdeadline', 'vme', 'vmx', 'vnmi', 'vpid', 'x2apic', 'xgetbv1', 'xsave', 'xsavec', 'xsaveopt', 'xsaves', 'xtopology', 'xtpr'], 'l3_cache_size': 6291456, 'l2_cache_size': 262144, 'l1_data_cache_size': 32768, 'l1_instruction_cache_size': 32768, 'l2_cache_line_size': 256, 'l2_cache_associativity': 6}**\

==============================================================

Binary tree
| Field name  | Swift          | RUST         |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 3.251731 ms  | 2.433255279 ms  |
| Diff | 0.000031 ms  | 0.00016967899999986713 ms  |
| Max | 0.005967 ms  | 0.002946852 ms  |
| Min | 0.003167 ms  | 0.00240526 ms  |
| Avg | 0.003252 ms  | 0.0024330856 ms  |
| Median | 0.003225 ms  | 0.002411642 ms  |
    
==============================================================

Circular Deque
| Field name  | Swift          | RUST         |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 5.612592 ms  | 4.481173738 ms  |
| Diff | 0.000037 ms  | 0.00010350500000022578 ms  |
| Max | 0.006383 ms  | 0.00525082 ms  |
| Min | 0.005564 ms  | 0.00443374 ms  |
| Avg | 0.005613 ms  | 0.004481070233 ms  |
| Median | 0.005597 ms  | 0.004447333 ms  |
    
==============================================================

Divide Intervals Into Minimum Number of Groups (Heap solution): https://leetcode.com/problems/divide-intervals-into-minimum-number-of-groups/description/?envType=daily-question&envId=2024-10-12
| Field name  | Swift          | RUST         |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 10.595075 ms  | 3.417962919 ms  |
| Diff | 0.000084 ms  | 9.654999999986202e-05 ms  |
| Max | 0.011572 ms  | 0.00428045 ms  |
| Min | 0.010402 ms  | 0.003364082 ms  |
| Avg | 0.010595 ms  | 0.003417866369 ms  |
| Median | 0.010575 ms  | 0.003397352 ms  |
    
==============================================================

Divide Intervals Into Minimum Number of Groups (Sort borders): https://leetcode.com/problems/divide-intervals-into-minimum-number-of-groups/description/?envType=daily-question&envId=2024-10-12
| Field name  | Swift          | RUST         |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 16.035266 ms  | 4.256900843 ms  |
| Diff | 0.000088 ms  | 0.00010129800000058253 ms  |
| Max | 0.017084 ms  | 0.004995392 ms  |
| Min | 0.015888 ms  | 0.004195063 ms  |
| Avg | 0.016035 ms  | 0.004256799545 ms  |
| Median | 0.016004 ms  | 0.004230587 ms  |
    
==============================================================

Divide Intervals Into Minimum Number of Groups (Sweep window): https://leetcode.com/problems/divide-intervals-into-minimum-number-of-groups/description/?envType=daily-question&envId=2024-10-12
| Field name  | Swift          | RUST         |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 2.759746 ms  | 1.083354011 ms  |
| Diff | 0.000153 ms  | 0.0001716899999999466 ms  |
| Max | 0.003993 ms  | 0.002990981 ms  |
| Min | 0.002701 ms  | 0.001046598 ms  |
| Avg | 0.002760 ms  | 0.001083182321 ms  |
| Median | 0.002728 ms  | 0.001062682 ms  |
    
==============================================================

Maximum Width Ramp: https://leetcode.com/problems/maximum-width-ramp/description/?envType=daily-question&envId=2024-10-10
| Field name  | Swift          | RUST         |
| ------------- | ------------- | ------------- |
| Measures count      | 1000000 | 1000000 |
| Total time      | 51.867879 ms  | 26.159555285 ms  |
| Diff | 0.030114 ms  | 0.0719558659999997 ms  |
| Max | 0.002323 ms  | 8.8578e-05 ms  |
| Min | 0.000051 ms  | 2.5864e-05 ms  |
| Avg | 0.000052 ms  | 2.6087599418999997e-05 ms  |
| Median | 0.000052 ms  | 2.5939e-05 ms  |
    
==============================================================

Minimum Add to Make Parentheses Valid: https://leetcode.com/problems/minimum-add-to-make-parentheses-valid/?envType=daily-question&envId=2024-10-09
| Field name  | Swift          | RUST         |
| ------------- | ------------- | ------------- |
| Measures count      | 1000000 | 1000000 |
| Total time      | 0.764107 ms  | 0.705881068 ms  |
| Diff | 0.020466 ms  | 0.062594135 ms  |
| Max | 0.002327 ms  | 0.000433256 ms  |
| Min | 0.000000 ms  | 6.15e-07 ms  |
| Avg | 0.000001 ms  | 6.43286933e-07 ms  |
| Median | 0.000001 ms  | 6.31e-07 ms  |
    
==============================================================

Minimum Number of Swaps to Make the String Balanced https://leetcode.com/problems/minimum-number-of-swaps-to-make-the-string-balanced/description/?envType=daily-question&envId=2024-10-08
| Field name  | Swift          | RUST         |
| ------------- | ------------- | ------------- |
| Measures count      | 1000000 | 1000000 |
| Total time      | 26.893736 ms  | 10.560034726 ms  |
| Diff | 0.030193 ms  | 0.06260636499999883 ms  |
| Max | 0.004818 ms  | 0.000298661 ms  |
| Min | 0.000025 ms  | 1.0374e-05 ms  |
| Avg | 0.000027 ms  | 1.0497428361e-05 ms  |
| Median | 0.000027 ms  | 1.0422e-05 ms  |
    
==============================================================

The Number of the Smallest Unoccupied Chair: https://leetcode.com/problems/the-number-of-the-smallest-unoccupied-chair/description/?envType=daily-question&envId=2024-10-11
| Field name  | Swift          | RUST         |
| ------------- | ------------- | ------------- |
| Measures count      | 100000 | 100000 |
| Total time      | 209.082871 ms  | 118.065629824 ms  |
| Diff | 0.003770 ms  | 0.00870703600000411 ms  |
| Max | 0.003191 ms  | 0.001839197 ms  |
| Min | 0.002072 ms  | 0.001157943 ms  |
| Avg | 0.002091 ms  | 0.0011805692278799998 ms  |
| Median | 0.002082 ms  | 0.001175792 ms  |
    
