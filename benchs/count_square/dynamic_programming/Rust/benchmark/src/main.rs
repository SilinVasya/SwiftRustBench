use common_api::measure;
use common_api::DEFAULT_MEASURE_COUNT;
use rand::prelude::*;
use serde::{Deserialize, Serialize};
use serde_json;
use std::cmp;

#[derive(Serialize, Deserialize)]
#[serde(rename_all = "camelCase")]
struct Sample {
    matrix: Vec<Vec<i32>>,
    total_count: i32
}

struct Solution {}

impl Solution {

    fn new() -> Solution {
        Solution {}
    }

    pub fn count_squares(&self, matrix: &Vec<Vec<i32>>) -> i32 {
        if matrix.is_empty() {
            return 0
        }

        let mut counters: Vec<Vec<i32>> = Vec::new();
        counters.reserve(matrix.len());
        for i in 0..matrix.len() {
            counters.push(vec![0; matrix[i].len()]);
        }

        let mut total_count = matrix[0][0];
        counters[0][0] += total_count;

        for (index, row) in matrix[0].iter().enumerate().skip(1) {
            counters[0][index] += row;
            total_count += row;
        }

        for column in 1..matrix.len() {
            counters[column][0] += matrix[column][0];
            total_count += matrix[column][0];
        }

        for (column_i, row) in matrix.iter().enumerate().skip(1) {
            for (row_i, num) in row.iter().enumerate().skip(1) {
                if *num == 0 {
                    continue
                }

                counters[column_i][row_i] = 1 + cmp::min(
                    cmp::min(counters[column_i - 1][row_i], counters[column_i][row_i - 1]),
                    counters[column_i - 1][row_i - 1]);
                total_count += counters[column_i][row_i];
            }
        }

        total_count
    }
}

static MEASURE_COUNT: i32 = DEFAULT_MEASURE_COUNT;
static mut TEMP_STORAGE: Vec<i32> = Vec::new();

fn read_sample(number: i32) -> Sample {
    let content = std::fs::read_to_string(format!("./src/sample{}.txt", number)).unwrap();

    serde_json::from_str(&content).unwrap()
}

fn main() {
    let samples = (1..5)
    .map(|sample_number| {
        read_sample(sample_number)
    })
    .collect::<Vec<_>>();

    for (index, sample) in samples.iter().enumerate() {
        let result = Solution::new().count_squares(&sample.matrix);
        assert_eq!(result, sample.total_count, "Wrong Solution result for sample '{}'. Got '{}', but expected '{}'", index + 1, result, sample.total_count);
    }

    unsafe {
        TEMP_STORAGE.reserve(samples.len() * MEASURE_COUNT as usize);
    }

    let matrixes = samples
    .into_iter()
    .map(|sample| {
        sample.matrix
    })
    .collect::<Vec<_>>();

    measure(
        "Count Square Submatrices with All Ones: https://leetcode.com/problems/count-square-submatrices-with-all-ones/description/?envType=daily-question&envId=2024-10-27",
        Some("Dynamic programming"),
        MEASURE_COUNT,
        || {
            let solution = Solution::new();

            for matrix in &matrixes {
                let result = solution.count_squares(matrix);

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