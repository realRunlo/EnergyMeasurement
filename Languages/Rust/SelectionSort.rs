// Source: ChatGPT

static mut LOGGING: bool = false;

fn main() {
    let mut arr = vec![59761,90739,82579,1135,58002,80436,60384,52321,60761,75965];
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
