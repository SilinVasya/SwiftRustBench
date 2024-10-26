// https://leetcode.com/problems/minimum-add-to-make-parentheses-valid/?envType=daily-question&envId=2024-10-09
import Foundation
import Dispatch
import CommonAPI

let charI = Character("(").asciiValue!

class Solution {
    struct Nums {
        var totalCount: Int
        var count: Int
    }
    
    func minAddToMakeValid(_ s: String) -> Int {
        let counters = Array(s.utf8).reduce(into: Nums(totalCount: 0, count: 0)) { counters, char in
            if char == charI {
                if counters.count < 0 {
                    counters.totalCount -= counters.count
                    counters.count = 0
                }

                counters.count += 1
            } else {
                counters.count -= 1
            }
        }

        return counters.totalCount + abs(counters.count)
    }

    // func minAddToMakeValid(_ s: String) -> Int {
    //     let counters = s.utf8.reduce(into: [0, 0]) { counters, char in
    //         if char == charI {
    //             if counters[0] < 0 {
    //                 counters[1] += -counters[0]
    //                 counters[0] = 0
    //             }

    //             counters[0] += 1
    //         } else {
    //             counters[0] -= 1
    //         }
    //     }

    //     return counters[1] + abs(counters[0])
    // }

    // func minAddToMakeValid(_ s: String) -> Int {
    //     var totalCounter = 0
    //     var counter = 0
    //     for nextI in s.utf8 {
    //         if nextI == charI {
    //             if counter < 0 {
    //                 totalCounter += -counter
    //                 counter = 0
    //             }

    //             counter += 1
    //         } else {
    //             counter -= 1
    //         }
    //     }

    //     return totalCounter + abs(counter)
    // }

    // func minAddToMakeValid(_ s: String) -> Int {
    //     var totalCounter = 0
    //     var counter = 0
    //     for nextI in Array(s.utf8) {
    //         if nextI == charI {
    //             if counter < 0 {
    //                 totalCounter += -counter
    //                 counter = 0
    //             }

    //             counter += 1
    //         } else {
    //             counter -= 1
    //         }
    //     }

    //     return totalCounter + abs(counter)
    // }
}

let MEASURE_COUNT = LARGE_MEASURE_COUNT
var TEMP_STORAGE = Array<Int>()
TEMP_STORAGE.reserveCapacity(MEASURE_COUNT)

measure(
    name: "Minimum Add to Make Parentheses Valid: https://leetcode.com/problems/minimum-add-to-make-parentheses-valid/?envType=daily-question&envId=2024-10-09",
    measuresCount: MEASURE_COUNT
    ) {
    let solution = Solution()

    let result = solution.minAddToMakeValid(")())(((((())())(()(((((()))())(((())()()())()))((((()))(())((()())))(((()()(((()))))))(()(((())())))(()())(()()()())))(())((())((()()()))((()())(())((())()))(()(())))((()(()(()(((()))(())(()))()())((())())((()()()))((()())(())())(())))()()))))()())))())()(()((()))(())))(((()(())(()(()((()()(((((()))(((((())())((())(()((()(())))(())((()())(((((()(()))(()())((())))(())))(())((())((((())()()()()()))()())))(())))((()(((())((()(())))))))()()()))((())(())(()(())(((((())())()()()()()))()(())(((()()()))((((()()((())))))((()))))((()))((()(()()())(())())())))))))(())(()())()())((()(()(((()))(()(()(()))(())(()))))))()())))()))())))(()))))()))())()())(()((()(()))()(())))()((()(())()(()((()())(()((()())))))()()))(())))((((()(()))()(()())((()))())()))(()))()(()())((((()(())))(())())())()()(()())())()))())))))(()((()((((((()((()(())()(((((((((())())())()()((()))((()(()((()((())))()())))((())()()((())())((()((((()())(()))(((()(()))((((())((())((((((()())())(()(())(()()())()()(())())((()(())))())((()(")
    TEMP_STORAGE.append(result)
}

var total = 0
for i in TEMP_STORAGE {
    total += i
    total %= Int.random(in: 1..<100)
}
print("just to trick compiler: \(total)")