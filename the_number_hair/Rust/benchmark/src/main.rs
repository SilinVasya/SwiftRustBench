use std::vec::Vec;
use std::collections::BinaryHeap;
use std::cmp::Reverse;
use std::cmp::Ordering;
use common_api::measure;
use common_api::MEDIUM_MEASURE_COUNT;
use rand::prelude::*;
use serde::{Deserialize, Serialize};
use serde_json;

struct Time {
    arrival: i32,
    leaving: i32,
    friend: i32
}

impl Time {

    fn new(arrival: i32, leaving: i32, friend: i32) -> Self {
        Time {
            arrival,
            leaving,
            friend
        }
    }

}

#[derive(Eq)]
struct LeavingTime {
    leaving: i32,
    sit: i32
}

impl LeavingTime {

    fn new(leaving: i32, sit: i32) -> Self {
        LeavingTime {
            leaving,
            sit
        }
    }

}

impl Ord for LeavingTime {
    fn cmp(&self, other: &Self) -> Ordering {
        self.leaving.cmp(&other.leaving)
    }
}

impl PartialOrd for LeavingTime {
    fn partial_cmp(&self, other: &Self) -> Option<Ordering> {
        Some(self.cmp(other))
    }
}

impl PartialEq for LeavingTime {
    fn eq(&self, other: &Self) -> bool {
        self.leaving == other.leaving
    }
}

struct Solution {
}

impl Solution {

    fn new() -> Self {
        Solution {}
    }

    pub fn smallest_chair(&self, times: &Vec<Vec<i32>>, target_friend: &i32) -> i32 {
        let mut sorted_times = times
            .iter()
            .enumerate()
            .map(|(index, vec)| { Time::new(vec[0], vec[1], index as i32) })
            .collect::<Vec<_>>();
        sorted_times.sort_by(|time1, time2| time1.arrival.partial_cmp(&time2.arrival).unwrap());

        let mut available_sits: BinaryHeap<Reverse<i32>> = BinaryHeap::new();
        let mut leaving_times: BinaryHeap<Reverse<LeavingTime>> = BinaryHeap::new();

        let mut times_iter = sorted_times.iter();
        let mut next_time = times_iter.next();
        let mut last_sit = -1;

        while next_time.is_some() {
            let time = next_time.unwrap();

            let mut next_leaving = i32::MAX;
            if !leaving_times.is_empty() {
                next_leaving = leaving_times.peek().unwrap().0.leaving;
            }

            if next_leaving <= time.arrival {
                available_sits.push(Reverse(leaving_times.pop().unwrap().0.sit));
            } else {
                let sit: i32;
                if !available_sits.is_empty() {
                    sit = available_sits.pop().unwrap().0
                } else {
                    last_sit += 1;
                    sit = last_sit;
                }

                if time.friend == *target_friend {
                    return sit;
                }

                leaving_times.push(Reverse(LeavingTime::new(time.leaving, sit)));

                next_time = times_iter.next();
            }
        }

        -1
    }
}

static MEASURE_COUNT: i32 = MEDIUM_MEASURE_COUNT;
static mut TEMP_STORAGE: Vec<i32> = Vec::new();

#[derive(Serialize, Deserialize)]
#[serde(rename_all = "camelCase")]
struct Sample {
    times: Vec<Vec<i32>>,
    target_friend: i32
}

fn read_sample(number: i32) -> Sample {
    let content = std::fs::read_to_string(format!("./src/sample{}.txt", number)).unwrap();

    serde_json::from_str(&content).unwrap()
}

fn main() {
    let samples = [
        read_sample(1),
        read_sample(2),
        read_sample(3)
    ];
    unsafe {
        TEMP_STORAGE.reserve(samples.len() * MEASURE_COUNT as usize);
    }

    measure(
        "The Number of the Smallest Unoccupied Chair: https://leetcode.com/problems/the-number-of-the-smallest-unoccupied-chair/description/?envType=daily-question&envId=2024-10-11",
        MEASURE_COUNT,
        move || {
            let solution = Solution::new();

            for sample in &samples {
                let result = solution.smallest_chair(&sample.times, &sample.target_friend);

                unsafe {
                    TEMP_STORAGE.push(result);
                }
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