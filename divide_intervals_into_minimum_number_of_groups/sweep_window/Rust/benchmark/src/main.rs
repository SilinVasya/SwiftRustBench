// Sweep window

use std::vec::Vec;
use common_api::measure;
use common_api::DEFAULT_MEASURE_COUNT;
use rand::prelude::*;
use serde::{Deserialize, Serialize};
use serde_json;

struct Solution {
}

// Solution 1: no heap
// impl Solution {

//     fn new() -> Self {
//         Solution {}
//     }

//     pub fn min_groups(&self, intervals: &Vec<Vec<i32>>) -> i32 {
//         let mut starts: Vec<i32> = Vec::new();
//         starts.reserve(intervals.len());

//         let mut ends: Vec<i32> = Vec::new();
//         ends.reserve(intervals.len());

//         for interval in intervals {
//             starts.push(interval[0]);
//             ends.push(interval[1]);
//         }

//         starts.sort();
//         ends.sort();

//         let mut counter = 0;
//         let mut end_i = 0;
//         for start in starts {
//             if start > ends[end_i] {
//                 end_i += 1;
//             } else {
//                 counter += 1;
//             }
//         }

//         counter
//     }
// }

// Solution 2: With heap
impl Solution {

    fn new() -> Self {
        Solution {}
    }

    /*pub fn min_groups(&self, intervals: &Vec<Vec<i32>>) -> i32 {
        let mut end_times = BinaryHeap::<Reverse<i32>>::new();
        let mut intervals = intervals.into_iter().map(|a| (a[0], a[1])).collect::<Vec<_>>();
        intervals.sort_unstable();
        for (start_time, end_time) in intervals {
            if let Some(Reverse(soonest)) = end_times.peek().copied() {
                if soonest < start_time {
                    end_times.pop();
                }
            }
            end_times.push(Reverse(end_time));
        }
        end_times.len() as _
    }*/

    fn min_groups(&self, intervals: &Vec<Vec<i32>>) -> i32 {
        let mut arr: Vec<i32> = vec![0; 1_000_002];
        for interval in intervals {
            arr[interval[0] as usize] += 1;
            arr[(interval[1] + 1) as usize] -= 1;
        }

        let mut sum = 0;
        let mut max_sum = 0;
        for a in arr {
            sum += a;
            max_sum = i32::max(max_sum, sum);
        }

        max_sum
    }
}



#[derive(Serialize, Deserialize)]
#[serde(rename_all = "camelCase")]
struct Sample {
    intervals: Vec<Vec<i32>>
}

fn read_sample() -> Sample {
    let content = std::fs::read_to_string("./src/sample.txt").unwrap();

    serde_json::from_str(&content).unwrap()
}

fn main() {
    unsafe {
        TEMP_STORAGE.reserve(DEFAULT_MEASURE_COUNT as usize);
    }

    let sample = read_sample();

    measure(
        "Divide Intervals Into Minimum Number of Groups (Sweep window): https://leetcode.com/problems/divide-intervals-into-minimum-number-of-groups/description/?envType=daily-question&envId=2024-10-12",
        DEFAULT_MEASURE_COUNT,
        move || {
            let solution = Solution::new();
            let result = solution.min_groups(&sample.intervals);
            
            unsafe {
                TEMP_STORAGE.push(result);
            }
        });

    let mut rng = rand::thread_rng();
    let mut total = 0;
    unsafe {
        for i in TEMP_STORAGE.iter() {
            total += i;
            let random = (rng.gen::<f64>() * 100.0) as i32;
            if random > 0 {
                total %= random;
            }
        }
    }
    println!("just to trick compiler: : {:?}", total);
}