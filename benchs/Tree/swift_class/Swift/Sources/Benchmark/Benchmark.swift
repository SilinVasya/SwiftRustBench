import Foundation
import CommonAPI

final class Tree {

   let left: Tree?

   let right: Tree?

   var check: UInt32 {
       var depth: UInt32 = 1

       if let left {
           depth += left.check
       }

       if let right {
           depth += right.check
       }
       
       return depth
   }

   init(depth: UInt32) {
       if depth > 0 {
           left = Tree(depth: depth - 1)
           right = Tree(depth: depth - 1)
       } else {
           left = nil
           right = nil
       }
   }

}

let MEASURE_COUNT = MEDIUM_MEASURE_COUNT
var TEMP_STORAGE = Array<Int>()
TEMP_STORAGE.reserveCapacity(MEASURE_COUNT)

measure(
    name: "Binary tree",
    subname: "Swift class",
    measuresCount: MEASURE_COUNT) {
    let tree = Tree(depth: UInt32(15))
    TEMP_STORAGE.append(Int(tree.check))
}

var total = 0
for i in TEMP_STORAGE {
    total += i
    total %= Int.random(in: 1..<100)
}
print("just to trick compiler: \(total)")