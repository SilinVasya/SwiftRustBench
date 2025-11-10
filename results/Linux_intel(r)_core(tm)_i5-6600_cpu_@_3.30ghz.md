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
| Total time      | 3384.853 ms  | 1392.797608 ms  |
| Diff | 0.047 ms  | 0.3652999999999018 ms  |
| Max | 9.364 ms  | 2.854737 ms  |
| Min | 3.262 ms  | 1.352748 ms  |
| Avg | 3.385 ms  | 1.392432308 ms  |
| Median | 3.367 ms  | 1.38215 ms  |
    
**Swift class with protocol**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 8582.551 ms  | 1384.968049 ms  |
| Diff | 0.135 ms  | 0.3365269999999754 ms  |
| Max | 11.944 ms  | 2.863041 ms  |
| Min | 7.864 ms  | 1.346552 ms  |
| Avg | 8.582 ms  | 1.3846315220000002 ms  |
| Median | 8.578 ms  | 1.381455 ms  |
    
**Swift struct with protocol**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 6938.360 ms  | 1391.157267 ms  |
| Diff | 0.134 ms  | 0.34794300000018374 ms  |
| Max | 12.960 ms  | 2.847289 ms  |
| Min | 6.287 ms  | 1.345754 ms  |
| Avg | 6.938 ms  | 1.390809324 ms  |
| Median | 6.929 ms  | 1.386039 ms  |
    
**Swift struct with reference**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 1763.765 ms  | 1381.991552 ms  |
| Diff | 0.035 ms  | 0.3292939999999245 ms  |
| Max | 3.406 ms  | 2.847873 ms  |
| Min | 1.662 ms  | 1.337485 ms  |
| Avg | 1.764 ms  | 1.381662258 ms  |
| Median | 1.763 ms  | 1.373428 ms  |
    
==============================================================\
Circular Deque\


| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 5635.847 ms  | 4316.028318 ms  |
| Diff | 0.040 ms  | 0.12740000000022178 ms  |
| Max | 9.454 ms  | 4.993653 ms  |
| Min | 5.577 ms  | 4.273267 ms  |
| Avg | 5.636 ms  | 4.315900918 ms  |
| Median | 5.616 ms  | 4.280997 ms  |
    
==============================================================\
Count Square Submatrices with All Ones: https://leetcode.com/problems/count-square-submatrices-with-all-ones/description/?envType=daily-question&envId=2024-10-27\

**Dynamic programming**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 1594.628 ms  | 1123.479219 ms  |
| Diff | 0.031 ms  | 0.09061499999996059 ms  |
| Max | 1.982 ms  | 1.839622 ms  |
| Min | 1.574 ms  | 1.107062 ms  |
| Avg | 1.595 ms  | 1.123388604 ms  |
| Median | 1.583 ms  | 1.111354 ms  |
    
**Sum rows**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 9899.376 ms  | 12315.786591 ms  |
| Diff | 0.029 ms  | 0.10447400000046514 ms  |
| Max | 10.644 ms  | 13.513986 ms  |
| Min | 9.826 ms  | 12.228454 ms  |
| Avg | 9.899 ms  | 12.315682117000001 ms  |
| Median | 9.877 ms  | 12.284859 ms  |
    
==============================================================\
Divide Intervals Into Minimum Number of Groups: https://leetcode.com/problems/divide-intervals-into-minimum-number-of-groups/description/?envType=daily-question&envId=2024-10-12\

**Heap solution**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 10539.083 ms  | 3557.209289 ms  |
| Diff | 0.079 ms  | 0.09693400000010399 ms  |
| Max | 11.521 ms  | 4.42526 ms  |
| Min | 10.390 ms  | 3.482306 ms  |
| Avg | 10.539 ms  | 3.557112355 ms  |
| Median | 10.515 ms  | 3.529855 ms  |
    
**Sort borders**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 16059.974 ms  | 4244.802742 ms  |
| Diff | 0.090 ms  | 0.09813800000024742 ms  |
| Max | 16.933 ms  | 5.351804 ms  |
| Min | 15.934 ms  | 4.19421 ms  |
| Avg | 16.060 ms  | 4.244704604 ms  |
| Median | 16.029 ms  | 4.227078 ms  |
    
**Sweep window**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 2759.372 ms  | 1083.651331 ms  |
| Diff | 0.198 ms  | 0.1652800000000454 ms  |
| Max | 3.172 ms  | 2.929184 ms  |
| Min | 2.710 ms  | 1.049656 ms  |
| Avg | 2.759 ms  | 1.083486051 ms  |
| Median | 2.740 ms  | 1.064951 ms  |
    
==============================================================\
Maximum Width Ramp: https://leetcode.com/problems/maximum-width-ramp/description/?envType=daily-question&envId=2024-10-10\


| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000000 | 1000000 |
| Total time      | 51869.572 ms  | 26203.164596 ms  |
| Diff | 32.840 ms  | 73.97820499999952 ms  |
| Max | 0.140 ms  | 0.096499 ms  |
| Min | 0.051 ms  | 0.025872 ms  |
| Avg | 0.052 ms  | 0.026129186391 ms  |
| Median | 0.052 ms  | 0.025934 ms  |
    
==============================================================\
Minimum Add to Make Parentheses Valid: https://leetcode.com/problems/minimum-add-to-make-parentheses-valid/?envType=daily-question&envId=2024-10-09\


| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000000 | 1000000 |
| Total time      | 1946.641 ms  | 680.23154 ms  |
| Diff | 19.842 ms  | 62.36882999999993 ms  |
| Max | 0.379 ms  | 0.029023 ms  |
| Min | 0.001 ms  | 0.000593 ms  |
| Avg | 0.002 ms  | 0.00061786271 ms  |
| Median | 0.002 ms  | 0.00061 ms  |
    
==============================================================\
Minimum Number of Swaps to Make the String Balanced https://leetcode.com/problems/minimum-number-of-swaps-to-make-the-string-balanced/description/?envType=daily-question&envId=2024-10-08\


| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000000 | 1000000 |
| Total time      | 27066.015 ms  | 10557.832417 ms  |
| Diff | 29.651 ms  | 62.64167600000015 ms  |
| Max | 4.441 ms  | 0.114561 ms  |
| Min | 0.025 ms  | 0.010376 ms  |
| Avg | 0.027 ms  | 0.010495190741 ms  |
| Median | 0.027 ms  | 0.01042 ms  |
    
==============================================================\
The Number of the Smallest Unoccupied Chair: https://leetcode.com/problems/the-number-of-the-smallest-unoccupied-chair/description/?envType=daily-question&envId=2024-10-11\


| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 100000 | 100000 |
| Total time      | 213537.128 ms  | 117860.969595 ms  |
| Diff | 2.998 ms  | 8.221339000002104 ms  |
| Max | 2.846 ms  | 1.647183 ms  |
| Min | 2.074 ms  | 1.155491 ms  |
| Avg | 2.135 ms  | 1.17852748256 ms  |
| Median | 2.135 ms  | 1.173725 ms  |
    
