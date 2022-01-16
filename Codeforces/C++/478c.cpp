#include <iostream>

using namespace std;

void simpleSort(unsigned long long *arr);

int main()
{
    unsigned long long ballons[3], comb;
    cin >> ballons[0] >> ballons[1] >> ballons[2];
    simpleSort(ballons);
    if (ballons[0] >= 2 * (ballons[1] + ballons[2]))
        comb = ballons[1] + ballons[2];
    else
        comb = (ballons[0] + ballons[1] + ballons[2]) / 3;
    cout << comb << endl;
}

void simpleSort(unsigned long long *arr)
{
    int temp;
    while (!(arr[0] >= arr[1] && arr[1] >= arr[2]))
    {
        if (arr[0] < arr[1])
        {
            temp = arr[0];
            arr[0] = arr[1];
            arr[1] = temp;
        }
        else if (arr[1] < arr[2])
        {
            temp = arr[1];
            arr[1] = arr[2];
            arr[2] = temp;
        }
    }
}
