use std::vec::Vec;
use common_api::measure;
use common_api::LARGE_MEASURE_COUNT;
use rand::prelude::*;

struct Solution {
}

impl Solution {

    fn new() -> Self {
        Solution {
        }
    }

    // pub fn min_swaps(&self, s: String) -> i32 {
    //     let mut counter = 0;
    //     for c in s.chars() { 
    //         if c == '[' {
    //             counter += 1;
    //         } else if counter > 0 {
    //             counter -= 1;
    //         }
    //     }

    //     (counter + 1) / 2
    // }

    pub fn min_swaps(&self, s: String) -> i32 {
        let mut counter = 0;
        for c in s.into_bytes() { 
            if c == b'[' {
                counter += 1;
            } else if counter > 0 {
                counter -= 1;
            }
        }

        (counter + 1) / 2
    }
}

static MEASURE_COUNT: i32 = LARGE_MEASURE_COUNT;
static mut TEMP_STORAGE: Vec<i32> = Vec::new();

fn test_str(solution: &Solution, s: String) {
    let result = solution.min_swaps(s);
    unsafe {
        TEMP_STORAGE.push(result);
    }
}

fn main() {
    unsafe {
        TEMP_STORAGE.reserve(MEASURE_COUNT as usize);
    }
    measure(
        "Minimum Number of Swaps to Make the String Balanced https://leetcode.com/problems/minimum-number-of-swaps-to-make-the-string-balanced/description/?envType=daily-question&envId=2024-10-08",
        None,
        MEASURE_COUNT,
        || {
            let solution = Solution::new();
        
            let str1 = "][][[][]][[][]]]]][][[[][[[]][]][[][[[][[]]][[[]]][[[[][][[]][]]]][]]][][]]][[][][[][]][[[[[[]]]][]]]][[]]][[][][[][[]]][[][]]][]]][[[]]][[][][[][[[[]][]]][[[[]][[]]]][[][[[[][][]][]][[]]]]][[[[[[[][][[[][]][]]][][][]]][][][]][[[][]]][]][[][]]]][]]][[]][[[]]]]]]]][]]][[[]]]][]][[[[][][[[[][[[][[[[[[[[][[][][][[]][[][[[]]][[]][][]][][]][[]]][[][]][]]][[][][]][[[][[][[[]][][][][[[[[[[][][[[]]][]][[[[[[[[][[[]]][[][[][][[][]]][]][[]]][]][[[][[]][][]][[[[]][[]]][][][]]]]][[[[[]][[[]]][][]][]]]]]][[]]][[[[[]][][]][[]]]]][[][]]]".to_owned();
            test_str(&solution, str1);
            let str2 = "[]]]]]][][[[]]][[[[]]][[[[[][[[]]][]]]]][][][]]]]]][[[[[[[[][][]][[[[]]]]][[][]][[[[[][]]]]]][[]]]][[[][[][[[[]]][]]]]][[[[]][[][[[[]][][]]]][]][[[][[[[]][[]][]]][[][][]]]]]]]][][][]]][][][]][]]][][]][[[[[][[[]][[[[][[[[[]][[]][][[]][]][[][[]]]]][]][[[[[[[[]][]][[[[[[]]]]]]]][][][]]][][][[[]][[[]][[[[][[]][[]][]][]]]][[][][][[[]][]][]]][[]][]][[]][][[[[]][][[]]][]][]][[[[[][[][]][[]]][[][]][[]]]][][]]]]][[]]]]][[[][][[][[[]]][[[][[[]]]][]]][[]][[][[][]]][[]]]][]]][]][[[][[[]]]]]][[]][][[][[[]]][]][[]]][[]][[[[]]][][[][[][]][]]][]][[]]][[[][][]][[[[]][[]][[][][[]]][]]]]][[[]][[[[]]][]]]]][[][]]][]][][][][[]][][[[]]][][][]]][][][[][[][[]][][]]][[[[]][][[][[]][][][]]][][[[[][]]]]]][[[][]]]][]][[[[[][[[][[[[]]][[[[]][]]]][]]]]][[[[]]]]][[[]][[[][[[[[[[[[[]]]]][]][]]][][][[]]][[[]][[][]][]]][[[[]][]][][]][][[][[]]]]]][][[[]][[[]]][]][]]][][][[][]]][]]]]][][][][[][]][][][[[[][][[]][[[[]][]]]]]][[][[][[][[][[[[[]]][[][[[]][[]][[[[[][[[[]]][[][][[][[]]]][[]][][]]]][]][[[][[[[[]]]][]]]]]]][][[][][[[]][[][[[[[[]]][[]]][[[[][][[[]]][[][[[[][[][[[]][][][[[[[][]][[[[[[][][]][[][[]][[[[[]][[][[][]]][[[[][][[][[]]]]][[[][[[]]][[]]]][[][]][[]]][[[[[][[]][][[[[][]][[]]]]]][]][[[]][[[][][]][][[[[[][]]]]][][[]]][[[][][[[]]][][][[[[[[][[]]][[][][]]][[[[[[[][[][[[][[][]]][]]][]][[]]][[[]][[[][[[][[[[][[]][[][[[[[]][[]]][][[]]]][][[][[[[[]][]][[]]]][[]]][]][]]]][[[][][[[][[[[[[[]][[[][]][][[[]][][[]][]]]]][]]][[[][[]][][][[[][][[]]]]]][]]]]]][]]]]]]][]]][[[][[][[[][]]]]][[[][]][][][]]][[[[]]][][[[]][[[[]][][]][]][[[][]][[[][][[[[][[[][][[[[[[]]][[[]]][]]][[][[[][][[][[]]]][][[]]]][[]][]][]][[[[][[[]]]][[][][]]]]]][]][[][]]]]][[[[[[[]][]][]]][[][[[[][[[[[[[][[[][[][]][]][][[]]][[]]][[]][[[][[[[][]]]]][]]]][][]][][]]]]]][[[[]][]][][[[[]][][[]][[[[[[]][]][[]]]]][[]][][[]][]][[]]][[[][[[][]][[[][[]][[][[[[[]]][]][]]]]][[]][[[[[][[][[[]][[[[[[[][]]]]]]]]]][]]][[[[]][[[[[[[]][]][]]]][][[]]][][[]][][[[[][[[[[][[]][]]]]][]][][][[[]]][]]]]][]][[[[[[]]][]]]]][[[]]]]]][][][[[[]][]][]][[[[[[][][][]][[][[[]][[]]][[[[]][[][]][]][[][[[[[]][[[][]][[]][[][[[[][[[][][][]][[][[[[[[][][]][[[[]][[[][]]][][][[[]][[[][[][]][[[]]]][[[]]][[[]][[[[][[[][[[[[][]]]][[]][][]][]][[[]]][][[[]]]]]]]]][][[[]][[[][][[]]]]]][[[]]]]][[[[[][[][[[[[[[]][[]]]]][]][][][[[]][]]][]]][][]][]][]][][[[[[]]]]][][[[[[][[][[]]]]]]][]]][]][[][[][][[[][]]]]]]][]]]][]]]][]]]][[[][][]][]][][[[[[[[[[[]][[[][]]][[][[]][][[[][][][[[]]]]][][]][[[[[]]]]][][[]][[[[[][[]][[[][[[][[][[[][[[[[[][][[[]]][]]][[][][][[][][]][]][][][[][[[][[[[[[]]][[][[]]]]]]][[[[[[[[]][][[]]][[[[][][[[]][]][][]][]]]][[][[[[[]]][[][[]]][[[][[][[][[][[][][][]]]]]]][]]][[[[[[[[[[[[]][]][][[][]][]]]]]][[[[]]]]][[[[]][[[[]][[][[]][[]][[]]]]][[[[[][[[]][][[]]][]]][]][]]]][[[][]][[[[][[][][[][]][[[]][][]][[][][[[][]][]]]][[[[[][][][[[][[[[][]]]]]]]]][[[]]]][]]][[][[[]][[[[[[]][]][[[]][][[[]][][[][[]][[]]][[][[[]][[]]]]][[[[[][[[][[[[][]]]][[][][][][][]]][[]]][]]][[][]]][]]]][][[]][][][[[[]][]][[[[[[[[][]]]]]]]][[[[[[]][][][[][]][[[]][[]]]][][]][[[][[[[[[[]]]][]][[][[[[]]][[[][]]][[[][[][][[]][[[]][[][[[]][[[][][[[[[][][[][[]]]]]][]]]]][][[]]][]][][[[[[[[][[]]]][]]]]]][][]][[]]]]][]]]][[]][][]]]]][[[[]][][[[[]][][[]]]]][[]]]][]][][]]]]]]]]]]]][[[[]][]]][]][]]][[][[[[[[[]]]]]][]]][[[[[]][[[[][][][][][[[[[[[[][][]][]][[]][[[[[[]][[]]][[][[[]][][][][[][[[]]]]]]]]]][[][]][]]]]]][[]][[]]][][[][[[[][[[][[][[[[[]][[[][[[[]][][]]][[[]][[[[]][[]][][][][]]]]][[[][[][[]]][[][]][][[[][]][[[]]]][][][[[]]]][]]][][[[[[][[[]][[[]]]]]]]]][[[[[[[[][]]][[]]]]]]]]][][[]]]]][[[[][[][[[][]]]]]]][[[]][][[][]]]]][[][[]]]][][[]][[]][[[]][[][][[]][]][]]][[[][[][[][]][]][[[]][][[[]]][[][][]]]]]][[[[][[[][[[]]]][][[]]][[][[[[[[[][[][]][[]][][[[]]][[][[]][[][[][[[[][[]][[[][][][[][[][][[[[]]]][]][[[]]]]]][][][[][][][[[][][[][[[]]]][[]][[[]]][[[][[[[]][[][[[]][[]]][[[]][[][][]][[[[[[[][[[][][]]]][[[][[]]][][][]]]]]][][[[]]]][[[]]][[][[[[]]]]][[[[[]]]][[][[[][][[][[[[][[[[[[[][[][]]][][]][][[]][][]]]][[[]]]]][][[[][]][]]][][]][][][]]][[]][[[[[][][]][]][[[[[]][[[]][[[[[[][[[]][[][][[[][[][[[]]][][][[[[][][[][[[[[[[[][][[[]][]]]]]][[][[][]][]]][[[[][[[]][[][]]][[]]]]][[][[[][]]]]][[[[[]][][]][[[[][][[]]]]]]][[][]]]]]][[]][]]][]][][[][[[[[[]][]]][[[][[[][[][][]]][[]]][]][][[[[[]]][]]][]]][[[]]][][]]]]][][][][[[[[[[[][][][][[][[[][][][[]][]]][][[[[[[[]]]]]][[[[[][]]][]][][]]]][]]][[]][[]][[[[[][]][[[[[]][[]]]][]][]]]][[]][]][[[][[][][[][[[[]][[]][[]]][]]][[[[[][[][[][]][][[]]][]]][][][[[[[]][[]][][][[]][[[[[]][][]][[]]][][]][[[][[]]]][]][][[][]]][]]][][[]]][][[[[[[[]]][][][][][][[[[][]][[][[][[][[]][[][[]][]][][[]]]][[]]][]][[[]]][][[[]][]]][]][[[][[][]]]][[[[][[][][][[][]]][][[]][][][][[][[]][]][[][][[[[]]]]][[]][[[[][]][[[][]]][]][]][[[[[[]]]]][]][[][]]][]]]][][[][[[][[[][[]][[][]]][[[[][[[]][[][]][]]][][][][[][][[[][][[]][]]]][][][[][][]]][][]]][]][[][]]]][][]][][][[]]]]][][[][[]][[]]][]][[]]][[]]]]]][]]]]][[][][]][[[[][[][][[][]]]][[[[[[[][[][[][[[][[[[][[]][][[]][][[[[[][]]]][]]]][]]][][[]][[[[[][]]][][]]][[[[][[]][[]][[][[][]]][[[[[[]]]]][[][][]][]][]]]][[]]][]][]][[][][[[[][][]][[]][]][[]]]]][[][[[[]][]][[]]]]]][]]][[[[[]]][[]]]][[[[]]]][]][][]]]]]]][]]]]][]]][[[[[][[[[[[][][[]][[[]]][][][]][][[][]]]][][[]]]]]][[][]]]]][][]]]]]][][][]]]][][[[[][[[]][[[[[[[[][][[][]]]][][]][[][][[[][[]]]]][[[[[[][]]]]][]][[][]][][[]]]]]][[]]][[][][[]]]][[]][[[][][[[[[][[[[[[[][]]][][[[][[]]]]]]][][[[][[]][]][]][[[][[][[[[]]][[[]]]][]]][]]][]][][[]][][[]]][][]]]]]]][][[[[[[[[][[][]][][[[][[][[]][[][][[][[]][[[[]][][]]]]][]]]][[[[]][]]]]]]]]][[]]][[][]][]]]][[][]]]][][]]]][]][][]]][[[][]]]]]][[[][][]][]][[[[[[[][[[]]]]]]][]]]]][]][]]]]][][[]][][[]]]][[][[]][][][][[][[[][[[][[]][][][]][]][]]][]]]][][]][[][[[][[[[[[]][[[]][][][]][][][]]]][][[]]]][][[[]]][[]][][[][[][[][]][][]][[]][][][]][][[]][][][[[[[[]]][[]]]]][[[]]][[][[][][][][[[][][[][[][[][[]]]][][[[[[[][[]][[]][]][[[[]][]]][[[][]]][[[]]][]][[[[[[[]][][[[][[[[[]][]]][[]][[[[]][][[[]]]][]][[][][[][][]][[[[]]]]]][[[]]]][]]][[[]]][[[[][]][[]][][[]]]]][[[[][][]]][][[]]][[]][[[[[]]]]]]]]]]][][[]]]]]]]]]]][]][]]]][][][[]][][[[][[[][][[]]]]][][]]][[]]][[[[][][[[][]][[][]]][]]]][]][][[][]]]]][][[]][][[][[][][[[]]][[][[[][][[[]]][[[[]][[[[[[[]]][[[][[]][][[]]]][[][[]]][[][[]]][[][]][][[][[]]][[[]][]][]]][[][[[[][]][[[[][[]][]]]][[[[][]][][[]][]][]]]][]]][]]]]]][]][[]][[][]]]][[][]]]][]]]]]]]]]][][][[][[[[[[[][]][[][][[[[]]][]][[]]]]]]]][[[[]][][]]][[][[][[[][[[][[]][[[]][][[]][][[][][[]]][[[]]]]][[[[]][][[[[][[][][[[]]][][[]]][][]]][[[[[[[][[]]][[]][[]]]][]][]]]][[]][[[][[][[[][][[]][][[][][]][[[[]][][[[][][][[[]][[[]][[[[][[[]][[][][[][[][[]]][[]][]]]]][[[[[]][][]][][[]][]]]]]]]][[[][][][[]]][]]]]]][]][][][[]]][]]][[[]]][]]]][[[][]]][][]][[[][[[[]][][[[]][[[[]][[[[]]]][[]]][][[[[[[[[[][[]]]][[[[[]][][][[[[][]][]][]][[[]][[][[[[[]]][[[[[[]][][][[[[[]]]][[]]][][]]][[[[]]][][[[]]][][[[[]]]]]][]]]]]]][[[[][][[[[]][[[][[[][[[[][]][[]][]][]]][[][[][[[][]]]][[[[[[][]]]][][]]][]][[][[][[]]]][]]][]][[]][]][]][[[[[[[]][][]]][[[]][]]][][][][[]]]]]]]]]][[]]]]][[[][]]][[[][[]]][[][[[[[]][]][]]]]][[][[][][]]][][][[[][]]][][][[[]]][]][[[[]][[[[][][[][][[[][][[]][]][[[][]][[]]][]]]]]]]]][[[[[][][]]][]]]]][[]]][][[[[]][]]]][[]]][[][]][][[[]]][[][][]][[[]]]]][][][][][][[]][][[][[][][]]][[][[[]][[[][[][[[[[[[[]]]]]]]]][][[]][[[]]][[]]][]]][][[[[[][][]][][]]][]][]][][]]][[[][][[[[[[]]]]]]]]]][][[]][]]][][]][]]]][][[[]]][][][]]][][]]][]]]][]]][][[[[[[[]][[[[][][]]][][]]][][]][[[[]]]]]]][[[][[[[[[]]]][[[[][[]]]][[[[[]]][][][[[[[][]]]]][[[]][[][".to_owned();
            test_str(&solution, str2);
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