import Foundation
import CommonAPI

class Solution {
    func countSquares(_ matrix: [[Int]]) -> Int {
        guard !matrix.isEmpty else {
            return 0
        }

        var counters = [[Int]](repeating: [Int](repeating: 0,
                                                count: matrix[0].count),
                                count: matrix.count)

        var totalCount = matrix[0][0]
        counters[0][0] += totalCount

        for (index, row) in matrix[0].enumerated().dropFirst() {
            counters[0][index] += row
            totalCount += row
        }

        for column in 1..<matrix.count {
            counters[column][0] += matrix[column][0]
            totalCount += matrix[column][0]
        }

        for (columnI, row) in matrix.enumerated().dropFirst() {
            for (rowI, num) in row.enumerated().dropFirst() {
                guard num == 1 else {
                    continue
                }

                counters[columnI][rowI] = 1 + min(counters[columnI - 1][rowI],
                                                    counters[columnI][rowI - 1],
                                                    counters[columnI - 1][rowI - 1])
                totalCount += counters[columnI][rowI]
            }
        }

        return totalCount
    }
}

@main
class MyApp {
    static func main() {
        let MEASURE_COUNT = MEDIUM_MEASURE_COUNT
        var TEMP_STORAGE = [Int]()

        struct Sample: Decodable {
            let matrix: [[Int]]
            let totalCount: Int
        }

        func readSample(number: Int) -> Sample {
            let sampleURL = Bundle.module.url(forResource: "sample\(number)", withExtension: "txt")!
            let jsonData = try! Data(contentsOf: sampleURL)

            return try! JSONDecoder().decode(Sample.self, from: jsonData)
        }

        let samples = (1...4).map { sampleNumber in
            readSample(number: sampleNumber)
        }

        for (index, sample) in samples.enumerated() {
            let result = Solution().countSquares(sample.matrix)
            if result != sample.totalCount {
                fatalError(
                    "Wrong Solution result for sample '\(index + 1)'. Got '\(result)', but expected '\(sample.totalCount)'."
                )
            }
        }

        TEMP_STORAGE.reserveCapacity(samples.count * MEASURE_COUNT)

        let matrixes = samples.map { sample in
            sample.matrix
        }

        measure(
            name: "Count Square Submatrices with All Ones: https://leetcode.com/problems/count-square-submatrices-with-all-ones/description/?envType=daily-question&envId=2024-10-27",
            subname: "Dynamic programming",
            measuresCount: MEASURE_COUNT
        ) {
            let solution = Solution()

            for matrix in matrixes {
                TEMP_STORAGE.append(solution.countSquares(matrix))
            }
        }

        var total = 0
        for i in TEMP_STORAGE {
            total += i
            total %= Int.random(in: 1..<100)
        }
        print("just to trick compiler: \(total)")
    }
}
