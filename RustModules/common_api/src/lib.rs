use std::vec::Vec;
use std::time::Instant;
use serde::{Deserialize, Serialize};
use std::io::{self, Write};
use serde_json;

pub static DEFAULT_MEASURE_COUNT: i32 = 1_000;
pub static MEDIUM_MEASURE_COUNT: i32 = 100_000;
pub static LARGE_MEASURE_COUNT: i32 = 1_000_000;

#[derive(Serialize, Deserialize)]
struct RunResults<'a> {
    name: &'a str,
    subname: &'a str,
    measures_count: i32,
    total_time: f64,
    diff: f64,
    max: f64,
    min: f64,
    average: f64,
    median: f64
}

impl<'a> RunResults<'a> {

    fn new(
        name: &'a str,
        subname: Option<&'a str>,
        measures_count: i32,
        total_time: f64,
        diff: f64,
        max: f64,
        min: f64,
        average: f64,
        median: f64
    ) -> Self {
        RunResults {
            name,
            subname: subname.unwrap_or("default"),
            measures_count,
            total_time,
            diff,
            max,
            min,
            average,
            median
        }
    }
}

pub fn measure(name: &str, subname: Option<&str>, measures_count: i32, run: impl Fn()) {
    let mut measures = Vec::new();
    let for_start_time = Instant::now();
    for _ in 0..measures_count {
        let start_time = Instant::now();
        
        run();

        let elapsed_time = start_time.elapsed();
        measures.push(elapsed_time);
    }
    
    let mut durations: Vec<u128> = measures.iter().map(|&val| val.as_nanos()).collect::<Vec<u128>>();
    durations.sort();

    println!("{}", name);
    
    let to_ms_divider = 1_000_000_000.0;
    let total_time = for_start_time.elapsed().as_nanos() as f64 / to_ms_divider;
    println!("Total time: {}", total_time);

    let total_measures_time = durations.iter().sum::<u128>() as f64 / to_ms_divider;
    let diff = total_time - total_measures_time;
    println!("Diff time: {}", diff);

    let max = *durations.iter().max().unwrap() as f64 / to_ms_divider;
    println!("Max: {}", max);

    let min = *durations.iter().min().unwrap() as f64 / to_ms_divider;
    println!("Min: {}", min);

    let average = (durations.iter().sum::<u128>() as f64 / measures_count as f64) / to_ms_divider;
    println!("Avg: {}", average);

    let median = durations[measures_count as usize / 2] as f64 / to_ms_divider;
    println!("Median: {}", median);

    let results = RunResults::new(
        name,
        subname,
        measures_count,
        total_time,
        diff,
        max,
        min,
        average,
        median
    );
    let results_json_string = serde_json::to_string(&results).expect("Can't parse to JSON");
    let results_string = format!("<<<RESULTS:{results_json_string}>>>");
    io::stdout().write_all(results_string.as_bytes()).expect("Can't write to stdout");
}
