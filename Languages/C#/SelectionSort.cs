// Source: ChatGPT

using System;

class SelectionSort
{
    public static bool LOGGING = false;

    static void Main(string[] args)
    {
        int[] arr = {44411,84470,23178,48948,15058,16444,37478,32140,605,67448};
        int n = arr.Length;
        SelectionSortMethod(arr, n);
        if (LOGGING)
        {
            Console.WriteLine("Sorted array:");
            PrintArray(arr);
        }
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