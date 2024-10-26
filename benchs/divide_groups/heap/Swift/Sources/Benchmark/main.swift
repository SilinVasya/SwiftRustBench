// Heap solution

import Foundation
import Dispatch
import CommonAPI
import Collections

class Solution {

    private struct Interval: Comparable {

        static func < (lhs: Self, rhs: Self) -> Bool {
            if lhs.left == rhs.left {
                return lhs.right < rhs.right
            }

            return lhs.left < rhs.left
        }

        static func <= (lhs: Self, rhs: Self) -> Bool {
            if lhs.left == rhs.left {
                return lhs.right <= rhs.right
            }

            return lhs.left <= rhs.left
        }

        static func >= (lhs: Self, rhs: Self) -> Bool {
            if lhs.left == rhs.left {
                return lhs.right >= rhs.right
            }

            return lhs.left >= rhs.left
        }

        static func > (lhs: Self, rhs: Self) -> Bool {
            if lhs.left == rhs.left {
                return lhs.right > rhs.right
            }

            return lhs.left > rhs.left
        }

        let left: Int

        let right: Int
    }

    func minGroups(_ intervals: [[Int]]) -> Int {
        var endTimes = Heap<Int>()
        let intervals = intervals
        .map { arr in
            Interval(left: arr[0], right: arr[1])
        }
        .sorted()

        for interval in intervals {
            if !endTimes.isEmpty && endTimes.min! < interval.left {
                _ = endTimes.popMin()
            }
            endTimes.insert(interval.right);
        }
        
        return endTimes.count
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
    subname: "Heap solution",
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
