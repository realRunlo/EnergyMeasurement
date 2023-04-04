// Source: ChatGPT

using System;

class SelectionSort
{
    static void Main(string[] args)
    {
        int[] arr = { 64, 34, 25, 12, 22, 11, 90 };
        int n = arr.Length;
        SelectionSortMethod(arr, n);
        Console.WriteLine("Sorted array:");
        PrintArray(arr);
    }

    static void SelectionSortMethod(int[] arr, int n)
    {
        for (int i = 0; i < n - 1; i++)
        {
            int min_idx = i;
            for (int j = i + 1; j < n; j++)
                if (arr[j] < arr[min_idx])
                    min_idx = j;
            int temp = arr[min_idx];
            arr[min_idx] = arr[i];
            arr[i] = temp;
        }
    }

    static void PrintArray(int[] arr)
    {
        int n = arr.Length;
        for (int i = 0; i < n; ++i)
            Console.Write(arr[i] + " ");
        Console.WriteLine();
    }
}
