use std::vec::Vec;
use std::time::Instant;

pub static DEFAULT_MEASURE_COUNT: i32 = 1_000;
pub static LARGE_MEASURE_COUNT: i32 = 1_000_000;

pub fn measure(name: &str, measure_count: i32, run: impl Fn()) {
    let mut measures = Vec::new();
    let for_start_time = Instant::now();
    for _ in 0..measure_count {
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
    println!("Diff time: {}", total_time - total_measures_time);

    let max = durations.iter().max().unwrap();
    println!("Max: {}", *max as f64 / to_ms_divider);
    let min = durations.iter().min().unwrap();
    println!("Min: {}", *min as f64 / to_ms_divider);

    let avg = durations.iter().sum::<u128>() as f64 / measure_count as f64;
    println!("Avg: {}", avg / to_ms_divider);

    println!("Median: {}", durations[measure_count as usize / 2] as f64 / to_ms_divider);
}