
//Source: ChatGPT

package Languages.Java;

public class SelectionSort {

    private static final int[] VALUES = { 10650,56341,77676,47158,34999,22009,19680,41870,31090,30668 };
    private static final boolean LOGGING = false;

    public static void selectionSort(int[] arr) {
        for (int i = 0; i < arr.length - 1; i++) {
            int index = i;
            for (int j = i + 1; j < arr.length; j++) {
                if (arr[j] < arr[index]) {
                    index = j;// searching for lowest index
                }
            }
            int smallerNumber = arr[index];
            arr[index] = arr[i];
            arr[i] = smallerNumber;
        }
    }


    
    public static void main(String[] args) {
        int[] arr = VALUES;

        selectionSort(arr);// sorting array using selection sort

        if(LOGGING){
            System.out.println("Sorted array:");
            for (int i : arr) {
                System.out.print(i + " ");
            }
            System.out.println();
        }
    }
}