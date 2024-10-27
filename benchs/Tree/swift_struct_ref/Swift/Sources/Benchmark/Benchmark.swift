import Foundation
import CommonAPI

struct Tree {

    let left: UnsafeMutablePointer<Tree>?

    let right: UnsafeMutablePointer<Tree>?

    var check: UInt32 {
        var depth: UInt32 = 1

        if let left {
            depth += left.pointee.check
        }

        if let right {
            depth += right.pointee.check
        }

        return depth
    }

    func releaseRefs() {
        if let left {
            left.pointee.releaseRefs()
            // left.deinitialize(count: 1)
            left.deallocate()
        }

        if let right {
            right.pointee.releaseRefs()

            // right.deinitialize(count: 1)
            right.deallocate()
        }
    }

    init(depth: UInt32) {
        if depth > 0 {
            let leftP = UnsafeMutablePointer<Tree>.allocate(capacity: 1)
            leftP.initialize(to: Tree(depth: depth - 1))

            let rightP = UnsafeMutablePointer<Tree>.allocate(capacity: 1)
            rightP.initialize(to: Tree(depth: depth - 1))

            left = leftP
            right = rightP
        } else {
            left = nil
            right = nil
        }
    }

}

let MEASURE_COUNT = DEFAULT_MEASURE_COUNT
var TEMP_STORAGE = Array<Int>()
TEMP_STORAGE.reserveCapacity(MEASURE_COUNT)

measure(
    name: "Binary tree",
    subname: "Swift struct with reference",
    measuresCount: MEASURE_COUNT) {
    let tree = Tree(depth: UInt32(15))
    TEMP_STORAGE.append(Int(tree.check))
    tree.releaseRefs()
}

var total = 0
for i in TEMP_STORAGE {
    total += i
    total %= Int.random(in: 1..<100)
}
print("just to trick compiler: \(total)")