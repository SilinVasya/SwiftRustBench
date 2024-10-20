**Swift and Rust benchmarks**

Swift and Rust benchmarks based on leetcode daily challenge and from open source benchmarks.

Table with benchs will be added soon in format like:

Short bench description
| PC type  | Swift          | RUST         |
| ------------- | ------------- | ------------- |
| Total time      | 1.000.000 ms  | 1.000.000 ms  |
| Diff | 1.000.000 ms  | 1.000.000 ms  |
| Max | 1.000.000 ms  | 1.000.000 ms  |
| Min | 1.000.000 ms  | 1.000.000 ms  |
| Avg | 1.000.000 ms  | 1.000.000 ms  |
| Median | 1.000.000 ms  | 1.000.000 ms  |

Diff is utils time that are not related to actual execution and not included in timing processing.
There are no autotests for solutions because each solution is tested via leetcode submissions and only then benchmarked.

**Roadmap:**
1. Change benchmarks format
2. Automations with Python scripts: gather mesurements, update results pages, auto update README (remaining - implement links to benchs)
3. Implement memory measurement as well
4. While all solutions are tested with leetcode 'submit solution' feature, will add unit tests
5. Support iOS
6. Support Android

All results are located under 'results' folder. Links addition will be automated soon.
Just to be sure - do not run this under sudo!!! If you see can't access folder or file error, grant read and write permissions to anyone only to this benchs folder and enclosed folders and files.