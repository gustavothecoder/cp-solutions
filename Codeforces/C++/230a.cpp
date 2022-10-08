#include <iostream>

using namespace std;

void quick_sort(int arr[][2], int s, int e);
int partition(int arr[][2], int s, int e);

int main()
{
    int s, n;
    cin >> s >> n;
    int d[n][2];

    for (int i = 0; i < n; i++)
        cin >> d[i][0] >> d[i][1];

    quick_sort(d, 0, n - 1);

    int x, y, v = 1;
    for (int i = 0; i < n; i++)
    {
        x = d[i][0], y = d[i][1];
        if (s > x)
        {
            s += y;
        }
        else
        {
            v = 0;
            break;
        }
    }

    cout << (v ? "YES" : "NO") << endl;

    return 0;
}

void quick_sort(int arr[][2], int s, int e)
{
    if (s < e)
    {
        int p = partition(arr, s, e);
        quick_sort(arr, s, p - 1);
        quick_sort(arr, p + 1, e);
    }
}

int partition(int arr[][2], int s, int e)
{
    int rp = s + rand() % (e - s);
    swap(arr[s], arr[rp]);
    int si = s;

    for (int i = s + 1; i <= e; i++)
    {
        if (arr[i][0] < arr[s][0])
        {
            si++;
            swap(arr[i], arr[si]);
        }
    }

    swap(arr[s], arr[si]);
    return si;
}
