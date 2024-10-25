**Swift and Rust benchmarks**

You can find bench's results inside 'results' folder.

Swift and Rust benchmarks based on leetcode daily challenge and from open source benchmarks.

Table with benchs will be added soon in format like:

Short bench description
| Field name  | Swift          | RUST         |
| ------------- | ------------- | ------------- |
| Total time      | 1.000.000 ms  | 1.000.000 ms  |
| Diff | 1.000.000 ms  | 1.000.000 ms  |
| Max | 1.000.000 ms  | 1.000.000 ms  |
| Min | 1.000.000 ms  | 1.000.000 ms  |
| Avg | 1.000.000 ms  | 1.000.000 ms  |
| Median | 1.000.000 ms  | 1.000.000 ms  |

Diff is utils time that are not related to actual execution and not included in timing processing.
There are no autotests for solutions because each solution is tested via leetcode submissions and only then benchmarked.

**Benchs links:**
1. [M2 Pro 16 GB RAM](results/apple_m2_pro.md)
2. [Ubuntu 18.04 Intel i5-6600 3.30ghz 16 GB RAM](results/intel(r)_core(tm)_i5-6600_cpu_@_3.30ghz.md)
3. [iMac 2019 i5-8500 3.00ghz 16 GB RAM](results/intel(r)_core(tm)_i5-8500_cpu_@_3.00ghz.md)

**Roadmap:**
1. Change benchmarks format
2. Automations with Python scripts: gather mesurements, update results pages, auto update README (remaining - implement links to benchs)
3. Implement memory measurement
4. While all solutions are tested with leetcode 'submit solution' feature, will add unit tests
5. Support iOS
6. Support Android
7. Add KMP benchs (???)
8. Add Xamarin benchs (???)

All results are located under 'results' folder. Links addition will be automated soon.
Just to be sure - do not run this under sudo!!! If you see can't access folder or file error, grant read and write permissions to anyone only to this benchs folder and enclosed folders and files.

**Observations**

**25 October 2024:**
1. Rust usually has better performance
2. Rust has better performance on non ARM CPUs
3. Looks like Swift is less optimizaed on non ARM CPUs
