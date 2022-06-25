#include <iostream>
#include <cmath>

using namespace std;

int calc_depth_limit(int sz);
void intro_sort(int arr[], int start, int end, int depth_limit);
void insertion_sort(int arr[], int end);
void heap_sort(int arr[], int end);
void max_heapify(int arr[], int end);
int left_of(int key);
int right_of(int key);
int partition(int arr[], int start, int end);

int main()
{
    int arr[] = { 2,  10, 24, 2,  10, 11, 27, 4,  2,  4,
                  28, 16, 9,  8,  28, 10, 13, 24, 22, 28,
                  0,  13, 27, 13, 3,  23, 18, 22, 8,  8 };
    int arr_sz = sizeof(arr) / sizeof(arr[0]);

    intro_sort(arr, 0, arr_sz - 1, calc_depth_limit(arr_sz));

    for (int i = 0; i < arr_sz; i++)
        cout << arr[i] << ' ';
    cout << endl;

    return 0;
}

int calc_depth_limit(int sz)
{
    return 2 * floor(log(sz));
}

void intro_sort(int arr[], int start, int end, int depth_limit)
{
    if (depth_limit <= 16)
    {
        insertion_sort(arr, end);
    }
    else if (depth_limit == 0)
    {
        heap_sort(arr, end);
    }
    else
    {
        int pivot = partition(arr, start, end);
        intro_sort(arr, start, pivot - 1, depth_limit - 1);
        intro_sort(arr, pivot + 1, end, depth_limit - 1);
    }
}

void insertion_sort(int arr[], int end)
{
    for (int i = 0; i < end; i++)
    {
        if (arr[i] > arr[i + 1])
        {
            swap(arr[i], arr[i + 1]);
            for (int j = i; j != 0 && arr[j] < arr[j - 1]; j--)
                swap(arr[j], arr[j - 1]);
        }
    }
}

void heap_sort(int arr[], int end)
{
    if (end > 0)
    {
        max_heapify(arr, end);
        swap(arr[0], arr[end]);
        heap_sort(arr, end - 1);
    }
}

void max_heapify(int arr[], int end)
{
    int biggest, l, r;
    for (int i = 0; i <= end; i++)
    {
        biggest = i;
        l = left_of(i);
        r = right_of(i);
        if (l <= end && arr[l] > arr[i])
            biggest = l;
        if (r <= end && arr[r] > arr[biggest])
            biggest = r;

        if (biggest != i)
            swap(arr[i], arr[biggest]);
    }
}

int left_of(int key)
{
    return (2 * key) + 1;
}

int right_of(int key)
{
    return (2 * key) + 2;
}

int partition(int arr[], int start, int end)
{
    int random_pivot = start + rand() % (end - start);
    swap(arr[start], arr[random_pivot]);
    int swap_index = start;

    for (int i = start + 1; i <= end; i++)
    {
        if (arr[i] < arr[start])
        {
            swap_index++;
            swap(arr[i], arr[swap_index]);
        }
    }

    swap(arr[start], arr[swap_index]);
    return swap_index;
}
