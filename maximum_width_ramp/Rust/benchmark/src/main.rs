use std::vec::Vec;
use std::cmp::max;
use common_api::measure;
use common_api::LARGE_MEASURE_COUNT;
use rand::prelude::*;

struct Solution {
}

/*
Investigate this solution

impl Solution {
    pub fn max_width_ramp(nums: Vec<i32>) -> i32 {
        let sz = nums.len();
        let mut min_lst = vec![0; sz];
        let mut max_lst = vec![0; sz];

        min_lst[0] = nums[0];
        for i in 1..sz {
            min_lst[i] = min_lst[i - 1].min(nums[i]);
        }
        max_lst[sz - 1] = nums[sz - 1];
        for i in (0..sz - 1).rev() {
            max_lst[i] = max_lst[i + 1].max(nums[i]);
        }
        let mut left = 0;
        let mut right = 0;

        let mut ret = 0;
        while right < sz {
            if min_lst[left] <= max_lst[right] {
                ret = ret.max((right - left) as i32);
                right += 1;
            } else {
                left += 1;
            }
        }

        ret
    }
}
*/

impl Solution {
    pub fn max_width_ramp(nums: &Vec<i32>) -> i32 {
        let mut decreasing_stack: Vec<usize> = Vec::new();
        let nums_count = nums.len();
        decreasing_stack.reserve(nums_count);
        decreasing_stack.push(0);

        for i in 1..nums_count {
            let index = decreasing_stack.last().unwrap();
            if nums[i] < nums[*index] {
                decreasing_stack.push(i)
            }
        }

        let mut max_length: i32 = 0;
        let mut stack_tail_i = decreasing_stack.len() as i32 - 1;
        for nums_tail_i in (0..nums_count).rev() {
            while stack_tail_i > -1 && nums[decreasing_stack[stack_tail_i as usize]] <= nums[nums_tail_i] {
                let length = (nums_tail_i - decreasing_stack[stack_tail_i as usize]) as i32;
                max_length = max(max_length, length);
                stack_tail_i -= 1;
            }

            if stack_tail_i == -1 {
                break;
            }
        }

        return max_length;
    }
}

static mut TEMP_STORAGE: Vec<i32> = Vec::new();

fn main() {
    let content = std::fs::read_to_string("./src/sample.txt").unwrap();
    let nums = content.split(",").map(|str| { str.parse::<i32>().unwrap() }).collect::<Vec<_>>();

    measure(
        "Maximum Width Ramp: https://leetcode.com/problems/maximum-width-ramp/description/?envType=daily-question&envId=2024-10-10",
        LARGE_MEASURE_COUNT,
        || {
            let result1 = Solution::max_width_ramp(&nums);
            unsafe {
                TEMP_STORAGE.push(result1);
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