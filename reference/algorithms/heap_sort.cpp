#include <iostream>
#include <limits.h>

using namespace std;

void heap_sort(int array[], int last);
void max_heapify(int array[], int last);
int left_of(int position);
int right_of(int position);

int main()
{
    int sz;
    cin >> sz;

    int array[sz];
    for (int i = 0; i < sz; i++)
        cin >> array[i];

    cout << "before: ";
    for (int i = 0; i < sz; i++)
        cout << array[i] << ' ';
    cout << endl;

    heap_sort(array, sz - 1);

    cout << "after: ";
    for (int i = 0; i < sz; i++)
        cout << array[i] << ' ';
    cout << endl;

    return 0;
}

void heap_sort(int array[], int last)
{
    if (last > 0)
    {
        max_heapify(array, last);
        swap(array[0], array[last]);
        heap_sort(array, last - 1);
    }
}

void max_heapify(int array[], int last)
{
    for (int i = 0; i < last; i++)
    {
        int left = left_of(i);
        int right = right_of(i);

        int bigger = i;
        if (left <= last && array[left] > array[bigger])
            bigger = left;
        if (right <= last && array[right] > array[bigger])
            bigger = right;

        if (bigger != i)
            swap(array[bigger], array[i]);
    }
}

int left_of(int position)
{
    return (2 * position) + 1;
}

int right_of(int position)
{
    return (2 * position) + 2;
}
