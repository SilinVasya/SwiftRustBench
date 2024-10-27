**Processor (cpuinfo brand_raw):** Intel(R) Core(TM) i5-6600 CPU @ 3.30GHz\
**Architecture - bit architecture:** 64bit\
**Architecture - linkage format used for the executable:** ELF\
**Machine type:** x86_64\
**Platform:** Linux-5.4.0-150-generic-x86_64-with-Ubuntu-18.04-bionic\
**Platform aliased:** Linux-5.4.0-150-generic-x86_64-with-Ubuntu-18.04-bionic\
**System:** Linux\
**System's release:** 5.4.0-150-generic\
**System's version:** #167~18.04.1-Ubuntu SMP Wed May 24 00:51:42 UTC 2023\
**Processor:** x86_64\
**Processor (cpuinfo full):** {'python_version': '3.6.9.final.0 (64 bit)', 'cpuinfo_version': [9, 0, 0], 'cpuinfo_version_string': '9.0.0', 'arch': 'X86_64', 'bits': 64, 'count': 4, 'arch_string_raw': 'x86_64', 'vendor_id_raw': 'GenuineIntel', 'brand_raw': 'Intel(R) Core(TM) i5-6600 CPU @ 3.30GHz', 'hz_advertised_friendly': '3.3000 GHz', 'hz_actual_friendly': '3.7032 GHz', 'hz_advertised': [3300000000, 0], 'hz_actual': [3703212000, 0], 'stepping': 3, 'model': 94, 'family': 6, 'flags': ['3dnowprefetch', 'abm', 'acpi', 'adx', 'aes', 'aperfmperf', 'apic', 'arat', 'arch_capabilities', 'arch_perfmon', 'art', 'avx', 'avx2', 'bmi1', 'bmi2', 'bts', 'clflush', 'clflushopt', 'cmov', 'constant_tsc', 'cpuid', 'cpuid_fault', 'cx16', 'cx8', 'de', 'ds_cpl', 'dtes64', 'dtherm', 'dts', 'epb', 'ept', 'ept_ad', 'erms', 'est', 'f16c', 'flexpriority', 'flush_l1d', 'fma', 'fpu', 'fsgsbase', 'fxsr', 'hle', 'ht', 'hwp', 'hwp_act_window', 'hwp_epp', 'hwp_notify', 'ibpb', 'ibrs', 'ida', 'intel_pt', 'invpcid', 'invpcid_single', 'lahf_lm', 'lm', 'mca', 'mce', 'md_clear', 'mmx', 'monitor', 'movbe', 'mpx', 'msr', 'mtrr', 'nonstop_tsc', 'nopl', 'nx', 'osxsave', 'pae', 'pat', 'pbe', 'pcid', 'pclmulqdq', 'pdcm', 'pdpe1gb', 'pebs', 'pge', 'pln', 'pni', 'popcnt', 'pse', 'pse36', 'pti', 'pts', 'rdrand', 'rdrnd', 'rdseed', 'rdtscp', 'rep_good', 'rtm', 'sdbg', 'sep', 'sgx', 'smap', 'smep', 'smx', 'ss', 'ssbd', 'sse', 'sse2', 'sse4_1', 'sse4_2', 'ssse3', 'stibp', 'syscall', 'tm', 'tm2', 'tpr_shadow', 'tsc', 'tsc_adjust', 'tsc_deadline_timer', 'tscdeadline', 'vme', 'vmx', 'vnmi', 'vpid', 'x2apic', 'xgetbv1', 'xsave', 'xsavec', 'xsaveopt', 'xsaves', 'xtopology', 'xtpr'], 'l3_cache_size': 6291456, 'l2_cache_size': 262144, 'l1_data_cache_size': 32768, 'l1_instruction_cache_size': 32768, 'l2_cache_line_size': 256, 'l2_cache_associativity': 6}\

==============================================================\
Binary tree\

**Swift class**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 3.384853 ms  | 1.392797608 ms  |
| Diff | 0.000047 ms  | 0.0003652999999999018 ms  |
| Max | 0.009364 ms  | 0.002854737 ms  |
| Min | 0.003262 ms  | 0.001352748 ms  |
| Avg | 0.003385 ms  | 0.001392432308 ms  |
| Median | 0.003367 ms  | 0.00138215 ms  |
    
**Swift class with protocol**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 8.582551 ms  | 1.384968049 ms  |
| Diff | 0.000135 ms  | 0.0003365269999999754 ms  |
| Max | 0.011944 ms  | 0.002863041 ms  |
| Min | 0.007864 ms  | 0.001346552 ms  |
| Avg | 0.008582 ms  | 0.0013846315220000002 ms  |
| Median | 0.008578 ms  | 0.001381455 ms  |
    
**Swift struct with protocol**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 6.938360 ms  | 1.391157267 ms  |
| Diff | 0.000134 ms  | 0.00034794300000018374 ms  |
| Max | 0.012960 ms  | 0.002847289 ms  |
| Min | 0.006287 ms  | 0.001345754 ms  |
| Avg | 0.006938 ms  | 0.001390809324 ms  |
| Median | 0.006929 ms  | 0.001386039 ms  |
    
**Swift struct with reference**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 1.763765 ms  | 1.381991552 ms  |
| Diff | 0.000035 ms  | 0.0003292939999999245 ms  |
| Max | 0.003406 ms  | 0.002847873 ms  |
| Min | 0.001662 ms  | 0.001337485 ms  |
| Avg | 0.001764 ms  | 0.001381662258 ms  |
| Median | 0.001763 ms  | 0.001373428 ms  |
    
