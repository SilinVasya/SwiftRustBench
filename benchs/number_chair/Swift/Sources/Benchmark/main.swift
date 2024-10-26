// https://leetcode.com/problems/maximum-width-ramp/description/?envType=daily-question&envId=2024-10-10
import Foundation
import Dispatch
import CommonAPI
import Collections

// Solution 1: Swift collections Heap
class Solution {

    private struct Time {

        let arrival: Int

        let leaving: Int

        let friend: Int

    }

    private struct LeavingTime: Comparable {

        static func < (lhs: Self, rhs: Self) -> Bool {
            lhs.leaving < rhs.leaving
        }

        static func <= (lhs: Self, rhs: Self) -> Bool {
            lhs.leaving <= rhs.leaving
        }

        static func >= (lhs: Self, rhs: Self) -> Bool {
            lhs.leaving >= rhs.leaving
        }

        static func > (lhs: Self, rhs: Self) -> Bool {
            lhs.leaving > rhs.leaving
        }

        let leaving: Int

        let sit: Int

    }

    func smallestChair(_ times: [[Int]], _ targetFriend: Int) -> Int {
        let sortedTimes = times
            .enumerated()
            .map { Time(arrival: $0.1[0], leaving: $0.1[1], friend: $0.0) }
            .sorted { $0.arrival < $1.arrival }

        var availableSits = Heap<Int>()
        var leavingTimes = Heap<LeavingTime>()

        var timesIterator = sortedTimes.makeIterator()
        var nextTime = timesIterator.next()
        var lastSit = -1

        while nextTime != nil {
            let nextLeaving: Int
            if !leavingTimes.isEmpty {
                nextLeaving = leavingTimes.min!.leaving
            } else {
                nextLeaving = Int.max
            }

            if nextLeaving <= nextTime!.arrival {
                availableSits.insert(leavingTimes.popMin()!.sit)
            } else {
                let sit: Int
                if !availableSits.isEmpty {
                    sit = availableSits.popMin()!
                } else {
                    lastSit += 1
                    sit = lastSit
                }

                if nextTime!.friend == targetFriend {
                    return sit
                }

                leavingTimes.insert(LeavingTime(leaving: nextTime!.leaving, sit: sit))

                nextTime = timesIterator.next()
            }
        }

        return -1
    }
}

// Solution 2: Custom Heap
// class Solution {

//     private struct Time {

//         let arrival: Int

//         let leaving: Int

//         let friend: Int

//     }

//     private struct LeavingTime: Comparable {

//         static func < (lhs: Self, rhs: Self) -> Bool {
//             lhs.leaving < rhs.leaving
//         }

//         static func <= (lhs: Self, rhs: Self) -> Bool {
//             lhs.leaving <= rhs.leaving
//         }

//         static func >= (lhs: Self, rhs: Self) -> Bool {
//             lhs.leaving >= rhs.leaving
//         }

//         static func > (lhs: Self, rhs: Self) -> Bool {
//             lhs.leaving > rhs.leaving
//         }

//         let leaving: Int

//         let sit: Int

//     }

//     private final class Heap<TObject: Comparable> {

//         var count: Int {
//             self.array.count
//         }

//         var isEmpty: Bool {
//             self.array.isEmpty
//         }

//         private let minHeap: Bool

//         private var array = [TObject]()

//         var heapString: String {
//             "\(self.array)"
//         }

//         init(minHeap: Bool) {
//             self.minHeap = minHeap
//         }

//         func add(_ anInt: TObject) {
//             self.array.append(anInt)
//             self.balance(index: self.array.count - 1)
//         }

//         func peek() -> TObject? {
//             self.array.first
//         }

//         @discardableResult
//         func pop() -> TObject? {
//             guard self.array.count > 1 else {
//                 return !self.array.isEmpty ? self.array.removeLast() : nil
//             }

//             let anInt = self.array[0]
//             self.array[0] = self.array.removeLast()
//             self.heapify()

//             return anInt
//         }

//         private func balance(index: Int) {
//             var i = index
//             var parent = (i - 1) / 2

//             while i > 0 && self.compare(i: i, j: parent) {
//                 self.array.swapAt(i, parent)

//                 i = parent
//                 parent = (i - 1) / 2
//             }
//         }

//         private func heapify() {
//             var i = 0

//             while true {
//                 var greatestIndex = i

//                 let leftIndex = i * 2 + 1
//                 if leftIndex < self.array.count && self.compare(i: leftIndex, j: i) {
//                     greatestIndex = leftIndex
//                 }

//                 let rightIndex = i * 2 + 2
//                 if rightIndex < self.array.count && self.compare(i: rightIndex, j: greatestIndex) {
//                     greatestIndex = rightIndex
//                 }

//                 guard greatestIndex != i else {
//                     break
//                 }

//                 self.array.swapAt(i, greatestIndex)
//                 i = greatestIndex
//             }
//         }

//         private func compare(i: Int, j: Int) -> Bool {
//             self.minHeap ? self.array[i] < self.array[j] : self.array[i] > self.array[j]
//         }
//     }

//     func smallestChair(_ times: [[Int]], _ targetFriend: Int) -> Int {
//         let sortedTimes = times
//             .enumerated()
//             .map { Time(arrival: $0.1[0], leaving: $0.1[1], friend: $0.0) }
//             .sorted { $0.arrival < $1.arrival }

//         let availableSits = Heap<Int>(minHeap: true)
//         let leavingTimes = Heap<LeavingTime>(minHeap: true)

//         var timesIterator = sortedTimes.makeIterator()
//         var nextTime = timesIterator.next()
//         var lastSit = -1

//         while nextTime != nil {
//             let nextLeaving: Int
//             if !leavingTimes.isEmpty {
//                 nextLeaving = leavingTimes.peek()!.leaving
//             } else {
//                 nextLeaving = Int.max
//             }

//             if nextLeaving <= nextTime!.arrival {
//                 availableSits.add(leavingTimes.pop()!.sit)
//             } else {
//                 let sit: Int
//                 if !availableSits.isEmpty {
//                     sit = availableSits.pop()!
//                 } else {
//                     lastSit += 1
//                     sit = lastSit
//                 }

//                 if nextTime!.friend == targetFriend {
//                     return sit
//                 }

//                 leavingTimes.add(LeavingTime(leaving: nextTime!.leaving, sit: sit))

//                 nextTime = timesIterator.next()
//             }
//         }

//         return -1
//     }
// }

var TEMP_STORAGE = Array<Int>()
TEMP_STORAGE.reserveCapacity(3 * MEDIUM_MEASURE_COUNT)

struct Sample: Decodable {

    let times: [[Int]]

    let targetFriend: Int

}

func readSample(number: Int) -> Sample {
    let sampleURL = Bundle.module.url(forResource: "sample\(number)", withExtension: "txt")!
    let jsonData = try! Data(contentsOf: sampleURL)

    return try! JSONDecoder().decode(Sample.self, from: jsonData)
}

let samples = [
    readSample(number: 1),
    readSample(number: 2),
    readSample(number: 3)
]

measure(
    name: "The Number of the Smallest Unoccupied Chair: https://leetcode.com/problems/the-number-of-the-smallest-unoccupied-chair/description/?envType=daily-question&envId=2024-10-11",
    measuresCount: MEDIUM_MEASURE_COUNT
    ) {
    let solution = Solution()

    for sample in samples {
        let result = solution.smallestChair(sample.times, sample.targetFriend)
        TEMP_STORAGE.append(result)
    }
}

var total = 0
for i in TEMP_STORAGE {
    total += i
    total %= Int.random(in: 1..<100)
}
print("just to trick compiler: \(total)")
