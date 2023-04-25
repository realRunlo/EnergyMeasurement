// Source: ChatGPT

static mut LOGGING: bool = false;

fn main() {
    let mut arr = vec![10650,56341,77676,47158,34999,22009,19680,41870,31090,30668];
    selection_sort(&mut arr);
    if unsafe { LOGGING } {
        println!("Sorted array: {:?}", arr); //Logging=True
    } 
    
}


fn selection_sort(arr: &mut [i32]) {
    let n = arr.len();
    for i in 0..n {
        let mut min_idx = i;
        for j in i+1..n {
            if arr[j] < arr[min_idx] {
                min_idx = j;
            }
        }
        arr.swap(i, min_idx);
    }
}
