import Foundation
import CommonAPI

protocol PTree {

    var left: PTree? { get }

    var right: PTree? { get }

    var check: UInt32 { get }

    func releaseRefs()

}

final class Tree: PTree {

   let left: PTree?

   let right: PTree?

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

   func releaseRefs() {}

}

func createTree(depth: UInt32) -> PTree {
    Tree(depth: depth)
}

let MEASURE_COUNT = MEDIUM_MEASURE_COUNT
var TEMP_STORAGE = Array<Int>()
TEMP_STORAGE.reserveCapacity(MEASURE_COUNT)

measure(
    name: "Binary tree",
    subname: "Swift class with protocol",
    measuresCount: MEASURE_COUNT) {
    let tree = createTree(depth: UInt32(15))
    TEMP_STORAGE.append(Int(tree.check))
    tree.releaseRefs()
}

var total = 0
for i in TEMP_STORAGE {
    total += i
    total %= Int.random(in: 1..<100)
}
print("just to trick compiler: \(total)")