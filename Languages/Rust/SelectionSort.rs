static mut LOGGING: bool = false;

fn main() {
    let mut arr = vec![62326,7533,9766,30570,17106,60621,20260,31761,61667,15929];
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
