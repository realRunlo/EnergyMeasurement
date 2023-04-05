static mut LOGGING: bool = false;

fn main() {
    let mut arr = vec![62326,7533,9766,30570,17106,60621,20260,31761,61667,15929];
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