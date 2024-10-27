use common_api::measure;
use common_api::MEDIUM_MEASURE_COUNT;
use rand::prelude::*;
use serde::{Deserialize, Serialize};
use serde_json;

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

        for (row_i, row) in matrix.iter().enumerate() {
            let mut new_row = vec![0; matrix[row_i].len()];

            if matrix[row_i][0] == 1 {
                new_row[0] = 1;
            }

            for (column_i, cell) in row.iter().enumerate().skip(1) {
                if *cell == 1 {
                    let new_num = new_row[column_i - 1] + 1;
                    new_row[column_i] = new_num;
                } else {
                    new_row[column_i] = 0;
                }
            }

            counters.push(new_row);
        }

        let mut total_count = 0;
        let row_count = counters.len();
        let column_count = counters[0].len();
        for i in 0..row_count {
            for j in 0..column_count {
                if counters[i][j] == 0 {
                    continue;
                }

                total_count += 1;
                let mut k: i32 = 1;
                'outer_loop: loop {
                    let candidate_i = i + k as usize;
                    let candidate_j = j + k as usize;
                    if candidate_i >= row_count || candidate_j >= column_count {
                        break;
                    }

                    k += 1;
                    for check_i in i..=candidate_i {
                        if counters[check_i][candidate_j] < k {
                            continue 'outer_loop;
                        }
                    }

                    total_count += 1;
                }
            }
        }

        total_count
    }
}

static MEASURE_COUNT: i32 = MEDIUM_MEASURE_COUNT;
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
        Some("Sum rows"),
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