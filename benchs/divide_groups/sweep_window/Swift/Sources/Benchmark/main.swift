// Sweep window

import Foundation
import Dispatch
import CommonAPI
import Collections

class Solution {

    func minGroups(_ intervals: [[Int]]) -> Int {
        var arr = Array(repeating: 0, count: 1_000_002)
        for interval in intervals {
            arr[interval[0]] += 1
            arr[interval[1] + 1] -= 1
        }

        var sum = 0
        var maxSum = 0
        for a in arr {
            sum += a
            maxSum = max(maxSum, sum)
        }

        return maxSum
    }
}

let MEASURE_COUNT = DEFAULT_MEASURE_COUNT
var TEMP_STORAGE = Array<Int>()
TEMP_STORAGE.reserveCapacity(MEASURE_COUNT)

struct Sample: Decodable {

    let intervals: [[Int]]

}

func readSample() -> Sample {
    let sampleURL = Bundle.module.url(forResource: "sample", withExtension: "txt")!
    let jsonData = try! Data(contentsOf: sampleURL)

    return try! JSONDecoder().decode(Sample.self, from: jsonData)
}

let sample: Sample = readSample()

measure(
    name: "Divide Intervals Into Minimum Number of Groups: https://leetcode.com/problems/divide-intervals-into-minimum-number-of-groups/description/?envType=daily-question&envId=2024-10-12",
    subname: "Sweep window",
    measuresCount: MEASURE_COUNT
    ) {
    let solution = Solution()

    let result = solution.minGroups(sample.intervals)
    TEMP_STORAGE.append(result)
}

var total = 0
for i in TEMP_STORAGE {
    total += i
    total %= Int.random(in: 1..<100)
}
print("just to trick compiler: \(total)")
