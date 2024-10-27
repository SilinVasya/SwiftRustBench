import Foundation
import Dispatch
import CommonAPI

// Non copyable pointer

struct MyCircularDeque {//: ~Copyable {

    private struct MyCircularDequeData {

        private var head = -1

        private var tail = -1

        private var array: UnsafeMutableBufferPointer<Int>

        private let k: Int

        init(_ k: Int) {
            self.array = UnsafeMutableBufferPointer.allocate(capacity: k)
            self.array.initialize(repeating: 0)

            self.k = k
        }

        mutating func insertFront(_ value: Int) -> Bool {
            guard !self.isEmpty() else {
                self.head = 0
                self.tail = 0
                self.array[self.head] = value

                return true
            }

            let nextIndex = self.next(index: self.head)
            guard nextIndex != self.tail else {
                return false
            }

            self.array[nextIndex] = value
            self.head = nextIndex

            return true
        }

        mutating func insertLast(_ value: Int) -> Bool {
            guard !self.isEmpty() else {
                self.head = 0
                self.tail = 0
                self.array[self.tail] = value

                return true
            }

            let previousIndex = self.previous(index: self.tail)
            guard previousIndex != self.head else {
                return false
            }

            self.array[previousIndex] = value
            self.tail = previousIndex

            return true
        }

        mutating func deleteFront() -> Bool {
            guard !self.isEmpty() else {
                return false
            }

            if self.head == self.tail {
                self.head = -1
                self.tail = -1
            } else {
                self.head = self.previous(index: self.head)
            }

            return true
        }

        mutating func deleteLast() -> Bool {
            guard !self.isEmpty() else {
                return false
            }

            if self.head == self.tail {
                self.head = -1
                self.tail = -1
            } else {
                self.tail = self.next(index: self.tail)
            }

            return true
        }

        func getFront() -> Int {
            return self.get(at: self.head)
        }

        func getRear() -> Int {
            return self.get(at: self.tail)
        }

        func isEmpty() -> Bool {
            self.head == -1
        }

        func isFull() -> Bool {
            !self.isEmpty() && self.next(index: self.head) == self.tail
        }

        mutating func free() {
            self.array.deinitialize()
            self.array.deallocate()
        }

        private func next(index: Int) -> Int {
            (index + 1) % self.k
        }

        private func previous(index: Int) -> Int {
            (index - 1 + self.k) % self.k
        }

        private func get(at index: Int) -> Int {
            guard !self.isEmpty() else {
                return -1
            }

            return self.array[index]
        }
    }

    private let pointer: UnsafeMutablePointer<MyCircularDequeData>

    init(_ k: Int) {
        self.pointer = UnsafeMutablePointer.allocate(capacity: 1)
        self.pointer.initialize(to: MyCircularDequeData(k))
    }

    func free() {
        self.pointer.pointee.free()

        self.pointer.deinitialize(count: 1)
        self.pointer.deallocate()
    }

    func insertFront(_ value: Int) -> Bool {
        self.pointer.pointee.insertFront(value)
    }

    func insertLast(_ value: Int) -> Bool {
        self.pointer.pointee.insertLast(value)
    }

    func deleteFront() -> Bool {
        self.pointer.pointee.deleteFront()
    }

    func deleteLast() -> Bool {
        self.pointer.pointee.deleteLast()
    }

    func getFront() -> Int {
        self.pointer.pointee.getFront()
    }

    func getRear() -> Int {
        self.pointer.pointee.getRear()
    }

    func isEmpty() -> Bool {
        self.pointer.pointee.isEmpty()
    }

    func isFull() -> Bool {
        self.pointer.pointee.isFull()
    }
}

// Non copyable pointer

// Class

// class MyCircularDeque {

//     private var head = -1

//     private var tail = -1

//     //private var array: UnsafeMutableBufferPointer<Int>

//     private var array: [Int]

//     private let k: Int

//     init(_ k: Int) {
//         //self.array = UnsafeMutableBufferPointer.allocate(capacity: k)
//         //self.array.initialize(repeating: 0)
//         self.array = Array(repeating: 0, count: k)

//         self.k = k
//     }

//     deinit {
//         //self.array.deinitialize()
//         //self.array.deallocate()
//     }

//     func insertFront(_ value: Int) -> Bool {
//         guard !self.isEmpty() else {
//             self.head = 0
//             self.tail = 0
//             self.array[self.head] = value

//             return true
//         }

//         let nextIndex = self.next(index: self.head)
//         guard nextIndex != self.tail else {
//             return false
//         }

//         self.array[nextIndex] = value
//         self.head = nextIndex

//         return true
//     }

//     func insertLast(_ value: Int) -> Bool {
//         guard !self.isEmpty() else {
//             self.head = 0
//             self.tail = 0
//             self.array[self.tail] = value

//             return true
//         }

//         let previousIndex = self.previous(index: self.tail)
//         guard previousIndex != self.head else {
//             return false
//         }

//         self.array[previousIndex] = value
//         self.tail = previousIndex

//         return true
//     }

//     func deleteFront() -> Bool {
//         guard !self.isEmpty() else {
//             return false
//         }

//         if self.head == self.tail {
//             self.head = -1
//             self.tail = -1
//         } else {
//             self.head = self.previous(index: self.head)
//         }

//         return true
//     }

//     func deleteLast() -> Bool {
//         guard !self.isEmpty() else {
//             return false
//         }

//         if self.head == self.tail {
//             self.head = -1
//             self.tail = -1
//         } else {
//             self.tail = self.next(index: self.tail)
//         }

//         return true
//     }

//     func getFront() -> Int {
//         return self.get(at: self.head)
//     }

//     func getRear() -> Int {
//         return self.get(at: self.tail)
//     }

//     func isEmpty() -> Bool {
//         self.head == -1
//     }

//     func isFull() -> Bool {
//         !self.isEmpty() && self.next(index: self.head) == self.tail
//     }

//     private func next(index: Int) -> Int {
//         (index + 1) % self.k
//     }

//     private func previous(index: Int) -> Int {
//         (index - 1 + self.k) % self.k
//     }

//     private func get(at index: Int) -> Int {
//         guard !self.isEmpty() else {
//             return -1
//         }

//         return self.array[index]
//     }
// }

// Class

measure(name: "Circular Deque") {
    let queue = MyCircularDeque(100)

    for i in 0..<1_000_000 {
        if i % 2 == 0 || i % 13 == 0 {
            _ = queue.insertFront(i);
        } else if i % 3 == 0 || i % 19 == 0 {
            _ = queue.insertLast(i);
        } else if i % 5 == 0 || i % 23 == 0 {
            _ = queue.deleteFront();
        } else if i % 7 == 0 || i % 29 == 0 {
            _ = queue.deleteLast();
        } else if i % 11 == 0 || i % 31 == 0 {
            _ = queue.getFront();
        } else if i % 13 == 0 || i % 37 == 0 {
            _ = queue.getRear();
        } else if i % 17 == 0 || i % 41 == 0 {
            _ = queue.isEmpty();
        } else {
            _ = queue.isFull();
        }
    }

    queue.free()
}