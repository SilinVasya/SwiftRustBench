import Foundation
import WindowsBridge

private let exponent = Int64(1.0E+6)

public func vksaCurrentTimeMicroseconds() -> Int64 {
    var time = timeval(tv_sec: 0, tv_usec: 0)
    gettimeofday(&time, nil)
    
    return exponent * Int64(time.tv_sec)
    + Int64(time.tv_usec)
}