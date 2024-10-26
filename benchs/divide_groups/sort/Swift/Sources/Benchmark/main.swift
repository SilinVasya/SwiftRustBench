// Sort borders

import Foundation
import Dispatch
import CommonAPI
import Collections

class Solution {
    
    func minGroups(_ intervals: [[Int]]) -> Int {
        var starts = [Int]()
        starts.reserveCapacity(intervals.count)

        var ends = [Int]()
        ends.reserveCapacity(intervals.count)

        for interval in intervals {
            starts.append(interval[0])
            ends.append(interval[1])
        }

        starts.sort()
        ends.sort()

        var counter = 0
        var endI = 0
        for start in starts {
            if start > ends[endI] {
                endI += 1
            } else {
                counter += 1
            }
        }

        return counter
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

let sample = readSample()

measure(
    name: "Divide Intervals Into Minimum Number of Groups: https://leetcode.com/problems/divide-intervals-into-minimum-number-of-groups/description/?envType=daily-question&envId=2024-10-12",
    subname: "Sort borders",
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
