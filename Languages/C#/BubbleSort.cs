// Source: ChatGPT

using System;

class BubbleSort
{
    public static bool LOGGING = false;
    
    static void Main(string[] args)
    {
        int[] arr = {44411,84470,23178,48948,15058,16444,37478,32140,605,67448};
        int n = arr.Length;
        BubbleSortMethod(arr, n);
        if (LOGGING)
        {
            Console.WriteLine("Sorted array:");
            PrintArray(arr);
        }

    }

    static void BubbleSortMethod(int[] arr, int n)
    {
        for (int i = 0; i < n - 1; i++)
        {
            for (int j = 0; j < n - i - 1; j++)
            {
                if (arr[j] > arr[j + 1])
                {
                    int temp = arr[j];
                    arr[j] = arr[j + 1];
                    arr[j + 1] = temp;
                }
            }
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