==============================================================\
Circular Deque\


| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 5.635847 ms  | 4.316028318 ms  |
| Diff | 0.000040 ms  | 0.00012740000000022178 ms  |
| Max | 0.009454 ms  | 0.004993653 ms  |
| Min | 0.005577 ms  | 0.004273267 ms  |
| Avg | 0.005636 ms  | 0.004315900918 ms  |
| Median | 0.005616 ms  | 0.004280997 ms  |
    
==============================================================\
Count Square Submatrices with All Ones: https://leetcode.com/problems/count-square-submatrices-with-all-ones/description/?envType=daily-question&envId=2024-10-27\

**Dynamic programming**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 1.594628 ms  | 1.123479219 ms  |
| Diff | 0.000031 ms  | 9.061499999996059e-05 ms  |
| Max | 0.001982 ms  | 0.001839622 ms  |
| Min | 0.001574 ms  | 0.001107062 ms  |
| Avg | 0.001595 ms  | 0.001123388604 ms  |
| Median | 0.001583 ms  | 0.001111354 ms  |
    
**Sum rows**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 9.899376 ms  | 12.315786591 ms  |
| Diff | 0.000029 ms  | 0.00010447400000046514 ms  |
| Max | 0.010644 ms  | 0.013513986 ms  |
| Min | 0.009826 ms  | 0.012228454 ms  |
| Avg | 0.009899 ms  | 0.012315682117000001 ms  |
| Median | 0.009877 ms  | 0.012284859 ms  |
    
==============================================================\
Divide Intervals Into Minimum Number of Groups: https://leetcode.com/problems/divide-intervals-into-minimum-number-of-groups/description/?envType=daily-question&envId=2024-10-12\

**Heap solution**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 10.539083 ms  | 3.557209289 ms  |
| Diff | 0.000079 ms  | 9.693400000010399e-05 ms  |
| Max | 0.011521 ms  | 0.00442526 ms  |
| Min | 0.010390 ms  | 0.003482306 ms  |
| Avg | 0.010539 ms  | 0.003557112355 ms  |
| Median | 0.010515 ms  | 0.003529855 ms  |
    
**Sort borders**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 16.059974 ms  | 4.244802742 ms  |
| Diff | 0.000090 ms  | 9.813800000024742e-05 ms  |
| Max | 0.016933 ms  | 0.005351804 ms  |
| Min | 0.015934 ms  | 0.00419421 ms  |
| Avg | 0.016060 ms  | 0.004244704604 ms  |
| Median | 0.016029 ms  | 0.004227078 ms  |
    
**Sweep window**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 2.759372 ms  | 1.083651331 ms  |
| Diff | 0.000198 ms  | 0.0001652800000000454 ms  |
| Max | 0.003172 ms  | 0.002929184 ms  |
| Min | 0.002710 ms  | 0.001049656 ms  |
| Avg | 0.002759 ms  | 0.001083486051 ms  |
| Median | 0.002740 ms  | 0.001064951 ms  |
    
==============================================================\
Maximum Width Ramp: https://leetcode.com/problems/maximum-width-ramp/description/?envType=daily-question&envId=2024-10-10\


| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000000 | 1000000 |
| Total time      | 51.869572 ms  | 26.203164596 ms  |
| Diff | 0.032840 ms  | 0.07397820499999952 ms  |
| Max | 0.000140 ms  | 9.6499e-05 ms  |
| Min | 0.000051 ms  | 2.5872e-05 ms  |
| Avg | 0.000052 ms  | 2.6129186391e-05 ms  |
| Median | 0.000052 ms  | 2.5934e-05 ms  |
    
==============================================================\
Minimum Add to Make Parentheses Valid: https://leetcode.com/problems/minimum-add-to-make-parentheses-valid/?envType=daily-question&envId=2024-10-09\


| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000000 | 1000000 |
| Total time      | 1.946641 ms  | 0.68023154 ms  |
| Diff | 0.019842 ms  | 0.06236882999999993 ms  |
| Max | 0.000379 ms  | 2.9023e-05 ms  |
| Min | 0.000001 ms  | 5.93e-07 ms  |
| Avg | 0.000002 ms  | 6.1786271e-07 ms  |
| Median | 0.000002 ms  | 6.1e-07 ms  |
    
==============================================================\
Minimum Number of Swaps to Make the String Balanced https://leetcode.com/problems/minimum-number-of-swaps-to-make-the-string-balanced/description/?envType=daily-question&envId=2024-10-08\


| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000000 | 1000000 |
| Total time      | 27.066015 ms  | 10.557832417 ms  |
| Diff | 0.029651 ms  | 0.06264167600000015 ms  |
| Max | 0.004441 ms  | 0.000114561 ms  |
| Min | 0.000025 ms  | 1.0376e-05 ms  |
| Avg | 0.000027 ms  | 1.0495190741000001e-05 ms  |
| Median | 0.000027 ms  | 1.042e-05 ms  |
    
==============================================================\
The Number of the Smallest Unoccupied Chair: https://leetcode.com/problems/the-number-of-the-smallest-unoccupied-chair/description/?envType=daily-question&envId=2024-10-11\


| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 100000 | 100000 |
| Total time      | 213.537128 ms  | 117.860969595 ms  |
| Diff | 0.002998 ms  | 0.008221339000002104 ms  |
| Max | 0.002846 ms  | 0.001647183 ms  |
| Min | 0.002074 ms  | 0.001155491 ms  |
| Avg | 0.002135 ms  | 0.00117852748256 ms  |
| Median | 0.002135 ms  | 0.001173725 ms  |
    
