// https://leetcode.com/problems/minimum-number-of-swaps-to-make-the-string-balanced/description/?envType=daily-question&envId=2024-10-08
import Foundation
import Dispatch
import CommonAPI

let charI = Character("[").asciiValue!

class Solution {
    // func minSwaps(_ s: String) -> Int {
    //     let counter = s.reduce(into: 0) { counter, char in
    //         if char.asciiValue! == charI {
    //             counter += 1
    //         } else if counter > 0 {
    //             counter -= 1
    //         }
    //     }

    //     return (counter + 1) / 2
    // }

    // func minSwaps(_ s: String) -> Int {
    //     let counter = s.utf8.reduce(into: 0) { counter, char in
    //         if char == charI {
    //             counter += 1
    //         } else if counter > 0 {
    //             counter -= 1
    //         }
    //     }

    //     return (counter + 1) / 2
    // }

    // func minSwaps(_ s: String) -> Int {
    //     var counter = 0
    //     for char in Array(s.utf8) {
    //         if char == charI {
    //             counter += 1
    //         } else if counter > 0 {
    //             counter -= 1
    //         }
    //     }

    //     return (counter + 1) / 2
    // }

    func minSwaps(_ s: String) -> Int {
        let counter = Array(s.utf8).reduce(into: 0) { counter, char in
            if char == charI {
                counter += 1
            } else if counter > 0 {
                counter -= 1
            }
        }

        return (counter + 1) / 2
    }
}

let MEASURE_COUNT = LARGE_MEASURE_COUNT
var TEMP_STORAGE = Array<Int>()
TEMP_STORAGE.reserveCapacity(MEASURE_COUNT)

func testStr(solution: Solution, str: String) {
    let result1 = solution.minSwaps(str)
    TEMP_STORAGE.append(result1)
}

