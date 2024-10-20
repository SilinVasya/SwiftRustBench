// Sweep window

use std::vec::Vec;
use common_api::measure;
use common_api::DEFAULT_MEASURE_COUNT;
use rand::prelude::*;
use serde::{Deserialize, Serialize};
use serde_json;

struct Solution {
}

impl Solution {

    fn new() -> Self {
        Solution {}
    }

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

static MEASURE_COUNT: i32 = DEFAULT_MEASURE_COUNT;
static mut TEMP_STORAGE: Vec<i32> = Vec::new();

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
        "Divide Intervals Into Minimum Number of Groups (Sweep window): https://leetcode.com/problems/divide-intervals-into-minimum-number-of-groups/description/?envType=daily-question&envId=2024-10-12",
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