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
    
    pub fn min_add_to_make_valid(&self, s: String) -> i32 {
        let mut total_counter = 0;
        let mut counter = 0;
        for c in s.into_bytes() { 
            if c == b'(' {
                if counter < 0 {
                    total_counter += -counter;
                    counter = 0;
                }

                counter += 1;
            } else {
                counter -= 1;
            }
        }

        total_counter + i32::abs(counter)
    }
}

static MEASURE_COUNT: i32 = LARGE_MEASURE_COUNT;
static mut TEMP_STORAGE: Vec<i32> = Vec::new();

fn main() {
    unsafe {
        TEMP_STORAGE.reserve(MEASURE_COUNT as usize);
    }
    measure(
        "Minimum Add to Make Parentheses Valid: https://leetcode.com/problems/minimum-add-to-make-parentheses-valid/?envType=daily-question&envId=2024-10-09",
        None,
        MEASURE_COUNT,
        || {
            let solution = Solution::new();
        
            let result = solution.min_add_to_make_valid(")())(((((())())(()(((((()))())(((())()()())()))((((()))(())((()())))(((()()(((()))))))(()(((())())))(()())(()()()())))(())((())((()()()))((()())(())((())()))(()(())))((()(()(()(((()))(())(()))()())((())())((()()()))((()())(())())(())))()()))))()())))())()(()((()))(())))(((()(())(()(()((()()(((((()))(((((())())((())(()((()(())))(())((()())(((((()(()))(()())((())))(())))(())((())((((())()()()()()))()())))(())))((()(((())((()(())))))))()()()))((())(())(()(())(((((())())()()()()()))()(())(((()()()))((((()()((())))))((()))))((()))((()(()()())(())())())))))))(())(()())()())((()(()(((()))(()(()(()))(())(()))))))()())))()))())))(()))))()))())()())(()((()(()))()(())))()((()(())()(()((()())(()((()())))))()()))(())))((((()(()))()(()())((()))())()))(()))()(()())((((()(())))(())())())()()(()())())()))())))))(()((()((((((()((()(())()(((((((((())())())()()((()))((()(()((()((())))()())))((())()()((())())((()((((()())(()))(((()(()))((((())((())((((((()())())(()(())(()()())()()(())())((()(())))())((()(".to_owned());
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