
//Source: ChatGPT

package Languages.Java;

public class BubbleSort {

    private static final int[] VALUES = { 10650,56341,77676,47158,34999,22009,19680,41870,31090,30668 };
    private static final boolean LOGGING = false;

    public static void bubbleSort(int[] arr) {
        int n = arr.length;
        for (int i = 0; i < n - 1; i++) {
            for (int j = 0; j < n - i - 1; j++) {
                if (arr[j] > arr[j + 1]) {
                    // swap arr[j] and arr[j+1]
                    int temp = arr[j];
                    arr[j] = arr[j + 1];
                    arr[j + 1] = temp;
                }
            }
        }
    }

    public static void main(String[] args) {
        int[] arr = VALUES;
        bubbleSort(arr);
        if(LOGGING){
            System.out.println("Sorted array: ");
            for (int i = 0; i < arr.length; i++) {
                System.out.print(arr[i] + " ");
            }
            System.out.println();
        }
    }
}