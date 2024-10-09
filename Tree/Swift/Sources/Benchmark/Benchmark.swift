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
            left.deinitialize(count: 1)
            left.deallocate()
        }

        if let right {
            right.pointee.releaseRefs()

            right.deinitialize(count: 1)
            right.deallocate()
        }
    }

    init(depth: UInt32) {
        if depth > 0 {
            let leftP = UnsafeMutablePointer<Tree>.allocate(capacity: 1)
            leftP.initialize(to: Tree(depth: depth - 1))

            // left = leftP
            // right = leftP

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

// final class Tree {

//    let left: Tree?

//    let right: Tree?

//    var check: UInt32 {
//        var depth: UInt32 = 1

//        if let left {
//            depth += left.check
//        }

//        if let right {
//            depth += right.check
//        }
       
//        return depth
//    }

//    init(depth: UInt32) {
//        if depth > 0 {
//            left = Tree(depth: depth - 1)
//            right = Tree(depth: depth - 1)
//        } else {
//            left = nil
//            right = nil
//        }
//    }

// }

measure(name: "Binary tree") {
    let minDepth = UInt32(4)
    let maxDepth = CommandLine.argc > 1 ? max(UInt32(CommandLine.arguments[1]) ?? 0, minDepth + 2) : 10
    let stretchDepth = maxDepth + 1
    let tempTree = Tree(depth: stretchDepth)
    tempTree.releaseRefs()

    let longLivingTree = Tree(depth: maxDepth)

    for halfDepth in (minDepth / 2)..<(maxDepth / 2 + 1) {
        let depth = halfDepth * 2
        let iterations = UInt32(1 << (maxDepth - depth + minDepth))
        var chk: UInt32 = 0
        for _ in 1...iterations {
            let tree = Tree(depth: depth)
            chk += tree.check
             tree.releaseRefs()
        }
    }

    longLivingTree.releaseRefs()
}