measure(
    name: "Minimum Number of Swaps to Make the String Balanced https://leetcode.com/problems/minimum-number-of-swaps-to-make-the-string-balanced/description/?envType=daily-question&envId=2024-10-08",
    measuresCount: MEASURE_COUNT
    ) {
    let solution = Solution()
    
    testStr(solution: solution, str: "][][[][]][[][]]]]][][[[][[[]][]][[][[[][[]]][[[]]][[[[][][[]][]]]][]]][][]]][[][][[][]][[[[[[]]]][]]]][[]]][[][][[][[]]][[][]]][]]][[[]]][[][][[][[[[]][]]][[[[]][[]]]][[][[[[][][]][]][[]]]]][[[[[[[][][[[][]][]]][][][]]][][][]][[[][]]][]][[][]]]][]]][[]][[[]]]]]]]][]]][[[]]]][]][[[[][][[[[][[[][[[[[[[[][[][][][[]][[][[[]]][[]][][]][][]][[]]][[][]][]]][[][][]][[[][[][[[]][][][][[[[[[[][][[[]]][]][[[[[[[[][[[]]][[][[][][[][]]][]][[]]][]][[[][[]][][]][[[[]][[]]][][][]]]]][[[[[]][[[]]][][]][]]]]]][[]]][[[[[]][][]][[]]]]][[][]]]")
    testStr(solution: solution, str: "[]]]]]][][[[]]][[[[]]][[[[[][[[]]][]]]]][][][]]]]]][[[[[[[[][][]][[[[]]]]][[][]][[[[[][]]]]]][[]]]][[[][[][[[[]]][]]]]][[[[]][[][[[[]][][]]]][]][[[][[[[]][[]][]]][[][][]]]]]]]][][][]]][][][]][]]][][]][[[[[][[[]][[[[][[[[[]][[]][][[]][]][[][[]]]]][]][[[[[[[[]][]][[[[[[]]]]]]]][][][]]][][][[[]][[[]][[[[][[]][[]][]][]]]][[][][][[[]][]][]]][[]][]][[]][][[[[]][][[]]][]][]][[[[[][[][]][[]]][[][]][[]]]][][]]]]][[]]]]][[[][][[][[[]]][[[][[[]]]][]]][[]][[][[][]]][[]]]][]]][]][[[][[[]]]]]][[]][][[][[[]]][]][[]]][[]][[[[]]][][[][[][]][]]][]][[]]][[[][][]][[[[]][[]][[][][[]]][]]]]][[[]][[[[]]][]]]]][[][]]][]][][][][[]][][[[]]][][][]]][][][[][[][[]][][]]][[[[]][][[][[]][][][]]][][[[[][]]]]]][[[][]]]][]][[[[[][[[][[[[]]][[[[]][]]]][]]]]][[[[]]]]][[[]][[[][[[[[[[[[[]]]]][]][]]][][][[]]][[[]][[][]][]]][[[[]][]][][]][][[][[]]]]]][][[[]][[[]]][]][]]][][][[][]]][]]]]][][][][[][]][][][[[[][][[]][[[[]][]]]]]][[][[][[][[][[[[[]]][[][[[]][[]][[[[[][[[[]]][[][][[][[]]]][[]][][]]]][]][[[][[[[[]]]][]]]]]]][][[][][[[]][[][[[[[[]]][[]]][[[[][][[[]]][[][[[[][[][[[]][][][[[[[][]][[[[[[][][]][[][[]][[[[[]][[][[][]]][[[[][][[][[]]]]][[[][[[]]][[]]]][[][]][[]]][[[[[][[]][][[[[][]][[]]]]]][]][[[]][[[][][]][][[[[[][]]]]][][[]]][[[][][[[]]][][][[[[[[][[]]][[][][]]][[[[[[[][[][[[][[][]]][]]][]][[]]][[[]][[[][[[][[[[][[]][[][[[[[]][[]]][][[]]]][][[][[[[[]][]][[]]]][[]]][]][]]]][[[][][[[][[[[[[[]][[[][]][][[[]][][[]][]]]]][]]][[[][[]][][][[[][][[]]]]]][]]]]]][]]]]]]][]]][[[][[][[[][]]]]][[[][]][][][]]][[[[]]][][[[]][[[[]][][]][]][[[][]][[[][][[[[][[[][][[[[[[]]][[[]]][]]][[][[[][][[][[]]]][][[]]]][[]][]][]][[[[][[[]]]][[][][]]]]]][]][[][]]]]][[[[[[[]][]][]]][[][[[[][[[[[[[][[[][[][]][]][][[]]][[]]][[]][[[][[[[][]]]]][]]]][][]][][]]]]]][[[[]][]][][[[[]][][[]][[[[[[]][]][[]]]]][[]][][[]][]][[]]][[[][[[][]][[[][[]][[][[[[[]]][]][]]]]][[]][[[[[][[][[[]][[[[[[[][]]]]]]]]]][]]][[[[]][[[[[[[]][]][]]]][][[]]][][[]][][[[[][[[[[][[]][]]]]][]][][][[[]]][]]]]][]][[[[[[]]][]]]]][[[]]]]]][][][[[[]][]][]][[[[[[][][][]][[][[[]][[]]][[[[]][[][]][]][[][[[[[]][[[][]][[]][[][[[[][[[][][][]][[][[[[[[][][]][[[[]][[[][]]][][][[[]][[[][[][]][[[]]]][[[]]][[[]][[[[][[[][[[[[][]]]][[]][][]][]][[[]]][][[[]]]]]]]]][][[[]][[[][][[]]]]]][[[]]]]][[[[[][[][[[[[[[]][[]]]]][]][][][[[]][]]][]]][][]][]][]][][[[[[]]]]][][[[[[][[][[]]]]]]][]]][]][[][[][][[[][]]]]]]][]]]][]]]][]]]][[[][][]][]][][[[[[[[[[[]][[[][]]][[][[]][][[[][][][[[]]]]][][]][[[[[]]]]][][[]][[[[[][[]][[[][[[][[][[[][[[[[[][][[[]]][]]][[][][][[][][]][]][][][[][[[][[[[[[]]][[][[]]]]]]][[[[[[[[]][][[]]][[[[][][[[]][]][][]][]]]][[][[[[[]]][[][[]]][[[][[][[][[][[][][][]]]]]]][]]][[[[[[[[[[[[]][]][][[][]][]]]]]][[[[]]]]][[[[]][[[[]][[][[]][[]][[]]]]][[[[[][[[]][][[]]][]]][]][]]]][[[][]][[[[][[][][[][]][[[]][][]][[][][[[][]][]]]][[[[[][][][[[][[[[][]]]]]]]]][[[]]]][]]][[][[[]][[[[[[]][]][[[]][][[[]][][[][[]][[]]][[][[[]][[]]]]][[[[[][[[][[[[][]]]][[][][][][][]]][[]]][]]][[][]]][]]]][][[]][][][[[[]][]][[[[[[[[][]]]]]]]][[[[[[]][][][[][]][[[]][[]]]][][]][[[][[[[[[[]]]][]][[][[[[]]][[[][]]][[[][[][][[]][[[]][[][[[]][[[][][[[[[][][[][[]]]]]][]]]]][][[]]][]][][[[[[[[][[]]]][]]]]]][][]][[]]]]][]]]][[]][][]]]]][[[[]][][[[[]][][[]]]]][[]]]][]][][]]]]]]]]]]]][[[[]][]]][]][]]][[][[[[[[[]]]]]][]]][[[[[]][[[[][][][][][[[[[[[[][][]][]][[]][[[[[[]][[]]][[][[[]][][][][[][[[]]]]]]]]]][[][]][]]]]]][[]][[]]][][[][[[[][[[][[][[[[[]][[[][[[[]][][]]][[[]][[[[]][[]][][][][]]]]][[[][[][[]]][[][]][][[[][]][[[]]]][][][[[]]]][]]][][[[[[][[[]][[[]]]]]]]]][[[[[[[[][]]][[]]]]]]]]][][[]]]]][[[[][[][[[][]]]]]]][[[]][][[][]]]]][[][[]]]][][[]][[]][[[]][[][][[]][]][]]][[[][[][[][]][]][[[]][][[[]]][[][][]]]]]][[[[][[[][[[]]]][][[]]][[][[[[[[[][[][]][[]][][[[]]][[][[]][[][[][[[[][[]][[[][][][[][[][][[[[]]]][]][[[]]]]]][][][[][][][[[][][[][[[]]]][[]][[[]]][[[][[[[]][[][[[]][[]]][[[]][[][][]][[[[[[[][[[][][]]]][[[][[]]][][][]]]]]][][[[]]]][[[]]][[][[[[]]]]][[[[[]]]][[][[[][][[][[[[][[[[[[[][[][]]][][]][][[]][][]]]][[[]]]]][][[[][]][]]][][]][][][]]][[]][[[[[][][]][]][[[[[]][[[]][[[[[[][[[]][[][][[[][[][[[]]][][][[[[][][[][[[[[[[[][][[[]][]]]]]][[][[][]][]]][[[[][[[]][[][]]][[]]]]][[][[[][]]]]][[[[[]][][]][[[[][][[]]]]]]][[][]]]]]][[]][]]][]][][[][[[[[[]][]]][[[][[[][[][][]]][[]]][]][][[[[[]]][]]][]]][[[]]][][]]]]][][][][[[[[[[[][][][][[][[[][][][[]][]]][][[[[[[[]]]]]][[[[[][]]][]][][]]]][]]][[]][[]][[[[[][]][[[[[]][[]]]][]][]]]][[]][]][[[][[][][[][[[[]][[]][[]]][]]][[[[[][[][[][]][][[]]][]]][][][[[[[]][[]][][][[]][[[[[]][][]][[]]][][]][[[][[]]]][]][][[][]]][]]][][[]]][][[[[[[[]]][][][][][][[[[][]][[][[][[][[]][[][[]][]][][[]]]][[]]][]][[[]]][][[[]][]]][]][[[][[][]]]][[[[][[][][][[][]]][][[]][][][][[][[]][]][[][][[[[]]]]][[]][[[[][]][[[][]]][]][]][[[[[[]]]]][]][[][]]][]]]][][[][[[][[[][[]][[][]]][[[[][[[]][[][]][]]][][][][[][][[[][][[]][]]]][][][[][][]]][][]]][]][[][]]]][][]][][][[]]]]][][[][[]][[]]][]][[]]][[]]]]]][]]]]][[][][]][[[[][[][][[][]]]][[[[[[[][[][[][[[][[[[][[]][][[]][][[[[[][]]]][]]]][]]][][[]][[[[[][]]][][]]][[[[][[]][[]][[][[][]]][[[[[[]]]]][[][][]][]][]]]][[]]][]][]][[][][[[[][][]][[]][]][[]]]]][[][[[[]][]][[]]]]]][]]][[[[[]]][[]]]][[[[]]]][]][][]]]]]]][]]]]][]]][[[[[][[[[[[][][[]][[[]]][][][]][][[][]]]][][[]]]]]][[][]]]]][][]]]]]][][][]]]][][[[[][[[]][[[[[[[[][][[][]]]][][]][[][][[[][[]]]]][[[[[[][]]]]][]][[][]][][[]]]]]][[]]][[][][[]]]][[]][[[][][[[[[][[[[[[[][]]][][[[][[]]]]]]][][[[][[]][]][]][[[][[][[[[]]][[[]]]][]]][]]][]][][[]][][[]]][][]]]]]]][][[[[[[[[][[][]][][[[][[][[]][[][][[][[]][[[[]][][]]]]][]]]][[[[]][]]]]]]]]][[]]][[][]][]]]][[][]]]][][]]]][]][][]]][[[][]]]]]][[[][][]][]][[[[[[[][[[]]]]]]][]]]]][]][]]]]][][[]][][[]]]][[][[]][][][][[][[[][[[][[]][][][]][]][]]][]]]][][]][[][[[][[[[[[]][[[]][][][]][][][]]]][][[]]]][][[[]]][[]][][[][[][[][]][][]][[]][][][]][][[]][][][[[[[[]]][[]]]]][[[]]][[][[][][][][[[][][[][[][[][[]]]][][[[[[[][[]][[]][]][[[[]][]]][[[][]]][[[]]][]][[[[[[[]][][[[][[[[[]][]]][[]][[[[]][][[[]]]][]][[][][[][][]][[[[]]]]]][[[]]]][]]][[[]]][[[[][]][[]][][[]]]]][[[[][][]]][][[]]][[]][[[[[]]]]]]]]]]][][[]]]]]]]]]]][]][]]]][][][[]][][[[][[[][][[]]]]][][]]][[]]][[[[][][[[][]][[][]]][]]]][]][][[][]]]]][][[]][][[][[][][[[]]][[][[[][][[[]]][[[[]][[[[[[[]]][[[][[]][][[]]]][[][[]]][[][[]]][[][]][][[][[]]][[[]][]][]]][[][[[[][]][[[[][[]][]]]][[[[][]][][[]][]][]]]][]]][]]]]]][]][[]][[][]]]][[][]]]][]]]]]]]]]][][][[][[[[[[[][]][[][][[[[]]][]][[]]]]]]]][[[[]][][]]][[][[][[[][[[][[]][[[]][][[]][][[][][[]]][[[]]]]][[[[]][][[[[][[][][[[]]][][[]]][][]]][[[[[[[][[]]][[]][[]]]][]][]]]][[]][[[][[][[[][][[]][][[][][]][[[[]][][[[][][][[[]][[[]][[[[][[[]][[][][[][[][[]]][[]][]]]]][[[[[]][][]][][[]][]]]]]]]][[[][][][[]]][]]]]]][]][][][[]]][]]][[[]]][]]]][[[][]]][][]][[[][[[[]][][[[]][[[[]][[[[]]]][[]]][][[[[[[[[[][[]]]][[[[[]][][][[[[][]][]][]][[[]][[][[[[[]]][[[[[[]][][][[[[[]]]][[]]][][]]][[[[]]][][[[]]][][[[[]]]]]][]]]]]]][[[[][][[[[]][[[][[[][[[[][]][[]][]][]]][[][[][[[][]]]][[[[[[][]]]][][]]][]][[][[][[]]]][]]][]][[]][]][]][[[[[[[]][][]]][[[]][]]][][][][[]]]]]]]]]][[]]]]][[[][]]][[[][[]]][[][[[[[]][]][]]]]][[][[][][]]][][][[[][]]][][][[[]]][]][[[[]][[[[][][[][][[[][][[]][]][[[][]][[]]][]]]]]]]]][[[[[][][]]][]]]]][[]]][][[[[]][]]]][[]]][[][]][][[[]]][[][][]][[[]]]]][][][][][][[]][][[][[][][]]][[][[[]][[[][[][[[[[[[[]]]]]]]]][][[]][[[]]][[]]][]]][][[[[[][][]][][]]][]][]][][]]][[[][][[[[[[]]]]]]]]]][][[]][]]][][]][]]]][][[[]]][][][]]][][]]][]]]][]]][][[[[[[[]][[[[][][]]][][]]][][]][[[[]]]]]]][[[][[[[[[]]]][[[[][[]]]][[[[[]]][][][[[[[][]]]]][[[]][[][")
}

var total = 0
for i in TEMP_STORAGE {
    total += i
    total %= Int.random(in: 1..<100)
}
print("just to trick compiler: \(total)")