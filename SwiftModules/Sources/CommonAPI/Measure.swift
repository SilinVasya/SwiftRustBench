import Foundation

public let DEFAULT_MEASURE_COUNT = 1_000;
public let MEDIUM_MEASURE_COUNT = 100_000;
public let LARGE_MEASURE_COUNT = 1_000_000;

public func measure(name: String,
                    subname: String = "default",
                    measuresCount: Int = 1_000,
                    algo: () -> Void) {
    var durations = Array<Int64>()
    durations.reserveCapacity(measuresCount)
    
    let forStart = vksaCurrentTimeMicroseconds()

    for _ in 0..<measuresCount {
        let start = vksaCurrentTimeMicroseconds()
        algo()
        let end = vksaCurrentTimeMicroseconds()
        durations.append(end - start)
    }

    let forEnd = vksaCurrentTimeMicroseconds()

    durations = durations.sorted()

    print("=========================")
    print(name)

    var results: [String: Any] = [
        "name": name,
        "subname": subname,
        "measures_count": measuresCount
    ]

    let totalTime = Double(forEnd - forStart) / 1_000_000
    let totalTimeStr = toString(double: totalTime)
    print("Total time \(totalTimeStr)")
    results["total_time"] = totalTimeStr

    let totalMeasuresTime = Double(durations.reduce(into: 0) { $0 += $1 }) / 1_000_000
    let diffStr = toString(double: totalTime - totalMeasuresTime)
    print("Diff: \(diffStr)")
    results["diff"] = diffStr

    let maxStr = toString(double: Double((durations.max { $0 < $1 })!) / 1_000_000)
    print("Max: \(maxStr)")
    results["max"] = maxStr

    let minStr = toString(double: Double((durations.min { $0 < $1 })!) / 1_000_000)
    print("Min: \(minStr)")
    results["min"] = minStr

    let average = Double(durations.reduce(into: 0, { $0 += $1 })) / Double(durations.count)
    let averageStr = toString(double: average / 1_000_000)
    print("Avg: \(averageStr)")
    results["average"] = averageStr

    let medianStr = toString(double: Double(durations[durations.count / 2]) / 1_000_000)
    print("Median: \(medianStr)")
    results["median"] = medianStr

    let stdout = FileHandle.standardOutput
    let resultJSON = String(data: try! JSONSerialization.data(withJSONObject: results), encoding: .utf8)!
    let resultMessage = "<<<RESULTS:\(resultJSON)>>>"
    stdout.write(Data(resultMessage.utf8))

    print("")
}

private func toString(double: Double) -> String {
    String(format: "%.6f", double)
}