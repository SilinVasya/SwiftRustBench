// Sort borders

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
        let mut starts: Vec<i32> = Vec::new();
        starts.reserve(intervals.len());

        let mut ends: Vec<i32> = Vec::new();
        ends.reserve(intervals.len());

        for interval in intervals {
            starts.push(interval[0]);
            ends.push(interval[1]);
        }

        starts.sort();
        ends.sort();

        let mut counter = 0;
        let mut end_i = 0;
        for start in starts {
            if start > ends[end_i] {
                end_i += 1;
            } else {
                counter += 1;
            }
        }

        counter
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
        "Divide Intervals Into Minimum Number of Groups (Sort borders): https://leetcode.com/problems/divide-intervals-into-minimum-number-of-groups/description/?envType=daily-question&envId=2024-10-12",
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