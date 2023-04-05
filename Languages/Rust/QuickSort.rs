// Source: ChatGPT

static mut LOGGING: bool = false;

fn main() {
    let arr = vec![5, 2, 6, 8, 1];
    quick_sort(&mut arr.clone(), 0, (arr.len() - 1) as i32);
    if unsafe { LOGGING } {
        println!("Sorted array: {:?}", arr); //Logging=True
    } 
}

fn quick_sort(arr: &mut [i32], lo: i32, hi: i32) {
    if lo < hi {
        let p = partition(arr, lo, hi);
        quick_sort(arr, lo, p - 1);
        quick_sort(arr, p + 1, hi);
    }
}

fn partition(arr: &mut [i32], lo: i32, hi: i32) -> i32 {
    let pivot = arr[lo as usize];
    let mut i = lo - 1;
    let mut j = hi + 1;
    loop {
        i += 1;
        while arr[i as usize] < pivot {
            i += 1;
        }
        j -= 1;
        while arr[j as usize] > pivot {
            j -= 1;
        }
        if i >= j {
            return j;
        }
        arr.swap(i as usize, j as usize);
    }
}
