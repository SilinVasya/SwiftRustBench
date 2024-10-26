use common_api::measure;
use common_api::MEDIUM_MEASURE_COUNT;
use rand::prelude::*;

type Full<T> = static_rc::StaticRc<T, 2, 2>;
// type Half<T> = static_rc::StaticRc<T, 1, 2>;

struct TreeNode {
    l: Option<Full<Self>>,
    r: Option<Full<Self>>,
}

impl TreeNode {
    fn check(&self) -> i32 {
        let mut ret = 1;
        if let Some(l) = &self.l {
            ret += l.check();
        }
        if let Some(r) = &self.r {
            ret += r.check();
        }
        ret
    }

    fn create<'r>(depth: i32) -> Full<Self> {
        Full::new(Self::_create_inner(depth))
    }

    fn _create_inner<'r>(depth: i32) -> Self {
        if depth > 0 {
            // let (l, _) = Full::split::<1, 1>(Full::new(Self::_create_inner(depth - 1)));
            // let (_, r) = Full::split::<1, 1>(Full::new(Self::_create_inner(depth - 1)));
            let l = Full::new(Self::_create_inner(depth - 1));
            let r = Full::new(Self::_create_inner(depth - 1));
            Self {
                l: Some(l),
                r: Some(r),
            }
        } else {
            Self { l: None, r: None }
        }
    }
}

static MEASURE_COUNT: i32 = MEDIUM_MEASURE_COUNT;
static mut TEMP_STORAGE: Vec<i32> = Vec::new();

fn main() {
    unsafe {
        TEMP_STORAGE.reserve(MEASURE_COUNT as usize);
    }

    measure(
        "Binary tree",
        Some("Swift class with protocol"),
        MEASURE_COUNT,
        || {
            let tree = TreeNode::create(10);
            let result = tree.check();

            unsafe {
                TEMP_STORAGE.push(result);
            }
        });
    
    let mut rng = rand::thread_rng();
    let mut total = 0;
    unsafe {
        for i in TEMP_STORAGE.iter() {
            total += i;
            let random = (rng.gen::<f64>() * 100.0) as i32;
            if random > 0 {
                total %= random;
            }
        }
    }
    println!("just to trick compiler: : {:?}", total);
}