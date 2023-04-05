// Source: ChatGPT

static mut LOGGING: bool = false;

fn main() {
    let mut arr = vec![59761,90739,82579,1135,58002,80436,60384,52321,60761,75965];
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