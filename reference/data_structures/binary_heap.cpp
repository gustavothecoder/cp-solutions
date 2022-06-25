#include <iostream>
#include <limits.h>

using namespace std;

class BinaryHeap
{
private:
    int max_size;
    int *heap_array;
    int current_size;

    int parent(int key) { return (key - 1) / 2; }
    int left(int key) { return (2 * key) + 1; }
    int left_is_smaller(int key);
    int right(int key) { return (2 * key) + 2; }
    int right_is_smaller(int key);
    void bottom_heapify();
    void top_heapify(int key);

public:
    BinaryHeap(int max_size);
    void insert(int key);
    void destroy(int key);
    void print();
    int get_mini() { return heap_array[0]; }
    void extract_mini();
    void decrease_key(int key, int n);
};

BinaryHeap::BinaryHeap(int max_size)
{
    max_size = max_size;
    heap_array = new int[max_size];
    current_size = 0;
}

int BinaryHeap::left_is_smaller(int key)
{
    return (left(key) < current_size && heap_array[left(key)] < heap_array[key]) ? 1 : 0;
}

int BinaryHeap::right_is_smaller(int key)
{
    return (right(key) < current_size && heap_array[right(key)] < heap_array[key]) ? 1 : 0;
}

void BinaryHeap::bottom_heapify()
{
    int i = current_size - 1;
    while (i != 0 && heap_array[parent(i)] > heap_array[i])
    {
        swap(heap_array[parent(i)], heap_array[i]);
        i = parent(i);
    }
}

void BinaryHeap::top_heapify(int key) {
    int l = left(key);
    int r = right(key);
    if (l >= current_size) return;

    int smallest_children = l;
    if (r < current_size && heap_array[r] < heap_array[smallest_children])
        smallest_children = r;

    if (heap_array[smallest_children] < heap_array[key])
    {
        swap(heap_array[key], heap_array[smallest_children]);
        top_heapify(smallest_children);
    }
}

void BinaryHeap::insert(int number)
{
    heap_array[current_size] = number;
    current_size++;

    bottom_heapify();
}

void BinaryHeap::print()
{
    for (int i = 0; i < current_size; i++)
        cout << heap_array[i] << ' ';
    cout << endl;
}

void BinaryHeap::extract_mini() {
    heap_array[0] = heap_array[current_size - 1];
    heap_array[current_size - 1] = heap_array[current_size];
    current_size--;

    top_heapify(0);
}

void BinaryHeap::decrease_key(int key, int n) {
    heap_array[key] -= n;

    if (heap_array[parent(key)] > heap_array[key])
        top_heapify(parent(key));
}

void BinaryHeap::destroy(int key) {
    decrease_key(key, (INT_MIN + heap_array[key]));

    extract_mini();
}

int main()
{
    BinaryHeap bh(10);
    bh.insert(3);
    bh.insert(2);
    bh.insert(15);
    bh.insert(5);
    bh.insert(4);
    bh.insert(45);

    cout << "Heap array: ";
    bh.print();

    cout << "Root element: " << bh.get_mini() << endl;

    bh.extract_mini();
    cout << "Heap array after mini extraction: ";
    bh.print();
    cout << "New root element: " << bh.get_mini() << endl;

    bh.decrease_key(2, 14);
    cout << "Heap array after decrease_key: ";
    bh.print();

    bh.destroy(2);
    cout << "Heap array after delete: ";
    bh.print();

    return 0;
}
