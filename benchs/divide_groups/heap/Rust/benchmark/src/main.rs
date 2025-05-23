// Heap solution

use std::vec::Vec;
use common_api::measure;
use common_api::DEFAULT_MEASURE_COUNT;
use rand::prelude::*;
use serde::{Deserialize, Serialize};
use serde_json;
use std::collections::BinaryHeap;
use std::cmp::Reverse;

struct Solution {
}

impl Solution {

    fn new() -> Self {
        Solution {}
    }

    pub fn min_groups(&self, intervals: &Vec<Vec<i32>>) -> i32 {
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
    }
}

static MEASURE_COUNT: i32 = DEFAULT_MEASURE_COUNT;
static mut TEMP_STORAGE: Vec<i32> = Vec::new();

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
        TEMP_STORAGE.reserve(MEASURE_COUNT as usize);
    }

    let sample = read_sample();

    measure(
        "Divide Intervals Into Minimum Number of Groups: https://leetcode.com/problems/divide-intervals-into-minimum-number-of-groups/description/?envType=daily-question&envId=2024-10-12",
        Some("Heap solution"),
        MEASURE_COUNT,
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