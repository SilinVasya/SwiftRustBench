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
| Total time      | 6.332844 ms  | 5.455096724 ms  |
| Diff | 0.000329 ms  | 0.0004036529999993377 ms  |
| Max | 0.010609 ms  | 0.009355472 ms  |
| Min | 0.006121 ms  | 0.005179935 ms  |
| Avg | 0.006333 ms  | 0.005454693071 ms  |
| Median | 0.006225 ms  | 0.005296032 ms  |
    
**Swift class with protocol**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 13.327656 ms  | 5.802067371 ms  |
| Diff | 0.000461 ms  | 0.0004407309999994169 ms  |
| Max | 0.033673 ms  | 0.011542215 ms  |
| Min | 0.012174 ms  | 0.005183097 ms  |
| Avg | 0.013327 ms  | 0.00580162664 ms  |
| Median | 0.012659 ms  | 0.005301577 ms  |
    
**Swift struct with protocol**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 14.838149 ms  | 5.94213925 ms  |
| Diff | 0.000437 ms  | 0.0004307890000001535 ms  |
| Max | 0.142768 ms  | 0.013088908 ms  |
| Min | 0.013573 ms  | 0.005178388 ms  |
| Avg | 0.014838 ms  | 0.005941708461 ms  |
| Median | 0.014295 ms  | 0.005414623 ms  |
    
**Swift struct with reference**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 10.475893 ms  | 5.445195029 ms  |
| Diff | 0.000183 ms  | 0.00047581599999979574 ms  |
| Max | 0.016871 ms  | 0.009458648 ms  |
| Min | 0.009321 ms  | 0.005173243 ms  |
| Avg | 0.010476 ms  | 0.005444719213 ms  |
| Median | 0.010571 ms  | 0.00530357 ms  |
    
==============================================================\
Circular Deque\


| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 15.091916 ms  | 4.896182188 ms  |
| Diff | 0.000241 ms  | 0.0004366869999996581 ms  |
| Max | 0.036915 ms  | 0.010511462 ms  |
| Min | 0.013983 ms  | 0.004335625 ms  |
| Avg | 0.015092 ms  | 0.004895745501 ms  |
| Median | 0.014269 ms  | 0.004507969 ms  |
    
==============================================================\
Count Square Submatrices with All Ones: https://leetcode.com/problems/count-square-submatrices-with-all-ones/description/?envType=daily-question&envId=2024-10-27\

**Dynamic programming**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 1.524283 ms  | 1.217701582 ms  |
| Diff | 0.000108 ms  | 0.00018282499999999757 ms  |
| Max | 0.006130 ms  | 0.002380352 ms  |
| Min | 0.001448 ms  | 0.001185623 ms  |
| Avg | 0.001524 ms  | 0.001217518757 ms  |
| Median | 0.001476 ms  | 0.001192707 ms  |
    
**Sum rows**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 8.761958 ms  | 13.89129507 ms  |
| Diff | 0.000131 ms  | 0.0003436079999996622 ms  |
| Max | 0.016264 ms  | 0.021261423 ms  |
| Min | 0.008325 ms  | 0.013703955 ms  |
| Avg | 0.008762 ms  | 0.013890951462 ms  |
| Median | 0.008696 ms  | 0.013835123 ms  |
    
==============================================================\
Divide Intervals Into Minimum Number of Groups: https://leetcode.com/problems/divide-intervals-into-minimum-number-of-groups/description/?envType=daily-question&envId=2024-10-12\

**Heap solution**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 11.072782 ms  | 4.28609779 ms  |
| Diff | 0.000289 ms  | 0.000198342000000018 ms  |
| Max | 0.018878 ms  | 0.00845452 ms  |
| Min | 0.010920 ms  | 0.004128193 ms  |
| Avg | 0.011072 ms  | 0.004285899448 ms  |
| Median | 0.010995 ms  | 0.004218598 ms  |
    
**Sort borders**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 14.702471 ms  | 5.159817408 ms  |
| Diff | 0.000385 ms  | 0.00031577699999996156 ms  |
| Max | 0.020679 ms  | 0.011312305 ms  |
| Min | 0.014541 ms  | 0.00504403 ms  |
| Avg | 0.014702 ms  | 0.005159501631 ms  |
| Median | 0.014635 ms  | 0.005097706 ms  |
    
**Sweep window**

| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000 | 1000 |
| Total time      | 5.221667 ms  | 1.480773133 ms  |
| Diff | 0.000267 ms  | 0.00044472499999992365 ms  |
| Max | 0.009953 ms  | 0.00612927 ms  |
| Min | 0.004561 ms  | 0.001388848 ms  |
| Avg | 0.005221 ms  | 0.001480328408 ms  |
| Median | 0.005116 ms  | 0.001449065 ms  |
    
==============================================================\
Maximum Width Ramp: https://leetcode.com/problems/maximum-width-ramp/description/?envType=daily-question&envId=2024-10-10\


| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000000 | 1000000 |
| Total time      | 39.800416 ms  | 31.888849196 ms  |
| Diff | 0.055417 ms  | 0.10856882899999931 ms  |
| Max | 0.001655 ms  | 0.034221835 ms  |
| Min | 0.000036 ms  | 3.1169e-05 ms  |
| Avg | 0.000040 ms  | 3.1780280367e-05 ms  |
| Median | 0.000039 ms  | 3.1259e-05 ms  |
    
==============================================================\
Minimum Add to Make Parentheses Valid: https://leetcode.com/problems/minimum-add-to-make-parentheses-valid/?envType=daily-question&envId=2024-10-09\


| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000000 | 1000000 |
| Total time      | 0.960882 ms  | 0.985746665 ms  |
| Diff | 0.032486 ms  | 0.09792631200000002 ms  |
| Max | 0.000158 ms  | 0.000221956 ms  |
| Min | 0.000000 ms  | 8.38e-07 ms  |
| Avg | 0.000001 ms  | 8.878203529999999e-07 ms  |
| Median | 0.000001 ms  | 8.7e-07 ms  |
    
==============================================================\
Minimum Number of Swaps to Make the String Balanced https://leetcode.com/problems/minimum-number-of-swaps-to-make-the-string-balanced/description/?envType=daily-question&envId=2024-10-08\


| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 1000000 | 1000000 |
| Total time      | 31.994841 ms  | 12.694171074 ms  |
| Diff | 0.043227 ms  | 0.10668570300000013 ms  |
| Max | 0.003890 ms  | 0.001019318 ms  |
| Min | 0.000030 ms  | 1.2444e-05 ms  |
| Avg | 0.000032 ms  | 1.2587485371e-05 ms  |
| Median | 0.000032 ms  | 1.25e-05 ms  |
    
==============================================================\
The Number of the Smallest Unoccupied Chair: https://leetcode.com/problems/the-number-of-the-smallest-unoccupied-chair/description/?envType=daily-question&envId=2024-10-11\


| Field name | Swift | Rust |
| ------------- | ------------- | ------------- |
| Measures count      | 100000 | 100000 |
| Total time      | 246.131290 ms  | 132.063029526 ms  |
| Diff | 0.016891 ms  | 0.01656035800002087 ms  |
| Max | 0.020742 ms  | 0.010755721 ms  |
| Min | 0.002404 ms  | 0.001295927 ms  |
| Avg | 0.002461 ms  | 0.0013204646916799999 ms  |
| Median | 0.002437 ms  | 0.001304211 ms  |
    
