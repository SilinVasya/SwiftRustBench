use std::vec::Vec;
use common_api::measure;
use common_api::DEFAULT_MEASURE_COUNT;

struct MyCircularDeque {
    vec: Vec<i32>,
    k: i32,
    head: i32,
    tail: i32,
}

/**
 * `&self` means the method takes an immutable reference.
 * If you need a mutable reference, change it to `&mut self` instead.
 */
impl MyCircularDeque {

    fn new(k: i32) -> Self {
        MyCircularDeque {
            vec: vec![0; k as usize],
            k: k,
            head: -1,
            tail: -1,
        }
    }

    fn insert_front(&mut self, value: i32) -> bool {
        if self.is_empty() {
            self.head = 0;
            self.tail = 0;
            self.vec[self.head as usize] = value;

            return true;
        }

        if self.is_full() {
            return false;
        }

        self.head = self.next_index(self.head);
        self.vec[self.head as usize] = value;

        return true;
    }

    fn insert_last(&mut self, value: i32) -> bool {
        if self.is_empty() {
            self.head = 0;
            self.tail = 0;
            self.vec[self.head as usize] = value;

            return true;
        }

        if self.is_full() {
            return false;
        }

        self.tail = self.previous_index(self.tail);
        self.vec[self.tail as usize] = value;

        return true;
    }

    fn delete_front(&mut self) -> bool {
        if self.is_empty() {
            return false;
        }

        if self.tail == self.head {
            self.tail = -1;
            self.head = -1;
        } else {
            self.head = self.previous_index(self.head);
        }

        true
    }

    fn delete_last(&mut self) -> bool {
        if self.is_empty() {
            return false;
        }

        if self.tail == self.head {
            self.tail = -1;
            self.head = -1;
        } else {
            self.tail = self.next_index(self.tail);
        }

        true
    }

    fn get_front(&self) -> i32 {
        if self.is_empty() {
            return -1;
        }

        self.vec[self.head as usize]
    }

    fn get_rear(&self) -> i32 {
        if self.is_empty() {
            return -1;
        }

        self.vec[self.tail as usize]
    }

    fn is_empty(&self) -> bool {
        self.head == -1
    }

    fn is_full(&self) -> bool {
        !self.is_empty() && self.next_index(self.head) == self.tail
    }

    fn next_index(&self, index: i32) -> i32 {
        (index + 1) % self.k
    }

    fn previous_index(&self, index: i32) -> i32 {
        (index - 1 + self.k) % self.k
    }
}

fn main() {
    measure(
        "Circular Deque",
        None,
        DEFAULT_MEASURE_COUNT,
        || {
            let mut queue = MyCircularDeque::new(100);

            for i in 0..1_000_000 {
                if i % 2 == 0 || i % 13 == 0 {
                    _ = queue.insert_front(i);
                } else if i % 3 == 0 || i % 19 == 0 {
                    _ = queue.insert_last(i);
                } else if i % 5 == 0 || i % 23 == 0 {
                    _ = queue.delete_front();
                } else if i % 7 == 0 || i % 29 == 0 {
                    _ = queue.delete_last();
                } else if i % 11 == 0 || i % 31 == 0 {
                    _ = queue.get_front();
                } else if i % 13 == 0 || i % 37 == 0 {
                    _ = queue.get_rear();
                } else if i % 17 == 0 || i % 41 == 0 {
                    _ = queue.is_empty();
                } else {
                    _ = queue.is_full();
                }
            }
        }
    );
}