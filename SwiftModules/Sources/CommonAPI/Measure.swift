private import Foundation

public let DEFAULT_MEASURE_COUNT = 1_000;
public let LARGE_MEASURE_COUNT = 1_000_000;

public func measure(name: String, measuresCount: Int = 1_000, algo: () -> Void) {
    var durations = Array<Int64>()
    durations.reserveCapacity(measuresCount)
    
    let forStart = vksaCurrentTimeMicroseconds()

    for _ in 0..<measuresCount {
        let start = vksaCurrentTimeMicroseconds()
        algo()
        let end = vksaCurrentTimeMicroseconds()
        durations.append(end - start)
    }

    durations = durations.sorted()

    print("=========================")
    print("\(name)")

    let totalTime = Double(vksaCurrentTimeMicroseconds() - forStart) / 1_000_000
    print("Total time \(totalTime)")

    let totalMeasuresTime = Double(durations.reduce(into: 0) { $0 += $1 }) / 1_000_000
    print("Diff: \(totalTime - totalMeasuresTime)")

    print("Max: \(Double((durations.max { $0 < $1 })!) / 1_000_000)")
    print("Min: \(Double((durations.min { $0 < $1 })!) / 1_000_000)")
    let average = Double(durations.reduce(into: 0, { $0 += $1 })) / Double(durations.count)
    print("Avg: \(average / 1_000_000)")
    print("Median: \(Double(durations[durations.count / 2]) / 1_000_000)")
}
