import CommonAPI
import Foundation

class Solution {
    func countSquares(_ matrix: [[Int]]) -> Int {
        guard !matrix.isEmpty else {
            return 0
        }

        var counters = [[Int]](
            repeating: [Int](repeating: 0, count: matrix[0].count),
            count: matrix.count)
        for (rowI, row) in matrix.enumerated() {
            if matrix[rowI][0] == 1 {
                counters[rowI][0] = 1
            }

            for (columnI, cell) in row.enumerated().dropFirst() {
                if cell == 1 {
                    counters[rowI][columnI] = counters[rowI][columnI - 1] + 1
                } else {
                    counters[rowI][columnI] = 0
                }
            }
        }

        var totalCount = 0
        let rowLength = counters.count
        let columnLength = counters[0].count
        for i in 0..<rowLength {
            for j in 0..<columnLength {
                guard counters[i][j] > 0 else {
                    continue
                }

                totalCount += 1
                var k = 1
                outerLoop: while true {
                    defer {
                        k += 1
                    }

                    let candidateI = i + k
                    let candidateJ = j + k
                    guard candidateI < rowLength && candidateJ < columnLength else {
                        break
                    }

                    let minLength = k + 1
                    for checkI in i...candidateI {
                        if counters[checkI][candidateJ] < minLength {
                            continue outerLoop
                        }
                    }

                    totalCount += 1
                }
            }
        }

        return totalCount
    }
}

@main
class MyApp {
    static func main() {
        let MEASURE_COUNT = DEFAULT_MEASURE_COUNT
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
                    "Wrong Solution result for sample '\(index + 1)'. Got '\(result)', but expected \(sample.totalCount)"
                )
            }
        }

        TEMP_STORAGE.reserveCapacity(samples.count * MEASURE_COUNT)

        let matrixes = samples.map { sample in
            sample.matrix
        }

        measure(
            name: "Count Square Submatrices with All Ones: https://leetcode.com/problems/count-square-submatrices-with-all-ones/description/?envType=daily-question&envId=2024-10-27",
            subname: "Sum rows",
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
