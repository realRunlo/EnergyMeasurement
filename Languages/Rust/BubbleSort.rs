// Source: ChatGPT

static mut LOGGING: bool = false;

fn main() {
    let mut arr = vec![10650,56341,77676,47158,34999,22009,19680,41870,31090,30668];
    bubble_sort(&mut arr);
    if unsafe { LOGGING } {
        println!("Sorted array: {:?}", arr); //Logging=True
    } 
    
}

fn bubble_sort(arr: &mut [i32]) {
    let n = arr.len();
    for i in 0..n {
        for j in 0..n-i-1 {
            if arr[j] > arr[j+1] {
                arr.swap(j, j+1);
            }
        }
    }
}