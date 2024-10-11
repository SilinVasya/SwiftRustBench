// https://leetcode.com/problems/maximum-width-ramp/description/?envType=daily-question&envId=2024-10-10
import Foundation
import Dispatch
import CommonAPI

class Solution {

    func maxWidthRamp(_ nums: [Int]) -> Int {
        var decreasingStack: [Int] = [0]
        decreasingStack.reserveCapacity(nums.count)

        for i in 1..<nums.count {
            if nums[i] < nums[decreasingStack.last!] {
                decreasingStack.append(i)
            }
        }

        var stackTailI = decreasingStack.count - 1
        var maxLength = 0

        // for i in 0..<count where stackTailI == -1 {...} | is >=1.5 time slower than if stackTailI == -1 { break }
        for numsTailI in stride(from: nums.count - 1, through: 0, by: -1) {
            while stackTailI > -1 && nums[decreasingStack[stackTailI]] <= nums[numsTailI] {
                maxLength = max(maxLength, numsTailI - decreasingStack[stackTailI])
                stackTailI -= 1
            }

            if stackTailI == -1 {
                break
            }
        }

        return maxLength
    }

    // for (numsTailI, nextNum) in nums.enumerated().reversed() where stackTailI > -1 {
    //     while stackTailI > -1 && nums[decreasingStack[stackTailI]] <= nextNum {
    //         maxLength = max(maxLength, numsTailI - decreasingStack[stackTailI])
    //         stackTailI -= 1
    //     }
    // }

    /*private struct NumPair {
        var maxLength: Int
        var stackTailI: Int
    }

    func maxWidthRamp(_ nums: [Int]) -> Int {
        var decreasingStack: [Int] = [0]

        for i in 1..<nums.count {
            if nums[i] < nums[decreasingStack.last!] {
                decreasingStack.append(i)
            }
        }

        var stackTailI = decreasingStack.count - 1
        let pair = NumPair(maxLength: 0, stackTailI: stackTailI)
        return nums.enumerated().reversed().reduce(into: pair) { pair, indexNum in
            while pair.stackTailI > -1 && nums[decreasingStack[pair.stackTailI]] <= indexNum.1 {
                pair.maxLength = max(pair.maxLength, indexNum.0 - decreasingStack[pair.stackTailI])
                pair.stackTailI -= 1
            }
        }.maxLength
    }*/

    /*
    private struct Num {
        var leftI: Int
        var rightI: Int
        var num: Int
    }

    func maxWidthRamp(_ nums: [Int]) -> Int {
        var indexedNums = [Int: Num]()
        for (index, num) in nums.enumerated() {
            if indexedNums[num] == nil {
                indexedNums[num] = Num(leftI: index, rightI: index, num: num)
            } else {
                indexedNums[num]!.rightI = index
            }
        }

        let sortedNums = indexedNums.values.sorted { $0.num < $1.num }
        var maxLength = 0
        for (index, num) in sortedNums.enumerated() {
            maxLength = max(maxLength, num.rightI - num.leftI)

            for i in 0..<index {
                maxLength = max(num.rightI - sortedNums[i].leftI, maxLength)
            }
        }

        return maxLength
    }
    */
}

var TEMP_STORAGE = Array<Int>()
// TEMP_STORAGE.reserveCapacity(LARGE_MEASURE_COUNT)

let sampleURL = Bundle.module.url(forResource: "sample", withExtension: "txt")!
let numsString = try! String(contentsOf: sampleURL, encoding: .utf8)
let nums = numsString.components(separatedBy: ",").map { Int($0)! }

measure(
    name: "Maximum Width Ramp: https://leetcode.com/problems/maximum-width-ramp/description/?envType=daily-question&envId=2024-10-10",
    measuresCount: LARGE_MEASURE_COUNT
    ) {
    let solution = Solution()
    let result1 = solution.maxWidthRamp(nums)
    TEMP_STORAGE.append(result1)
}

var total = 0
for i in TEMP_STORAGE {
    total += i
    total %= Int.random(in: 1..<100)
}
print("just to trick compiler: \(total)")
